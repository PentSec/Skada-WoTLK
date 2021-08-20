assert(Skada, "Skada not found!")

local LibFail = LibStub("LibFail-1.0", true)
if not LibFail then return end

Skada:AddLoadableModule("Fails", function(Skada, L)
	if Skada:IsDisabled("Fails") then return end

	local mod = Skada:NewModule(L["Fails"])
	local playermod = mod:NewModule(L["Player's failed events"])
	local spellmod = mod:NewModule(L["Event's failed players"])

	local pairs, ipairs = pairs, ipairs
	local tostring, format = tostring, string.format
	local GetSpellInfo, UnitGUID = Skada.GetSpellInfo or GetSpellInfo, UnitGUID
	local failevents, tankevents = LibFail:GetSupportedEvents()
	local cacheTable, _

	local function log_fail(set, playerid, playername, spellid, event)
		if set then
			local player = Skada:find_player(set, playerid, playername)
			if player and (player.role ~= "TANK" or not tankevents[event]) then
				player.fail = (player.fail or 0) + 1
				set.fail = (set.fail or 0) + 1

				if set == Skada.current and spellid then
					player.fail_spells = player.fail_spells or {}
					player.fail_spells[spellid] = (player.fail_spells[spellid] or 0) + 1
				end
			end
		end
	end

	local function onFail(event, who, failtype)
		if event and who then
			local spellid = LibFail:GetEventSpellId(event)
			if spellid then
				local unitGUID = UnitGUID(who)
				if unitGUID then
					log_fail(Skada.current, unitGUID, who, spellid, event)
					log_fail(Skada.total, unitGUID, who, spellid, event)
				end
			end
		end
	end

	function spellmod:Enter(win, id, label)
		win.spellid, win.spellname = id, label
		win.title = format(L["%s's fails"], label)
	end

	function spellmod:Update(win, set)
		win.title = format(L["%s's fails"], win.spellname or UNKNOWN)
		if (set.fail or 0) > 0 then
			cacheTable = wipe(cacheTable or {})
			local total = 0

			for _, player in Skada:IteratePlayers(set) do
				if player.fail_spells and player.fail_spells[win.spellid] then
					cacheTable[player.name] = {
						id = player.id,
						class = player.class,
						role = player.role,
						spec = player.spec,
						count = player.fail_spells[win.spellid]
					}
					total = total + player.fail_spells[win.spellid]
				end
			end

			if total > 0 then
				local maxvalue, nr = 0, 1

				for playername, player in pairs(cacheTable) do
					local d = win.dataset[nr] or {}
					win.dataset[nr] = d

					d.id = player.id
					d.label = playername
					d.text = Skada:FormatName(playername, player.id)
					d.class = player.class
					d.role = player.role
					d.spec = player.spec

					d.value = player.count
					d.valuetext = Skada:FormatValueText(
						d.value,
						mod.metadata.columns.Count,
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

	function playermod:Enter(win, id, label)
		win.playerid, win.playername = id, label
		win.title = format(L["%s's fails"], label)
	end

	function playermod:Update(win, set)
		local player = Skada:find_player(set, win.playerid, win.playername)
		if player then
			win.title = format(L["%s's fails"], player.name)
			local total = player.fail or 0

			if total > 0 and player.fail_spells then
				local maxvalue, nr = 0, 1

				for spellid, count in pairs(player.fail_spells) do
					local d = win.dataset[nr] or {}
					win.dataset[nr] = d

					d.id = spellid
					d.spellid = spellid
					d.label, _, d.icon = GetSpellInfo(spellid)

					d.value = count
					d.valuetext = Skada:FormatValueText(
						count,
						mod.metadata.columns.Count,
						format("%.1f%%", 100 * count / total),
						mod.metadata.columns.Percent
					)

					if count > maxvalue then
						maxvalue = count
					end
					nr = nr + 1
				end

				win.metadata.maxvalue = maxvalue
			end
		end
	end

	function mod:Update(win, set)
		win.title = L["Fails"]
		local total = set.fail or 0

		if total > 0 then
			local maxvalue, nr = 0, 1

			for _, player in Skada:IteratePlayers(set) do
				if (player.fail or 0) > 0 then
					local d = win.dataset[nr] or {}
					win.dataset[nr] = d

					d.id = player.id
					d.label = player.name
					d.text = Skada:FormatName(player.name, player.id)
					d.class = player.class
					d.role = player.role
					d.spec = player.spec

					d.value = player.fail
					d.valuetext = Skada:FormatValueText(
						player.fail,
						self.metadata.columns.Count,
						format("%.1f%%", 100 * player.fail / total),
						self.metadata.columns.Percent
					)

					if d.value > player.fail then
						player.fail = d.value
					end
					nr = nr + 1
				end
			end
			win.metadata.maxvalue = maxvalue
		end
	end

	function mod:OnInitialize()
		tankevents = {}
		for _, event in ipairs(LibFail:GetFailsWhereTanksDoNotFail()) do
			tankevents[event] = true
		end
		for _, event in ipairs(failevents) do
			LibFail:RegisterCallback(event, onFail)
		end
	end

	function mod:OnEnable()
		if not tankevents then
			self:OnInitialize()
		end

		playermod.metadata = {click1 = spellmod}
		self.metadata = {
			click1 = playermod,
			nototalclick = {playermod},
			columns = {Count = true, Percent = false},
			icon = "Interface\\Icons\\ability_creature_cursed_01"
		}

		Skada:AddMode(self)
	end

	function mod:OnDisable()
		Skada:RemoveMode(self)
	end

	function mod:GetSetSummary(set)
		return tostring(set.fail or 0), set.fail or 0
	end

	function mod:AddToTooltip(set, tooltip)
		if set and (set.fail or 0) > 0 then
			tooltip:AddDoubleLine(L["Fails"], set.fail, 1, 1, 1)
		end
	end
end)