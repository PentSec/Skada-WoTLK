local Skada = Skada
Skada:RegisterModule("Parry-Haste", function(L, P)
	local mod = Skada:NewModule("Parry-Haste")
	local targetmod = mod:NewModule("Parry target list")
	local pairs, tostring, format, pformat = pairs, tostring, string.format, Skada.pformat

	local parrybosses = {
		[L["Acidmaw"]] = true,
		[L["Dreadscale"]] = true,
		[L["Icehowl"]] = true,
		[L["Onyxia"]] = true,
		[L["Lady Deathwhisper"]] = true,
		[L["Sindragosa"]] = true,
		[L["Halion"]] = true,
		-- UNCONFIRMED BOSSES
		-- Suggested by shoggoth#9796
		[L["General Vezax"]] = true,
		[L["Gluth"]] = true,
		[L["Kel'Thuzad"]] = true,
		[L["Sapphiron"]] = true,
	}

	local function format_valuetext(d, columns, total, metadata, subview)
		d.valuetext = Skada:FormatValueCols(
			columns.Count and d.value,
			columns[subview and "sPercent" or "Percent"] and Skada:FormatPercent(d.value, total)
		)

		if metadata and d.value > metadata.maxvalue then
			metadata.maxvalue = d.value
		end
	end

	local function log_parry(set, data)
		local player = Skada:GetPlayer(set, data.playerid, data.playername, data.playerflags)
		if not player then return end

		player.parry = (player.parry or 0) + 1
		set.parry = (set.parry or 0) + 1

		-- saving this to total set may become a memory hog deluxe.
		if (set == Skada.total and not P.totalidc) or not data.dstName then return end

		player.parrytargets = player.parrytargets or {}
		player.parrytargets[data.dstName] = (player.parrytargets[data.dstName] or 0) + 1

		if P.modules.parryannounce and set ~= Skada.total then
			Skada:SendChat(format(L["%s parried %s (%s)"], data.dstName, data.playername, player.parrytargets[data.dstName] or 1), P.modules.parrychannel, "preset")
		end
	end

	local data = {}

	local function spell_missed(ts, event, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, _, _, _, misstype)
		if parrybosses[dstName] and srcGUID ~= dstGUID and misstype == "PARRY" then
			srcGUID, srcName = Skada:FixMyPets(srcGUID, srcName, srcFlags)

			data.playerid = srcGUID
			data.playername = srcName
			data.playerflags = srcFlags
			data.dstName = dstName

			Skada:DispatchSets(log_parry, data)
		end
	end

	local function swing_missed(ts, event, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
		spell_missed(ts, event, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, nil, nil, nil, ...)
	end

	function targetmod:Enter(win, id, label)
		win.actorid, win.actorname = id, label
		win.title = format(L["%s's parry targets"], label)
	end

	function targetmod:Update(win, set)
		win.title = pformat(L["%s's parry targets"], win.actorname)
		if not set or not win.actorname then return end

		local actor, enemy = set:GetActor(win.actorname, win.actorid)
		local total = (actor and not enemy) and actor.parry or 0

		if total == 0 or not actor.parrytargets then
			return
		elseif win.metadata then
			win.metadata.maxvalue = 0
		end

		local nr = 0
		for targetname, count in pairs(actor.parrytargets) do
			nr = nr + 1
			local d = win:actor(nr, targetname)
			d.class = "BOSS" -- what else can it be?

			d.value = count
			format_valuetext(d, mod.metadata.columns, total, win.metadata, true)
		end
	end

	function mod:Update(win, set)
		win.title = win.class and format("%s (%s)", L["Parry-Haste"], L[win.class]) or L["Parry-Haste"]

		local total = set.parry or 0

		if total == 0 then
			return
		elseif win.metadata then
			win.metadata.maxvalue = 0
		end

		local nr = 0
		for i = 1, #set.players do
			local player = set.players[i]
			if player and player.parry and (not win.class or win.class == player.class) then
				nr = nr + 1
				local d = win:actor(nr, player)

				d.value = player.parry
				format_valuetext(d, self.metadata.columns, total, win.metadata)
			end
		end
	end

	function mod:OnEnable()
		self.metadata = {
			showspots = true,
			ordersort = true,
			click1 = targetmod,
			click4 = Skada.FilterClass,
			click4_label = L["Toggle Class Filter"],
			columns = {Count = true, Percent = false, sPercent = false},
			icon = [[Interface\Icons\ability_parry]]
		}

		-- no total click.
		targetmod.nototal = true

		Skada:RegisterForCL(spell_missed, "SPELL_MISSED", {src_is_interesting = true, dst_is_not_interesting = true})
		Skada:RegisterForCL(swing_missed, "SWING_MISSED", {src_is_interesting = true, dst_is_not_interesting = true})

		Skada:AddMode(self)
	end

	function mod:OnDisable()
		Skada:RemoveMode(self)
	end

	function mod:GetSetSummary(set)
		local parries = set.parry or 0
		return tostring(parries), parries
	end

	function mod:OnInitialize()
		if not P.modules.parrychannel then
			P.modules.parrychannel = "AUTO"
		end
		Skada.options.args.modules.args.Parry = {
			type = "group",
			name = self.localeName,
			desc = format(L["Options for %s."], self.localeName),
			args = {
				header = {
					type = "description",
					name = self.localeName,
					fontSize = "large",
					image = [[Interface\Icons\ability_parry]],
					imageWidth = 18,
					imageHeight = 18,
					imageCoords = {0.05, 0.95, 0.05, 0.95},
					width = "full",
					order = 0
				},
				sep = {
					type = "description",
					name = " ",
					width = "full",
					order = 1
				},
				parryannounce = {
					type = "toggle",
					name = format(L["Announce %s"], self.localeName),
					order = 10,
					width = "double"
				},
				parrychannel = {
					type = "select",
					name = L["Channel"],
					values = {AUTO = INSTANCE, SELF = L["Self"]},
					order = 20,
					width = "double"
				}
			}
		}
	end
end)
