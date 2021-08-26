assert(Skada, "Skada not found!")
Skada:AddLoadableModule("Resources", function(Skada, L)
	if Skada:IsDisabled("Resources") then return end

	local mod = Skada:NewModule(L["Resources"])

	local pairs, format, tContains = pairs, string.format, tContains
	local setmetatable, GetSpellInfo = setmetatable, Skada.GetSpellInfo or GetSpellInfo
	local _

	local locales = {[0] = MANA, [1] = RAGE, [3] = ENERGY, [6] = RUNIC_POWER}

	-- spells in the following table will be ignored.
	local ignoredSpells = {}

	local function log_gain(set, gain)
		if (gain.spellid and tContains(ignoredSpells, gain.spellid)) or gain.type == nil then
			return
		elseif gain.type == 2 or gain.type == 4 then
			gain.type = 3 -- Focus & Happiness treated as Energy
		end

		if locales[gain.type] then
			local player = Skada:get_player(set, gain.playerid, gain.playername, gain.playerflags)
			if player then
				player.power = player.power or {}
				player.power[gain.type] = player.power[gain.type] or {amount = 0}
				player.power[gain.type].amount = (player.power[gain.type].amount or 0) + gain.amount

				set.power = set.power or {}
				set.power[gain.type] = set.power[gain.type] or 0
				set.power[gain.type] = set.power[gain.type] + gain.amount

				if set == Skada.current then
					player.power[gain.type].spells = player.power[gain.type].spells or {}
					player.power[gain.type].spells[gain.spellid] = (player.power[gain.type].spells[gain.spellid] or 0) + gain.amount
				end
			end
		end
	end

	local gain = {}

	local function SpellEnergize(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
		local spellid, _, _, amount, powertype = ...

		gain.playerid = dstGUID
		gain.playername = dstName
		gain.playerflags = dstFlags

		gain.spellid = spellid
		gain.amount = amount
		gain.type = powertype

		Skada:FixPets(gain)
		log_gain(Skada.current, gain)
		log_gain(Skada.total, gain)
	end

	local function SpellLeech(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
		local spellid, _, _, amount, powertype, extraamount = ...

		gain.playerid = dstGUID
		gain.playername = dstName
		gain.playerflags = dstFlags

		gain.spellid = spellid
		gain.amount = amount
		gain.type = powertype

		Skada:FixPets(gain)
		log_gain(Skada.current, gain)
		log_gain(Skada.total, gain)
	end

	-- a base module used to create our power modules.
	local basemod = {}
	local basemod_mt = {__index = basemod}

	-- a base player module used to create power gained per player modules.
	local playermod = {}
	local playermod_mt = {__index = playermod}

	-- allows us to create a module for each power type.
	function basemod:Create(power, modname, playermodname)
		local instance = Skada:NewModule(modname)
		setmetatable(instance, basemod_mt)

		local pmode = instance:NewModule(playermodname)
		setmetatable(pmode, playermod_mt)

		pmode.power = power
		instance.power = power
		instance.metadata = {showspots = true, click1 = pmode, nototalclick = {pmode}}

		return instance
	end

	-- this is the main module update function that shows the list
	-- of players depending on the selected power gain type.
	function basemod:Update(win, set)
		win.title = self.moduleName or UNKNOWN
		local total = (set and set.power and self.power ~= nil) and set.power[self.power] or 0

		if total > 0 then
			local maxvalue, nr = 0, 1

			for _, player in Skada:IteratePlayers(set) do
				if player.power and player.power[self.power] then
					local d = win.dataset[nr] or {}
					win.dataset[nr] = d

					d.id = player.id
					d.label = player.name
					d.text = Skada:FormatName(player.name, player.id)
					d.class = player.class
					d.role = player.role
					d.spec = player.spec

					d.value = player.power[self.power].amount
					d.valuetext = Skada:FormatValueText(
						Skada:FormatNumber(d.value),
						mod.metadata.columns.Amount,
						format("%.1f%%", 100 * d.value / total),
						mod.metadata.columns.Percent
					)

					if d.value > maxvalue then
						maxvalue = d.value
					end
					nr = nr + 1
				end
			end

			win.metadata.maxvalue = maxvalue
		end
	end

	-- base function used to return sets summaries
	function basemod:GetSetSummary(set)
		if set and set.power and self.power ~= nil then
			local value = set.power[self.power] or 0
			local valuetext = (self.power == 0) and Skada:FormatNumber(value) or value
			return valuetext, value
		end
	end

	-- player mods common Enter function.
	function playermod:Enter(win, id, label)
		win.playerid, win.playername = id, label
		win.title = format(L["%s's gained %s"], label, locales[self.power])
	end

	-- player mods main update function
	function playermod:Update(win, set)
		win.title = format(L["%s's gained %s"], win.playername or UNKNOWN, self.power and locales[self.power] or UNKNOWN)
		local player = Skada:find_player(set, win.playerid)
		if player then
			local total = 0
			if self.power ~= nil and player.power and player.power[self.power] then
				total = player.power[self.power].amount or 0
			end

			if total > 0 and player.power[self.power].spells then
				local maxvalue, nr = 0, 1

				for spellid, amount in pairs(player.power[self.power].spells or {}) do
					local d = win.dataset[nr] or {}
					win.dataset[nr] = d

					d.id = spellid
					d.spellid = spellid
					d.label, _, d.icon = GetSpellInfo(spellid)

					d.value = amount
					d.valuetext = Skada:FormatValueText(
						Skada:FormatNumber(d.value),
						mod.metadata.columns.Amount,
						format("%.1f%%", 100 * d.value / total),
						mod.metadata.columns.Percent
					)

					if d.value > maxvalue then
						maxvalue = d.value
					end
					nr = nr + 1
				end

				win.metadata.maxvalue = maxvalue
			end
		end
	end

	-- we create the modules now
	local manamod = basemod:Create(0, L["Power gained: Mana"], L["Mana gained spell list"])
	local ragemod = basemod:Create(1, L["Power gained: Rage"], L["Rage gained spell list"])
	local energymod = basemod:Create(3, L["Power gained: Energy"], L["Energy gained spell list"])
	local runicmod = basemod:Create(6, L["Power gained: Runic Power"], L["Runic Power gained spell list"])

	function mod:OnEnable()
		self.metadata = {columns = {Amount = true, Percent = true}}
		Skada:AddColumnOptions(self)

		Skada:RegisterForCL(SpellEnergize, "SPELL_ENERGIZE", {src_is_interesting = true})
		Skada:RegisterForCL(SpellEnergize, "SPELL_PERIODIC_ENERGIZE", {src_is_interesting = true})
		Skada:RegisterForCL(SpellLeech, "SPELL_LEECH", {src_is_interesting = true})
		Skada:RegisterForCL(SpellLeech, "SPELL_PERIODIC_LEECH", {src_is_interesting = true})

		manamod.metadata.icon = "Interface\\Icons\\inv_elemental_primal_mana"
		ragemod.metadata.icon = "Interface\\Icons\\ability_racial_bloodrage"
		energymod.metadata.icon = "Interface\\Icons\\spell_holy_circleofrenewal"
		runicmod.metadata.icon = "Interface\\Icons\\inv_misc_rune_09"
		Skada:AddMode(manamod, L["Resources"])
		Skada:AddMode(ragemod, L["Resources"])
		Skada:AddMode(energymod, L["Resources"])
		Skada:AddMode(runicmod, L["Resources"])
	end

	function mod:OnDisable()
		Skada:RemoveMode(manamod)
		Skada:RemoveMode(ragemod)
		Skada:RemoveMode(energymod)
		Skada:RemoveMode(runicmod)
	end
end)