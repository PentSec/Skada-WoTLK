--[[ Translator: meatgaga#9470 ]] --
local _, Skada = ...
if Skada.locale ~= "zhCN" then return end
local L = Skada.L

L["A damage meter."] = "伤害统计器"
L["Memory usage is high. You may want to reset Skada, and enable one of the automatic reset options."] = "内存使用率很高。你可能需要重置Skada，并启用其中一个自动重置选项。"
L["Skada is out of date. You can download the newest version from |cffffbb00%s|r"] = "Skada已过期。你可以在|cffffbb00%s|r下载到最新的版本。"
L["Skada: Modes"] = "Skada：模式"
L["Skada: Fights"] = "Skada：战斗"
L["Error: No options selected"] = "错误：未选择任何选项"
L["Data Collection"] = "数据收集"
L["Profiles"] = "配置文件"
L["Enable"] = "启用"
L["ENABLED"] = "已启用"
L["Disable"] = "禁用"
L["DISABLED"] = "已禁用"
-- common lines
L["More Details"] = "更多细节"
L["More Details"] = "자세한 내용은"
L["Active Time"] = "活跃时间"
L["Segment Time"] = "分段时间"
L["Click for"] = "点击后为"
L["Shift-Click for"] = "Shift+点击后为"
L["Control-Click for"] = "Ctrl+点击后为"
L["Minimum"] = "最小"
L["Maximum"] = "最大"
L["Average"] = "平均"
L["Count"] = "计数"
L["Refresh"] = "刷新"
L["Percent"] = "百分比"
L["General Options"] = "常规选项"
L["HoT"] = " (治疗/跳)"
L["DoT"] = " (伤害/跳)"
L["Hits"] = "命中"
L["Normal Hits"] = "普通攻击"
L["Critical"] = "暴击"
L["Critical Hits"] = "暴击一击"
L["Crushing"] = "碾压"
L["Glancing"] = "穿刺"
L["ABSORB"] = "吸收"
L["BLOCK"] = "格挡"
L["DEFLECT"] = "偏斜"
L["DODGE"] = "躲闪"
L["EVADE"] = "闪避"
L["IMMUNE"] = "免疫"
L["MISS"] = "未命中"
L["PARRY"] = "招架"
L["REFLECT"] = "反射"
L["RESIST"] = "抵制"
-- windows section:
L["Window"] = "窗口"
L["Windows"] = "窗口"
L["Create Window"] = "创建窗口"
L["Enter the name for the new window."] = "输入新窗口的名字。"
L["Delete Window"] = "删除窗口"
L["Choose the window to be deleted."] = "选择要删除的窗口。"
L["Are you sure you want to delete this window?"] = "确定要删除此窗口？"
L["Rename Window"] = "重命名窗口"
L["Enter the name for the window."] = "输入窗口的名字。"
L["Child Window"] = "子窗口"
L["A child window will replicate the parent window actions."] = "子窗口将复制父窗口的动作。"
L["Lock Window"] = "锁定窗口"
L["Locks the bar window in place."] = "在当前位置锁定统计条窗口。"
L["Hide Window"] = "隐藏窗口"
L["Hides the window."] = "隐藏此窗口。"
L["Sticky Window"] = "粘窗"
L["Allows the window to stick to other Skada windows."] = "允许窗口捕捉到其他Skada窗口。"
L["Snap to best fit"] = "自动适应大小"
L["Snaps the window size to best fit when resizing."] = "在调整大小时自动根据最适合的大小依附窗口。"
L["Display System"] = "显示系统"
L["Choose the system to be used for displaying data in this window."] = "选择在窗口中显示数据的系统。"
L["Copy Settings"] = "复制设定"
L["Choose the window from which you want to copy the settings."] = "选择要从中复制设置的窗口。"
-- bars
L["Bars"] = "统计条"
L["Bar font"] = "统计条字体"
L["The font used by all bars."] = "全部统计条所使用的字体。"
L["Bar font size"] = "统计条字体大小"
L["The font size of all bars."] = "全部统计条的字体大小。"
L["Values font"] = "数值字体"
L["The font used by bar values."] = "统计条数值所使用的字体。"
L["Values font size"] = "数值字体大小"
L["The font size of bar values."] = "统计条数值的字体大小。"
L["Font flags"] = "字体风格"
L["Sets the font flags."] = "设定字体的风格。"
L["Outline"] = "轮廓"
L["Thick outline"] = "粗轮廓"
L["Monochrome"] = "单色"
L["Outlined monochrome"] = "轮廓单色"
L["Bar texture"] = "统计条材质"
L["The texture used by all bars."] = "全部统计条所使用的材质。"
L["Bar spacing"] = "统计条间距"
L["Distance between bars."] = "统计条之间的距离。"
L["Bar height"] = "统计条高度"
L["The height of the bars."] = "统计条的高度。"
L["Bar width"] = "统计条宽度"
L["The width of the bars."] = "统计条的宽度。"
L["Bar orientation"] = "统计条方向"
L["The direction the bars are drawn in."] = "统计条的绘制方向。"
L["Left to right"] = "从左到右"
L["Right to left"] = "从右到左"
L["Reverse bar growth"] = "反转增长方向"
L["Bars will grow up instead of down."] = "统计条向上增长。"
L["Disable bar highlight"] = "禁用计量条高亮"
L["Hovering a bar won't make it brighter."] = "鼠标悬浮在计量条上不会高亮显示。"
L["Bar color"] = "统计条颜色"
L["Choose the default color of the bars."] = "选择统计条的默认颜色。"
L["Background color"] = "背景颜色"
L["Choose the background color of the bars."] = "选择统计条的背景颜色。"
L["Spell school colors"] = "法术派系颜色"
L["Use spell school colors where applicable."] = "在适用处使用法术派系颜色。"
L["Class color bars"] = "职业颜色"
L["When possible, bars will be colored according to player class."] = "可用时，统计条按玩家职业着色。"
L["Class color text"] = "职业颜色文字"
L["When possible, bar text will be colored according to player class."] = "可用时，统计条文字按玩家职业着色。"
L["Class icons"] = "职业图标"
L["Use class icons where applicable."] = "在适用处使用职业图标。"
L["Spec icons"] = "天赋图标"
L["Use specialization icons where applicable."] = "在适用处使用天赋图标。"
L["Role icons"] = "职责图标"
L["Use role icons where applicable."] = "在适用处使用职责图标。"
L["Show spark effect"] = "显示光斑效果"
L["Clickthrough"] = "点击穿透"
L["Disables mouse clicks on bars."] = "在统计条上禁用鼠标点击。"
L["Smooth bars"] = "平滑化"
L["Animate bar changes smoothly rather than immediately."] = "以动画平滑显示统计条变化。"
-- title bar
L["Title Bar"] = "标题栏"
L["Enables the title bar."] = "启用标题栏。"
L["Include set"] = "包括集合"
L["Include set name in title bar"] = "在标题栏中包括集合名称。"
L["Encounter timer"] = "战斗计时器"
L["When enabled, a stopwatch is shown on the left side of the text."] = "启用后，在文字左侧显示一个秒表。"
L["Title height"] = "标题高度"
L["The height of the title frame."] = "标题框架的高度。"
L["Title font size"] = "标题字体大小"
L["The font size of the title bar."] = "标题栏的字体大小。"
L["Title color"] = "标题颜色"
L["The text color of the title."] = "标题文字的颜色。"
L["The texture used as the background of the title."] = "用于标题背景的材质。"
L["The background color of the title."] = "标题的背景颜色。"
L["Border texture"] = "边框材质"
L["The texture used for the borders."] = "用于边框的材质。"
L["The texture used for the border of the title."] = "用于标题边框的材质。"
L["Border color"] = "边框颜色"
L["The color used for the border."] = "边框所使用的颜色。"
L["Buttons"] = "按钮"
L["Show on MouseOver"] = "鼠标指向时显示"
-- general window
L["Background"] = "背景"
L["Background texture"] = "背景材质"
L["The texture used as the background."] = "用于背景的材质。"
L["Tile"] = "平铺"
L["Tile the background texture."] = "平铺背景材质。"
L["Tile size"] = "平铺尺寸"
L["The size of the texture pattern."] = "材质图案的尺寸。"
L["The color of the background."] = "背景的颜色。"
L["Border"] = "边框"
L["Border thickness"] = "边框粗细"
L["The thickness of the borders."] = "边框的粗细。"
L["General"] = "常规"
L["Scale"] = "缩放"
L["Sets the scale of the window."] = "设定窗口的缩放比例。"
L["Strata"] = "层级"
L["This determines what other frames will be in front of the frame."] = "此项指定其他哪些框架将位于此框架的前面。"
L["Width"] = "宽度"
L["Height"] = "高度"
-- switching
L["Mode Switching"] = "模式切换"
L["Combat mode"] = "战斗模式"
L["Automatically switch to set 'Current' and this mode when entering combat."] = "进入战斗时自动切换到“当前”集合和此模式。"
L["Return after combat"] = "战斗后返回"
L["Return to the previous set and mode after combat ends."] = "战斗结束后返回原先的集合和模式。"
L["Wipe mode"] = "团灭模式"
L["Automatically switch to set 'Current' and this mode after a wipe."] = "团灭后自动切换到“当前”集合和此模式。"
L["Inline bar display"] = "直排统计条显示"
L["Inline display is a horizontal window style."] = "直排显示是一种水平窗口样式。"
L["Text"] = "文字"
L["Font Color"] = "字体颜色"
L["Font Color. \nClick \"Use class colors\" to begin."] = "字体的颜色。\n点击“使用职业颜色”开始。"
L["Width of bars. This only applies if the \"Fixed bar width\" option is used."] = "统计条的宽度。此项仅在“固定统计条宽度”选项启用后生效。"
L["Fixed bar width"] = "固定统计条宽度"
L["If checked, bar width is fixed. Otherwise, bar width depends on the text width."] = "勾选后，统计条的宽度固定。否则，统计条宽度取决于文字长度。"
L["Use class colors"] = "使用职业颜色"
L["Class colors:\n|cFFF58CBAKader|r - 5.71M (21.7K)\n\nWithout:\nKader - 5.71M (21.7K)"] = "职业颜色：\n|cFFF58CBAKader|r - 5.71M (21.7K)\n\n普通颜色：\nKader - 5.71M (21.7K)"
L["Put values on new line."] = "提行显示数值"
L["New line:\nKader\n5.71M (21.7K)\n\nDivider:\nKader - 5.71M (21.7K)"] = "提行：\nKader\n5.71M (21.7K)\n\n单行：\nKader - 5.71M (21.7K)"
L["Use ElvUI skin if avaliable."] = "可用时使用ElvUI皮肤。"
L["Check this to use ElvUI skin instead. \nDefault: checked"] = "勾选此项以使用ElvUI皮肤。\n默认：勾选"
L["Use solid background."] = "使用纯色背景。"
L["Un-check this for an opaque background."] = "不勾选此项将使用不透明背景。"
L["Data text"] = "数据文字"
L["Text color"] = "文字颜色"
L["Choose the default color."] = "选择默认颜色。"
L["Hint: Left-Click to set active mode."] = "提示：左键点击：设定活跃模式。"
L["Right-Click to set active set."] = "右键点击：设定活跃集合。"
L["Shift+Left-Click to open menu."] = "Shift+左键点击：打开菜单。"
-- data resets
L["Data Resets"] = "数据重置"
L["Reset on entering instance"] = "进本重置"
L["Controls if data is reset when you enter an instance."] = "控制是否在进入副本时重置数据。"
L["Reset on joining a group"] = "入队重置"
L["Controls if data is reset when you join a group."] = "控制是否在加入队伍时重置数据。"
L["Reset on leaving a group"] = "离队重置"
L["Controls if data is reset when you leave a group."] = "控制是否在离开队伍时重置数据。"
L["Ask"] = "询问"
L["Do you want to reset Skada?"] = "是否要重置数据？"
L["All data has been reset."] = "全部数据已重置。"
L["Skip reset dialog"] = "跳过重置对话框"
L["Enable this if you want Skada to reset without the confirmation dialog."] = "如果您希望Skada在没有确认对话框的情况下进行重置，请启用此选项。"
-- general options
L["Show minimap button"] = "显示小地图按钮"
L["Toggles showing the minimap button."] = "开关小地图按钮的显示。"
L["Shorten menus"] = "短菜单"
L["Removes mode and segment menus from Skada menu to reduce its height. Menus are still accessible using window buttons."] = "从Skada菜单中移除模式和分段菜单，以降低其高度。仍可使用窗口按钮访问菜单。"
L["Translit"] = "转译"
L["Make those russian letters that no one understand to be presented as western letters."] = "把那些没人理解的俄文字母显示为西文字母。"
L["Merge pets"] = "合并宠物"
L["Merges pets with their owners. Changing this only affects new data."] = "宠物数据与其主人合并。此项变更仅对新数据生效。"
L["Show totals"] = "显示总计"
L["Shows a extra row with a summary in certain modes."] = "在某些模式下显示带有摘要的额外行。"
L["Only keep boss fighs"] = "仅保留BOSS战"
L["Boss fights will be kept with this on, and non-boss fights are discarded."] = "启用后将保留BOSS战数据，而非BOSS战数据则将被丢弃。"
L["Always keep boss fights"] = "总是保留BOSS战"
L["Boss fights will be kept with this on and will not be affected by Skada reset."] = "启用后BOSS战将被保存，不会受到Skada重置的影响。"
L["Hide when solo"] = "单练时隐藏"
L["Hides Skada's window when not in a party or raid."] = "不在队伍中时隐藏Skada窗口。"
L["Hide in PvP"] = "PvP中隐藏"
L["Hides Skada's window when in Battlegrounds/Arenas."] = "在战场/竞技场中隐藏Skada窗口。"
L["Hide in combat"] = "战斗中隐藏"
L["Hides Skada's window when in combat."] = "在战斗中隐藏Skada窗口。"
L["Show in combat"] = "在战斗中显示"
L["Shows Skada's window when in combat."] = "在战斗中显示Skada窗口。"
L["Disable while hidden"] = "隐藏时禁用"
L["Skada will not collect any data when automatically hidden."] = "自动隐藏时Skada将不收集任何数据。"
L["Sort modes by usage"] = "按用途排序模式"
L["The mode list will be sorted to reflect usage instead of alphabetically."] = "模式列表将进行排序以反映用途，而不是按字母顺序。"
L["Show rank numbers"] = "显示序号"
L["Shows numbers for relative ranks for modes where it is applicable."] = "在适用处根据模式中的相对等级显示数字编号。"
L["Aggressive combat detection"] = "激进式战斗侦测(Recount模式)"
L["Skada usually uses a very conservative (simple) combat detection scheme that works best in raids. With this option Skada attempts to emulate other damage meters. Useful for running dungeons. Meaningless on boss encounters."] = "Skada通常使用非常保守（简单）的战斗侦测方案，在团队副本中效果最佳。通过此选项，Skada可尝试模拟其他伤害统计插件。这在五人本中很有效，但对于BOSS战则毫无意义。"
L["Tentative Timer"] = "暂缓计时器"
L["The number of seconds to wait for combat events when engaging combat.\nSkada only creates a new segment if there are enough combat events during a set amount of time."] = "战斗开始后Skada创建新分段的等待时间(秒)。\n\n仅在启用\"激进式战斗侦测\"时生效。"
L["Autostop"] = "自动停止"
L["Automatically stops the current segment after half of all raid members have died."] = "团队成员超过半数阵亡时自动停止当前分段记录。"
L["Always show self"] = "总是显示自己"
L["Keeps the player shown last even if there is not enough space."] = "即使没有足够空行，仍然将玩家显示在最后。"
L["Number format"] = "数字格式"
L["Controls the way large numbers are displayed."] = "控制大数字的显示方式。"
L["Condensed"] = "简短"
L["Detailed"] = "详细"
L["Combined"] = "合计"
L["Comma"] = "逗号"
L["Data feed"] = "数据反馈"
L["Choose which data feed to show in the DataBroker view. This requires an LDB display addon, such as Titan Panel."] = "选择显示在DataBroker上的数据反馈。需要一个LDB显示插件，例如Titan Panel泰坦信息条。"
L["Time measure"] = "时间测量"
L["Activity time"] = "活跃时间"
L["Effective time"] = "有效时间"
L.timemesure_desc = [=[|cFFFFFF00活跃|r：每个团队成员的计时器将在其活动停止后暂停，并在恢复活跃时再次计时。这是测量DPS和HPS的常用方法。
|cFFFFFF00有效|r：用于排名，此方法使用经历的战斗时间来测量全部团队成员的DPS和HPS。]=]
L["Number set duplicates"] = "数字集重复"
L["Append a count to set names with duplicate mob names."] = "在集合名称中附加一个重复怪物名字的计数。"
L["Set format"] = "集合格式"
L["Controls the way set names are displayed."] = "控制集合名称的显示方式。"
L["Links in reports"] = "报告中的链接"
L["When possible, use links in the report messages."] = "如果可能，请使用报告消息中的链接。"
L["Memory Check"] = "内存检查"
L["Checks memory usage and warns you if it is greater than or equal to %dmb."] = "检查内存占用，并在高于%dmb时发出警告。"
L["Data segments to keep"] = "数据分段保留"
L["The number of fight segments to keep. Persistent segments are not included in this."] = "需要保留的战斗数据分段数量。不包括连续的分段数据。"
L["Update frequency"] = "更新频率"
L["How often windows are updated. Shorter for faster updates. Increases CPU usage."] = "窗口的更新频率。数字越小更新越快，但同时CPU占用越高。"
-- columns
L["Columns"] = "列"
-- tooltips
L["Tooltips"] = "提示框"
L["Show tooltips"] = "显示提示框"
L["Shows tooltips with extra information in some modes."] = "在某些模式下显示包含额外信息的提示框。"
L["Informative tooltips"] = "信息性提示框"
L["Shows subview summaries in the tooltips."] = "在提示框中显示子视图摘要。"
L["Subview rows"] = "子视图行"
L["The number of rows from each subview to show when using informative tooltips."] = "使用信息性提示框时每个子视图的显示行数。"
L["Tooltip position"] = "提示框位置"
L["Position of the tooltips."] = "提示框的位置。"
L["Default"] = "默认"
L["Top right"] = "右上"
L["Top left"] = "左上"
L["Bottom right"] = "右下"
L["Bottom left"] = "左下"
L["Smart"] = "智能"
L["Follow Cursor"] = "跟随光标"
-- disabled modules
L["Modules"] = "模块"
L["Disabled Modules"] = "禁用模块"
L["Tick the modules you want to disable."] = "勾选要禁用的模块。"
L["This change requires a UI reload. Are you sure?"] = "此更改需要重载界面。确定重载？"
L["Adds a set of standard themes to Skada. Custom themes can also be used."] = "为Skada添加一套标准主题。自定义主题也能同时使用。"
-- themes module
L["Theme"] = "主题"
L["Themes"] = "主题"
L["Apply Theme"] = "应用主题"
L["Theme applied!"] = "主题已应用！"
L["Name of your new theme."] = "新主题的名称。"
L["Save theme"] = "保存主题"
L["Delete theme"] = "删除主题"
-- scroll module
L["Scroll"] = "滚动"
L["Mouse"] = "鼠标"
L["Scrolling speed"] = "滚动速度"
L["Scroll icon"] = "滚动图标"
L["Scroll mouse button"] = "滚动鼠标按钮"
L["Keybinding"] = "按键绑定"
L["Key scrolling speed"] = "按键滚动速度"
-- minimap button
L["Skada Summary"] = "Skada概要"
L["|cffeda55fLeft-Click|r to toggle windows."] = "左键：开关窗口"
L["|cffeda55fShift+Left-Click|r to reset."] = "Shift+左键：重置"
L["|cffeda55fRight-Click|r to open menu."] = "右键：打开菜单"
-- skada menu
L["Skada Menu"] = "Skada菜单"
L["Select Segment"] = "选择分段"
L["Delete Segment"] = "删除分段"
L["Keep Segment"] = "保留分段"
L["Toggle Windows"] = "开关窗口"
L["Start New Segment"] = "开始新分段"
-- window buttons
L["Configure"] = "配置"
L["Opens the configuration window."] = "打开配置窗口。"
L["Resets all fight data except those marked as kept."] = "重置除标记为保留之外的全部数据。"
L["Segment"] = "分段"
L["Jump to a specific segment."] = "跳转至一个指定分段。"
L["Mode"] = "模式"
L["Jump to a specific mode."] = "跳转至一个指定模式。"
L["Report"] = "报告"
L["Opens a dialog that lets you report your data to others in various ways."] = "打开一个可以通过各种方式向他人报告数据的对话框。"
L["Stop"] = "停止"
L["Stops or resumes the current segment. Useful for discounting data after a wipe. Can also be set to automatically stop in the settings."] = "停止或继续当前分段。在团灭后很有用。可在设置中设为自动停止。"
-- default segments
L["Total"] = "总计"
L["Current"] = "当前战斗"
-- report module and window
L["Skada: %s for %s:"] = "Skada：%s 对于 %s："
L["Channel"] = "频道"
L["Self"] = "自己"
L["Whisper"] = "密语"
L["Whisper Target"] = "密语对象"
L["Line"] = "线路"
L["Lines"] = "线路"
L["There is nothing to report."] = "没有可报告的内容。"
L["No mode or segment selected for report."] = "没有为报告选定模式或分段。"
-- Bar Display Module --
L["Bar display"] = "条形图显示"
L["Bar display is the normal bar window used by most damage meters. It can be extensively styled."] = "条形图显示是被大多数伤害统计插件所采用的普通条形图窗口。可以高度样式化。"
-- Threat Module --
L["Threat"] = "威胁"
L["Threat warning"] = "威胁警告"
L["Flash screen"] = "屏幕闪烁"
L["This will cause the screen to flash as a threat warning."] = "以屏幕闪烁作为威胁警告。"
L["Shake screen"] = "屏幕晃动"
L["This will cause the screen to shake as a threat warning."] = "以屏幕晃动作为威胁警告。"
L["Warning Message"] = "警报消息"
L["Print a message to screen when you accumulate too much threat."] = "当你仇恨过高时在屏幕上显示警报消息。"
L["Play sound"] = "播放音效"
L["This will play a sound as a threat warning."] = "以播放音效作为威胁警告。"
L["Threat sound"] = "威胁音效"
L["The sound that will be played when your threat percentage reaches a certain point."] = "当你的威胁比率达到某个点时播放的音效。"
L["Threat threshold"] = "威胁比率"
L["When your threat reaches this level, relative to tank, warnings are shown."] = "当你的威胁相对于坦克达到此级别时，将显示警告。"
L["Show raw threat"] = "显示原始威胁"
L["Shows raw threat percentage relative to tank instead of modified for range."] = "显示相对于坦克的原始威胁比率，而不是范围的修改。"
L["Use focus target"] = "使用焦点"
L["Shows threat on focus target, or focus target's target, when available."] = "可用时，显示对于焦点或焦点目标的威胁。"
L["Disable while tanking"] = "作为坦克时不警告"
L["Test warnings"] = "测试警报"
L["TPS"] = "TPS"
L["Threat: Personal Threat"] = "威胁：个人威胁"
-- Absorbs & Healing Module --
L["Healing"] = "治疗"
L["Healing Done"] = "造成治疗"
L["Healing Taken"] = "受到治疗"
L["Healed player list"] = "治疗玩家列表"
L["Healing spell list"] = "治疗法术列表"
L["%s's healing"] = "%s的治疗"
L["%s's healing spells"] = "%s的治疗法术"
L["%s's healed players"] = "%s治疗的玩家"
L["HPS"] = "HPS"
L["Healing: Personal HPS"] = "治疗：个人HPS"
L["RHPS"] = "RHPS"
L["Healing: Raid HPS"] = "治疗：团队HPS"
L["Total Healing"] = "总计治疗"
L["Overhealing"] = "过量治疗"
L["Overhealed player list"] = "过量治疗玩家列表"
L["Overheal spell list"] = "过量治疗法术列表"
L["%s's overheal spells"] = "%s的过量治疗法术"
L["%s's overhealed players"] = "%s过量治疗的玩家"
L["Healing and Overhealing"] = "治疗和过量治疗"
L["Heal and overheal spells"] = "治疗和过量治疗法术"
L["Healed and overhealed players"] = "治疗和过量治疗玩家"
L["%s's heal and overheal spells"] = "%s的治疗和过量治疗法术"
L["%s's healed and overhealed players"] = "%s治疗和过量治疗的玩家"
L["Absorbs"] = "吸收"
L["Absorbed player list"] = "吸收玩家列表"
L["Absorb spell list"] = "吸收法术列表"
L["%s's absorbed players"] = "%s的吸收玩家"
L["%s's absorb spells"] = "%s的吸收法术"
L["Absorbs and Healing"] = "吸收和治疗"
L["Absorbs and healing spells"] = "吸收和治疗法术列表"
L["Absorbed and healed players"] = "吸收和治疗玩家列表"
L["%s's absorb and healing spells"] = "%s的吸收和治疗法术"
L["%s's absorbed and healed players"] = "%s的吸收和治疗玩家"
L["Healing player list"] = "治疗玩家列表"
L["%s's received healing"] = "%s受到的治疗"
L["Healing Done By Spell"] = "法术造成的治疗"
L["Healing spell sources"] = "治疗法术的来源"
-- Auras Module --
L["Uptime"] = "持续时间"
L["Buffs and Debuffs"] = "Buff和Debuff"
L["Buffs"] = "Buff"
L["Buff spell list"] = "Buff法术列表"
L["%s's buffs"] = "%s的Buff"
L["Debuffs"] = "Debuff"
L["Debuff spell list"] = "Debuff法术列表"
L["Debuff target list"] = "Debuff目标列表"
L["%s's debuffs"] = "%s的Debuff"
L["%s's <%s> targets"] = "%s的<%s>目标"
L["Sunder Counter"] = "破甲统计"
L["Sunder target list"] = "破甲目标列表"
-- CC Tracker Module --
L["CC Tracker"] = "控制追踪"
-- CC Done:
L["CC Done"] = "成功控制"
L["CC Done spells"] = "成功控制法术"
L["CC Done targets"] = "成功控制目标"
L["CC Done target spells"] = "成功控制目标法术"
L["%s's CC Done <%s> targets"] = "%s的成功控制<%s>目标"
L["%s's CC Done <%s> spells"] = "%s的成功控制<%s>法术"
L["%s's CC Done spells"] = "%s的成功控制目标"
L["%s's CC Done targets"] = "%s的成功控制法术"
-- CC Taken
L["CC Taken"] = "受到控制"
L["CC Taken spells"] = "受到控制法术"
L["CC Taken sources"] = "受到控制来源"
L["CC Taken source spells"] = "受到控制来源法术"
L["%s's CC Taken <%s> sources"] = "%s的受到控制<%s>来源"
L["%s's CC Taken <%s> spells"] = "%s的受到控制<%s>法术"
L["%s's CC Taken spells"] = "%s的受到控制法术"
L["%s's CC Taken sources"] = "%s的受到控制来源"
L["CC Breaks"] = "打破控制"
L["CC Breakers"] = "打破控制者"
L["CC Break spells"] = "打破控制法术"
L["CC Break targets"] = "打破控制目标"
L["CC Break target spells"] = "打破控制目标法术"
L["%s's CC Break <%s> spells"] = "%s的打破控制<%s>法术"
L["%s's CC Break <%s> targets"] = "%s的打破控制<%s>目标"
L["%s's CC Break spells"] = "%s的打破控制法术"
L["%s's CC Break targets"] = "%s的打破控制目标"
-- options
L["CC"] = "控制"
L["Announce CC breaking to party"] = "将打破控制通报到小队"
L["Ignore Main Tanks"] = "忽略主坦克"
L["%s on %s removed by %s"] = "%s位于%s已被%s移除"
L["%s on %s removed by %s's %s"] = "%s位于%s已被%s的%s移除"
-- Damage Module --
-- damage done module
L["Damage"] = "伤害"
L["Damage target list"] = "伤害目标"
L["Damage spell list"] = "伤害法术列表"
L["Damage spell details"] = "伤害法术详情"
L["Damage spell targets"] = "伤害法术目标"
L["Damage Done"] = "造成伤害"
L["%s's damage"] = "%s的伤害"
L["%s's <%s> damage"] = "%s的<%s>伤害"
L["%s's <%s> damage on %s"] = "%s来自于%s的<%s>的的伤害"
L["Useful Damage"] = "有用伤害"
L["Useful damage on %s"] = "对于%s有用伤害"
L["Damage Done By Spell"] = "法术造成伤害"
L["%s's sources"] = "%s的来源"
L["DPS"] = "DPS"
L["Damage: Personal DPS"] = "伤害：个人DPS"
L["RDPS"] = "RDPS"
L["Damage: Raid DPS"] = "伤害：团队DPS"
-- damage taken module
L["Damage Taken"] = "承受伤害"
L["Damage taken by %s"] = "%s的承受伤害"
L["%s's damage on %s"] = "%s的伤害于%s"
L["Damage source list"] = "伤害来源列表"
L["Damage spell sources"] = "伤害法术来源"
L["Damage Taken By Spell"] = "承受法术伤害"
L["%s's targets"] = "%s的目标"
L["DTPS"] = "DTPS"
-- enemy damage done module
L["Enemies"] = "敌方相关"
L["Enemy Damage Done"] = "敌方造成伤害"
L["Damage done per player"] = "每人造成伤害"
L["Damage from %s"] = "来自于%s的伤害"
-- enemy damage taken module
L["Enemy Damage Taken"] = "敌方承受伤害"
L["Damage taken per player"] = "每人承受伤害"
L["Damage on %s"] = "对于%s的伤害"
L["%s's damage sources"] = "%s的伤害来源"
-- enemy healing done module
L["Enemy Healing Done"] = "敌方的治疗"
-- avoidance and mitigation module
L["Avoidance & Mitigation"] = "规避和缓解"
L["Damage Breakdown"] = "伤害失败"
L["%s's damage breakdown"] = "%s的伤害失败"
-- friendly fire module
L["Friendly Fire"] = "误伤"
-- useful damage targets
L["Useful targets"] = "有用目标"
L["Oozes"] = "软泥怪"
L["Princes overkilling"] = "王子过度伤害"
L["Adds"] = "小怪"
L["Halion and Inferno"] = "海里昂和地狱火"
L["Valkyrs overkilling"] = "瓦格里过度伤害"
-- missing bosses entries
L["Cult Adherent"] = "教派追随者"
L["Cult Fanatic"] = "教派狂热者"
L["Darnavan"] = "达尔纳文"
L["Deformed Fanatic"] = "畸形的狂热者"
L["Empowered Adherent"] = "亢奋的追随者"
L["Gas Cloud"] = "毒气之云"
L["Living Inferno"] = "活体地狱火"
L["Reanimated Adherent"] = "被复活的追随者"
L["Reanimated Fanatic"] = "被复活的狂热者"
L["Volatile Ooze"] = "不稳定的软泥怪"
L["Wicked Spirit"] = "卑劣的灵魂"
-- Deaths Module --
L["Deaths"] = "死亡"
L["%s's death"] = "%s的死亡"
L["%s's deaths"] = "%s的死亡"
L["Death log"] = "死亡记录"
L["%s's death log"] = "%s的死亡记录"
L["Player's deaths"] = "玩家的死亡"
L["%s dies"] = "%s死了"
L["Spell details"] = "法术详情"
L["Spell"] = "法术"
L["Amount"] = "数量"
L["Source"] = "来源"
L["Health"] = "血量"
L["Change"] = "改变"
-- activity module
L["Activity"] = "活跃"
L["Activity per target"] = "每个目标活跃"
-- dispels module lines --
L["Dispels"] = "驱散"
L["Dispel spell list"] = "驱散法术列表"
L["Dispelled spell list"] = "已驱散法术列表"
L["Dispelled target list"] = "已驱散目标列表"
L["%s's dispel spells"] = "%s的驱散法术"
L["%s's dispelled spells"] = "%s的已驱散法术"
L["%s's dispelled targets"] = "%s的已驱散目标"
-- failbot module lines --
L["Fails"] = "失误"
L["%s's fails"] = "%s的失误"
L["Player's failed events"] = "玩家的失误事件"
L["Event's failed players"] = "事件的失误玩家"
-- interrupts module lines --
L["Interrupts"] = "打断"
L["Interrupt spells"] = "打断法术"
L["Interrupted spells"] = "已打断法术"
L["Interrupted targets"] = "已打断目标"
L["%s's interrupt spells"] = "%s的打断法术"
L["%s's interrupted spells"] = "%s的已打断法术"
L["%s's interrupted targets"] = "%s的已打断目标"
L["Announce Interrupts"] = "通报打断"
L["%s interrupted!"] = "%s已打断！"
-- Power gained module --
L["Power"] = "能量"
L["Resources"] = "能量"
L["%s's gained %s"] = "%s的获得%s"
L["Power gained: Mana"] = "能量获得：法力"
L["Mana gained spell list"] = "法力获得法术列表"
L["Power gained: Rage"] = "能量获得：怒气："
L["Rage gained spell list"] = "怒气获得法术列表"
L["Power gained: Energy"] = "能量获得：(刺客)能量"
L["Energy gained spell list"] = "(刺客)能量获得法术列表"
L["Power gained: Runic Power"] = "能量获得：符文能量"
L["Runic Power gained spell list"] = "符文能量获得法术列表"
-- Parry module lines --
L["Parry-Haste"] = "招架-急速"
L["Parry target list"] = "招架目标列表"
L["%s's parry targets"] = "%s的招架目标"
-- Potions module lines --
L["Potions"] = "药水"
L["Potions list"] = "药水列表"
L["Players list"] = "玩家列表"
L["%s's used potions"] = "%s使用的药水"
L["Pre-potion"] = "预使用药水"
L["pre-potion: %s"] = "预使用药水:%s"
L["Prints pre-potion after the end of the combat."] = "战斗结束后发布预使用药水讯息。"
-- resurrect module lines --
L["Resurrects"] = "复活"
L["Resurrect spell list"] = "复活法术列表"
L["Resurrect target list"] = "复活目标列表"
L["%s's resurrect spells"] = "%s的复活法术"
L["%s's resurrect targets"] = "%s的复活目标"
-- spamage module lines --
L["Spamage"] = "防刷屏"
L["Suppresses chat messages from damage meters and provides single chat-link damage statistics in a popup."] = "阻止来自于伤害统计插件的聊天讯息，并提供一条简单的聊天链接，在弹出窗口中显示伤害统计信息。"
L["Capture Delay"] = "捕获延迟"
L["How many seconds the addon waits after \"Skada: *\" lines before it assumes spam burst is over. 1 seems to work in most cases"] = "插件在“ Skada：*”讯息行之后等待多少秒才认为刷屏已结束。设为1秒适用于大多数场合。"
L["Filter Custom Channels"] = "过滤自定义频道"
L["Selects the action to perform when encountering damage meter data in custom channels"] = "在自定义频道中出现伤害统计数据时选择执行的动作"
L["Filter Guild"] = "过滤公会频道"
L["Selects the action to perform when encountering damage meter data in guild chat"] = "在公会频道中出现伤害统计数据时选择执行的动作"
L["Filter Officer"] = "过滤官员频道"
L["Selects the action to perform when encountering damage meter data in officer chat"] = "在官员频道中出现伤害统计数据时选择执行的动作"
L["Filter Party"] = "过滤小队频道"
L["Selects the action to perform when encountering damage meter data in party chat"] = "在小队频道中出现伤害统计数据时选择执行的动作"
L["Filter Raid"] = "过滤团队频道"
L["Selects the action to perform when encountering damage meter data in raid chat"] = "在团队频道中出现伤害统计数据时选择执行的动作"
L["Filter Say"] = "过滤说话频道"
L["Selects the action to perform when encountering damage meter data in say chat"] = "在说话频道中出现伤害统计数据时选择执行的动作"
L["Filter Whisper"] = "过滤密语频道"
L["Selects the action to perform when encountering damage meter whisper"] = "在密语频道中出现伤害统计数据时选择执行的动作"
L["Filter Yell"] = "过滤大喊频道"
L["Selects the action to perform when encountering damage meter data in yell chat"] = "在大喊频道中出现伤害统计数据时选择执行的动作"
L["Do Nothing"] = "无动作"
L["Compress"] = "压缩"
L["Suppress"] = "阻止"
L["Reported by: %s"] = "报告者：%s"
-- nickname module lines --
L["Nickname"] = "昵称"
L["Set a nickname for you.\nNicknames are sent to group members and Skada can use them instead of your character name."] = "给自己设定一个昵称。\n昵称已发送给队员，Skada可使用它取代你的角色名字。"
L["Nickname isn't a valid string."] = "此昵称不是有效字符串。"
L["Your nickname is too long, max of 12 characters is allowed."] = "你的昵称太长，最多允许12个字符。"
L["Only letters and two spaces are allowed."] = "仅允许字母及2个空格。"
L["You can't use the same letter three times consecutively, two spaces consecutively or more then two spaces."] = "同一个字母不能连续使用3次，不能连续使用2个空格且不能超过2个空格。"
L["Ignore Nicknames"] = "忽略昵称"
L["When enabled, nicknames set by Skada users are ignored."] = "勾选后，Skada用户设定的昵称将被忽略。"
L["Name display"] = "名字显示"
L["Choose how names are shown on your bars."] = "选择统计条上名字的显示方式。"
L["Clear Cache"] = "清除缓存"
L["Are you sure you want clear cached nicknames?"] = "您确定要清除缓存的昵称吗？"
-- player score module lines --
L["Player Score"] = "玩家评分"
L["Raid Score"] = "团队评分"
L["Score"] = "评分"
L["%s's Score"] = "%s的评分"
-- damage mitigated lines --
L["Damage Mitigated"] = "伤害减免"
L["%s's mitigated damage"] = "%s的减免伤害"
L["%s's <%s> mitigated damage"] = "%s的<%s>减免伤害"
-- overkill module lines --
L["Overkill"] = "过度杀伤"
L["Overkill spell list"] = "过度杀伤法术列表"
L["Overkill target list"] = "过度杀伤目标列表"
L["%s's overkill spells"] = "%s 过度杀伤法术"
L["%s's overkill targets"] = "%s 过度杀伤目标"
-- tweaks module lines --
L["Tweaks"] = "调整"
L["First hit"] = "第一击"
L["|cffffff00First Hit|r: %s from %s"] = "|cffffff00第一击|r : 从%2$s%1$s"
L["|cffffbb00First Hit|r: *?*"] = "|cffffbb00First Hit|r: *?*"
L["|cffffbb00Boss First Target|r: %s (%s)"] = "|cffffbb00BOSS第一个目标|r：%s (%s)"
L["Prints a message of the first hit before combat.\nOnly works for boss encounters."] = "发布一条讯息，显示是谁施放了第一次攻击。\n仅对BOSS战有效。"
L["Smart Stop"] = "智能停止"
L["Automatically stops the current segment after the boss has died.\nUseful to avoid collecting data in case of a combat bug."] = "BOSS死亡后自动停止当前分段。\n有助于避免在发生战斗BUG时收集数据。"
L["Duration"] = "等待時間"
L["For how long Skada should wait before stopping the segment."] = "Skada 在停止該段之前應等待多長時間。"
L["Module Icons"] = "模块图标"
L["Enable this if you want to show module icons on windows and menus."] = "启用后在窗口和菜单中显示模块对应的图标。"