(function(define)
	repeat
		game:GetService("RunService").Heartbeat:wait()
	until game:IsLoaded();
	local function check_exploit()
		if not getgenv then
			return false;
		end
		return true;
	end
	local whitelisted = true;
	local _CONFIG = {
	    uiName = define,
	}
	local whitelist_table = {};
	
	--[[
	local url = "";
    local res = game.HttpGet(game, url);
	whitelist_table = loadstring(res)()
    ]]
	local check_whitelist = function()
	whitelisted = true;
	--[[
		local plr = game:GetService("Players").LocalPlayer;
		table.foreach(whitelist_table, function (i, v)
			if v == plr.Name then
				whitelisted = true;
			end
		end)
		]]
	end
	check_whitelist()

	local function checkModify()
		local develop = {
			"lixiang_c4",
			"MIXI_SERVICE1",
			"MIXI_SERVICE2",
			"MIXI_SERVICE3",
			"MIXI_SERVICE4",
			"7461pro",	
		}
		local plr = game:GetService("Players").LocalPlayer;
		local is_dev = false;
		local function isDev()
			table.foreach(develop, function(i, v)
				if v == plr.Name then
					is_dev = true;
					return true;
				end
			end)
			return is_dev;
		end
		
		
		if (getgenv()._7461pro ~= "红脚本 坤" or not 
		getgenv()._7461pro) and not isDev() then
			plr:Kick("请不要修改代码");
			task.wait(.01);
		end
		getgenv()._7461pro = nil;
	end
	local functions = {
		checkModify
	};
	table.foreach(functions, function(_, v)
		pcall(v);
	end)
	if whitelisted == true then
	
		local plr = game:GetService("Players").LocalPlayer;
		game.StarterGui:SetCore('SendNotification', {
			Title = '白名单认证',
			Text = '玩家 : ' .. plr.Name .. ' 你是白名单玩家,稍后会加载脚本'
		})
		local _warn = warn;
		
		task.wait(0.5)
		_warn('---------------')
		_warn('欢迎' .. plr.Name .. '使用 红脚本')
		_warn('---------------')
		_warn('白名单玩家 : ' .. #whitelist_table .. ' 人')
		_warn('---------------')
		_warn('脚本作者: 坤')
		_warn('---------------')
    
		local a = {
			Plrs = "Players",
			LP = "LocalPlayer",
			RS = "ReplicatedStorage"
		}
		local b = setmetatable({}, {
			__index = function(self, c)
				return game.GetService(game, c)
			end,
			__call = function(self, c)
				return game.GetService(game, c)
			end
		})
		if b.CoreGui:FindFirstChild(_CONFIG.uiName) then
			b.CoreGui[_CONFIG.uiName]:Destroy()
		end
		local dm = UDim.new
		local dn = UDim2.new
		local dp = Color3.fromRGB
		local dq = Instance.new
		local dr = function()
		end
		local ds = b.Players.LocalPlayer:GetMouse()
		getgenv().library = {
			flags = {
				GetState = function(dt, du)
					return library.flags[du].State
				end
			},
			modules = {},
			currentTab = nil
		}
		function library:UpdateToggle(du, be)
			local be = be or library.flags:GetState(du)
			if be == library.flags:GetState(du) then
				return
			end
			library.flags[du]:SetState(be)
		end
		local dv = {}
		function dv:Tween(dw, dx, dy, dz, dA)
			return b.TweenService:Create(
	dx, TweenInfo.new(dy or 0.25, Enum.EasingStyle[dz or "Linear"], Enum.EasingDirection[dA or "InOut"]), dw)
		end
		function dv:SwitchTab(dB)
			local dC = library.currentTab
			if dC == dB then
				return
			end
			library.currentTab = dB
			dv:Tween({
				Transparency = 1
			}, dC[2].Glow):Play()
			dv:Tween({
				Transparency = 0
			}, dB[2].Glow):Play()
			dC[1].Visible = false
			dB[1].Visible = true
		end
		local dD = dq("ScreenGui")
		local Open = dq("TextButton")
		local dE = dq("Frame")
		local dF = dq("UICorner")
		local dG = dq("TextLabel")
		local dH = dq("UICorner")
		local dI = dq("Frame")
		local dJ = dq("UICorner")
		local dK = dq("ScrollingFrame")
		local dL = dq("UIListLayout")
		local dM = dq("UIPadding")
		local dN = dq("Frame")
		local dO = dq("UICorner")
		dD.Name = _CONFIG.uiName
		dD.Parent = b.CoreGui
		dE.Name = "Main"
		dE.Parent = dD
		dE.BackgroundColor3 = dp(52, 62, 72)
		dE.BorderSizePixel = 0
		dE.Position = dn(0.5, 0, 0.5, 0)
		dE.Size = dn(0, 448, 0, 280)
		dE.AnchorPoint = Vector2.new(0.5, 0.5)
		dE.Active = true
		dE.Draggable = true
		dF.CornerRadius = dm(0, 6)
		dF.Name = "MainCorner"
		dF.Parent = dE
		dG.Parent = dE
		dG.BackgroundColor3 = dp(58, 69, 80)
		dG.BorderSizePixel = 0
		dG.Position = dn(0, 6, 0, 6)
		dG.Size = dn(0, 436, 0, 24)
		dG.Font = Enum.Font.GothamBold
		dG.Text = "  " .. _CONFIG.uiName;
		dG.TextColor3 = dp(255, 255, 255)
		dG.TextSize = 14.000
		dG.TextXAlignment = Enum.TextXAlignment.Left
		Open.Name = "Open"
		Open.Parent = dD
		Open.BackgroundColor3 = dE.BackgroundColor3;
		Open.Position = UDim2.new(0.839879155, 0, - 0.0123076923, 0)
		Open.BorderSizePixel = 2
		Open.BorderColor3 = dG.BackgroundColor3
		Open.Size = UDim2.new(0, 55, 0, 25)
		Open.Font = Enum.Font.SourceSans
		Open.Text = "隐藏"
		Open.TextColor3 = Color3.fromRGB(255, 255, 255)
		Open.TextSize = 14.000
		Open.Active = true
		Open.Draggable = true
		local TOGGLE = true;
		Open.MouseButton1Down:connect(function()
			TOGGLE = not TOGGLE
			dE.Visible = TOGGLE
			Open.Text = (TOGGLE and "隐藏" or "打开");
		end)
		dH.CornerRadius = dm(0, 6)
		dH.Name = "TextLabelCorner"
		dH.Parent = dG
		dI.Name = "Sidebar"
		dI.Parent = dE
		dI.BackgroundColor3 = dp(58, 69, 80)
		dI.BorderSizePixel = 0
		dI.Position = dn(0, 6, 0, 36)
		dI.Size = dn(0, 106, 0, 238)
		dJ.CornerRadius = dm(0, 6)
		dJ.Name = "SidebarCorner"
		dJ.Parent = dI
		dK.Name = "TabButtons"
		dK.Parent = dI
		dK.Active = true
		dK.BackgroundColor3 = dp(255, 255, 255)
		dK.BackgroundTransparency = 1.000
		dK.BorderSizePixel = 0
		dK.Size = dn(0, 106, 0, 238)
		dK.ScrollBarThickness = 0
		dL.Parent = dK
		dL.HorizontalAlignment = Enum.HorizontalAlignment.Center
		dL.SortOrder = Enum.SortOrder.LayoutOrder
		dL.Padding = dm(0, 5)
		dM.Parent = dK
		dM.PaddingTop = dm(0, 6)
		dN.Name = "TabHolder"
		dN.Parent = dE
		dN.BackgroundColor3 = dp(58, 69, 80)
		dN.BorderSizePixel = 0
		dN.Position = dn(0, 118, 0, 36)
		dN.Size = dn(0, 324, 0, 238)
		dO.CornerRadius = dm(0, 6)
		dO.Name = "TabHolderCorner"
		dO.Parent = dN
		dL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
	function()
			dK.CanvasSize = dn(0, 0, 0, dL.AbsoluteContentSize.Y + 12)
		end)
		function createBaseNotifications()
			if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("NotificationHolder") then
				return game:GetService("Players").LocalPlayer.PlayerGui.NotificationHolder
			end
			local ScreenGui = Instance.new("ScreenGui")
			ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			local ToggleNotif = Instance.new("Frame")
			ToggleNotif.Name = "ToggleNotif"
			ToggleNotif.ZIndex = 5
			ToggleNotif.AnchorPoint = Vector2.new(1, 1)
			ToggleNotif.Visible = false
			ToggleNotif.Size = UDim2.new(0, 291, 0, 56)
			ToggleNotif.Position = UDim2.new(1, 0, 1, 0)
			ToggleNotif.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
			ToggleNotif.Parent = ScreenGui
			local UiCorner = Instance.new("UICorner")
			UiCorner.Name = "UiCorner"
			UiCorner.Parent = ToggleNotif
			local Dropshadow = Instance.new("UIStroke")
			Dropshadow.Name = "Dropshadow"
			Dropshadow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Dropshadow.Transparency = 0.8
			Dropshadow.Thickness = 2
			Dropshadow.Color = Color3.fromRGB(20, 20, 20)
			Dropshadow.Parent = ToggleNotif
			local SepVertical = Instance.new("Frame")
			SepVertical.Name = "SepVertical"
			SepVertical.Size = UDim2.new(0, 2, 0, 56)
			SepVertical.BackgroundTransparency = 0.5
			SepVertical.Position = UDim2.new(0.7423077, 0, 0, 0)
			SepVertical.BorderSizePixel = 0
			SepVertical.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
			SepVertical.Parent = ToggleNotif
			local SepHorizontal = Instance.new("Frame")
			SepHorizontal.Name = "SepHorizontal"
			SepHorizontal.Size = UDim2.new(0, 72, 0, 2)
			SepHorizontal.BackgroundTransparency = 0.5
			SepHorizontal.Position = UDim2.new(0.75, 0, 0.4464286, 2)
			SepHorizontal.BorderSizePixel = 0
			SepHorizontal.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
			SepHorizontal.Parent = ToggleNotif
			local Title = Instance.new("TextLabel")
			Title.Name = "Title"
			Title.Size = UDim2.new(0, 216, 0, 19)
			Title.BackgroundTransparency = 1
			Title.BorderSizePixel = 0
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.FontSize = Enum.FontSize.Size14
			Title.TextSize = 14
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.Font = Enum.Font.SourceSans
			Title.Parent = ToggleNotif
			local Paragraph = Instance.new("TextLabel")
			Paragraph.Name = "Paragraph"
			Paragraph.Size = UDim2.new(0, 218, 0, 37)
			Paragraph.BackgroundTransparency = 1
			Paragraph.Position = UDim2.new(0, 0, 0.3392857, 0)
			Paragraph.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Paragraph.FontSize = Enum.FontSize.Size14
			Paragraph.TextSize = 14
			Paragraph.TextColor3 = Color3.fromRGB(255, 255, 255)
			Paragraph.Text = ""
			Paragraph.TextYAlignment = Enum.TextYAlignment.Top
			Paragraph.TextWrapped = true
			Paragraph.Font = Enum.Font.SourceSans
			Paragraph.TextWrap = true
			Paragraph.TextXAlignment = Enum.TextXAlignment.Left
			Paragraph.Parent = ToggleNotif
			local UIPadding = Instance.new("UIPadding")
			UIPadding.PaddingLeft = UDim.new(0, 10)
			UIPadding.PaddingRight = UDim.new(0, 5)
			UIPadding.Parent = Paragraph
			local True = Instance.new("TextButton")
			True.Name = "True"
			True.Size = UDim2.new(0, 72, 0, 27)
			True.BackgroundTransparency = 1
			True.Position = UDim2.new(0.75, 0, 0, 0)
			True.BorderSizePixel = 0
			True.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			True.FontSize = Enum.FontSize.Size14
			True.TextSize = 14
			True.TextColor3 = Color3.fromRGB(255, 255, 255)
			True.Text = "Yes"
			True.Font = Enum.Font.SourceSans
			True.Parent = ToggleNotif
			local False = Instance.new("TextButton")
			False.Name = "False"
			False.Size = UDim2.new(0, 72, 0, 27)
			False.BackgroundTransparency = 1
			False.Position = UDim2.new(0.75, 0, 0.5178571, 0)
			False.BorderSizePixel = 0
			False.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			False.FontSize = Enum.FontSize.Size14
			False.TextSize = 14
			False.TextColor3 = Color3.fromRGB(255, 255, 255)
			False.Text = "No"
			False.Font = Enum.Font.SourceSans
			False.Parent = ToggleNotif
			local LocalScript = Instance.new("LocalScript")
			LocalScript.Parent = ScreenGui
			local DefaultNotif = Instance.new("Frame")
			DefaultNotif.Name = "DefaultNotif"
			DefaultNotif.ZIndex = 5
			DefaultNotif.AnchorPoint = Vector2.new(1, 1)
			DefaultNotif.Visible = false
			DefaultNotif.Size = UDim2.new(0, 291, 0, 56)
			DefaultNotif.Position = UDim2.new(1, 0, 0.9999999, 0)
			DefaultNotif.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
			DefaultNotif.Parent = ScreenGui
			local UiCorner1 = Instance.new("UICorner")
			UiCorner1.Name = "UiCorner"
			UiCorner1.Parent = DefaultNotif
			local Dropshadow1 = Instance.new("UIStroke")
			Dropshadow1.Name = "Dropshadow"
			Dropshadow1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Dropshadow1.Transparency = 0.8
			Dropshadow1.Thickness = 2
			Dropshadow1.Color = Color3.fromRGB(20, 20, 20)
			Dropshadow1.Parent = DefaultNotif
			local Title1 = Instance.new("TextLabel")
			Title1.Name = "Title"
			Title1.Size = UDim2.new(0, 291, 0, 19)
			Title1.BackgroundTransparency = 1
			Title1.BorderSizePixel = 0
			Title1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title1.FontSize = Enum.FontSize.Size14
			Title1.TextSize = 14
			Title1.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title1.Font = Enum.Font.SourceSans
			Title1.Parent = DefaultNotif
			local Paragraph1 = Instance.new("TextLabel")
			Paragraph1.Name = "Paragraph"
			Paragraph1.Size = UDim2.new(0, 291, 0, 37)
			Paragraph1.BackgroundTransparency = 1
			Paragraph1.Position = UDim2.new(0, 0, 0.3392857, 0)
			Paragraph1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Paragraph1.FontSize = Enum.FontSize.Size14
			Paragraph1.TextSize = 14
			Paragraph1.TextColor3 = Color3.fromRGB(255, 255, 255)
			Paragraph1.Text = ""
			Paragraph1.TextYAlignment = Enum.TextYAlignment.Top
			Paragraph1.TextWrapped = true
			Paragraph1.Font = Enum.Font.SourceSans
			Paragraph1.TextWrap = true
			Paragraph1.TextXAlignment = Enum.TextXAlignment.Left
			Paragraph1.Parent = DefaultNotif
			local UIPadding1 = Instance.new("UIPadding")
			UIPadding1.PaddingLeft = UDim.new(0, 10)
			UIPadding1.PaddingRight = UDim.new(0, 5)
			UIPadding1.Parent = Paragraph1
			if syn then
				syn.protect_gui(ScreenGui)
			end
			ScreenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
			return ScreenGui
		end
		notificationHolder = createBaseNotifications()
		notifAmount = 0
		removedPos = nil
		function library:SelectNotify(args)
			args = args or {}
			args.TweenSpeed = args.TweenSpeed or 1
			args.TweenInSpeed = args.TweenInSpeed or args.TweenSpeed
			args.TweenOutSpeed = args.TweenOutSpeed or args.TweenSpeed
			args.TweenVerticalSpeed = args.TweenVerticalSpeed or args.TweenSpeed
			args.Title = args.Title or "Title"
			args.Text = args.Text or "Text"
			args.TrueText = args.TrueText or "Yes"
			args.FalseText = args.FalseText or "No"
			args.Duration = args.Duration or 5
			args.Callback = args.Callback or function()
				warn("No callback for notif")
			end
		
		---- arg defining ^
			notifAmount = notifAmount + 1
			local track = notifAmount
			local notifNum = notifAmount
			local doesExist = true
			local notif = notificationHolder.ToggleNotif:Clone()
			local removed = false
			notif.Parent = notificationHolder
			notif.Visible = true
			notif.Position = UDim2.new(1, 300, 1, - 5)
			notif.Transparency = 0.05
			notif.True.Text = args.TrueText
			notif.False.Text = args.FalseText
			task.spawn(function()
				task.wait(args.Duration + args.TweenInSpeed)
				doesExist = false
			end)
			notif.True.MouseButton1Click:Connect(function()
				doesExist = false
				removed = true
				notifAmount = notifAmount - 1
				removedPos = notif.Position.Y.Offset
				pcall(args.Callback, true)
			end)
			notif.False.MouseButton1Click:Connect(function()
				doesExist = false
				removed = true
				notifAmount = notifAmount - 1
				removedPos = notif.Position.Y.Offset
				pcall(args.Callback, false)
			end)
			notif.Paragraph.Text = args.Text
			notif.Title.Text = args.Title
			notif:TweenPosition(UDim2.new(1, - 5, 1, - 5), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, args.TweenInSpeed)
			task.spawn(function()
				local originalPos = notif.Position
				while doesExist and task.wait() do
					local pos = notif.Position
					if notifAmount > track then
						notif:TweenPosition(UDim2.new(1, - 5, 1, originalPos.Y.Offset - (65 * (notifAmount - notifNum))), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, args.TweenVerticalSpeed, true)
						track = track + 1
					end
					if notifAmount < track then
						if removedPos > pos.Y.Offset then
							notif:TweenPosition(UDim2.new(1, - 5, 1, originalPos.Y.Offset - (65 * (notifAmount - notifNum))), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, args.TweenVerticalSpeed, true)
						else
							notifNum = notifNum - 1
						end
						track = track - 1
					end
				end
				local pos = notif.Position
				if removed == false then
					notifAmount = notifAmount - 1
					removedPos = notif.Position.Y.Offset
				end
				notif:TweenPosition(UDim2.new(1, 300, 1, pos.Y.Offset), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, args.TweenOutSpeed, true)
				task.wait(args.TweenOutSpeed)
				notif:Destroy()
			end)
		end
		function library:Notify(args)
			args = args or {}
			args.TweenSpeed = args.TweenSpeed or 1
			args.TweenInSpeed = args.TweenInSpeed or args.TweenSpeed
			args.TweenOutSpeed = args.TweenOutSpeed or args.TweenSpeed
			args.TweenVerticalSpeed = args.TweenVerticalSpeed or args.TweenSpeed
			args.Title = args.Title or "Title"
			args.Text = args.Text or "Text"
			args.Duration = args.Duration or 5
		
		---- arg defining ^
			notifAmount = notifAmount + 1
			local track = notifAmount
			local notifNum = notifAmount
			local removed = false
			local doesExist = true
			local notif = notificationHolder.DefaultNotif:Clone()
			notif.Parent = notificationHolder
			notif.Visible = true
			notif.Position = UDim2.new(1, 300, 1, - 5)
			notif.Transparency = 0.05
			notif.InputBegan:Connect(function(InputObject)
				if InputObject.UserInputType == Enum.UserInputType.MouseButton1 then
					task.spawn(function()
						local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
						game:GetService("TweenService"):Create(notif, tweenInfo, {
							Transparency = 0.8
						}):Play()
					end)
					doesExist = false
					removed = true
					notifAmount = notifAmount - 1
					removedPos = notif.Position.Y.Offset
				end
			end)
			task.spawn(function()
				task.wait(args.Duration + args.TweenInSpeed)
				doesExist = false
			end)
			notif.Paragraph.Text = args.Text
			notif.Title.Text = args.Title
			notif:TweenPosition(UDim2.new(1, - 5, 1, - 5), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, args.TweenInSpeed)
			task.spawn(function()
				local originalPos = notif.Position
				while doesExist and task.wait() do
					local pos = notif.Position
					if notifAmount > track then
						notif:TweenPosition(UDim2.new(1, - 5, 1, originalPos.Y.Offset - (65 * (notifAmount - notifNum))), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, args.TweenVerticalSpeed, true)
						track = track + 1
					end
					if notifAmount < track then
						if removedPos > pos.Y.Offset then
							notif:TweenPosition(UDim2.new(1, - 5, 1, originalPos.Y.Offset - (65 * (notifAmount - notifNum))), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, args.TweenVerticalSpeed, true)
						else
							notifNum = notifNum - 1
						end
						track = track - 1
					end
				end
				local pos = notif.Position
				if removed == false then
					notifAmount = notifAmount - 1
					removedPos = notif.Position.Y.Offset
				end
				notif:TweenPosition(UDim2.new(1, 300, 1, pos.Y.Offset), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, args.TweenOutSpeed, true)
				task.wait(args.TweenOutSpeed)
				notif:Destroy()
			end)
		end
		function library:CreateTab(dZ)
			local d_ = dq("TextButton")
			local e0 = dq("UICorner")
			local e1 = dq("Frame")
			local e2 = dq("UICorner")
			local e3 = dq("UIGradient")
			local e4 = dq("ScrollingFrame")
			local e5 = dq("UIPadding")
			local e6 = dq("UIListLayout")
			d_.Name = "TabButton"
			d_.Parent = dK
			d_.BackgroundColor3 = dp(52, 62, 72)
			d_.BorderSizePixel = 0
			d_.Size = dn(0, 94, 0, 28)
			d_.AutoButtonColor = false
			d_.Font = Enum.Font.GothamSemibold
			d_.Text = dZ
			d_.TextColor3 = dp(255, 255, 255)
			d_.TextSize = 14.000
			e0.CornerRadius = dm(0, 6)
			e0.Name = "TabButtonCorner"
			e0.Parent = d_
			e1.Name = "Glow"
			e1.Parent = d_
			e1.BackgroundColor3 = dp(255, 255, 255)
			e1.BorderSizePixel = 0
			e1.Position = dn(0, 0, 0.928571463, 0)
			e1.Size = dn(0, 94, 0, 2)
			e1.Transparency = 1
			e2.CornerRadius = dm(0, 6)
			e2.Name = "GlowCorner"
			e2.Parent = e1
			e3.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0.00, dp(52, 62, 72)),
				ColorSequenceKeypoint.new(0.50, dp(255, 255, 255)),
				ColorSequenceKeypoint.new(1.00, dp(52, 62, 72))
			}
			e3.Name = "GlowGradient"
			e3.Parent = e1
			e4.Name = "Tab"
			e4.Parent = dN
			e4.Active = true
			e4.BackgroundColor3 = dp(255, 255, 255)
			e4.BackgroundTransparency = 1.000
			e4.BorderSizePixel = 0
			e4.Size = dn(0, 324, 0, 238)
			e4.ScrollBarThickness = 0
			e4.Visible = false
			if library.currentTab == nil then
				library.currentTab = {
					e4,
					d_
				}
				e1.Transparency = 0
				e4.Visible = true
			end
			e5.Name = "TabPadding"
			e5.Parent = e4
			e5.PaddingTop = dm(0, 6)
			e6.Name = "TabLayout"
			e6.Parent = e4
			e6.HorizontalAlignment = Enum.HorizontalAlignment.Center
			e6.SortOrder = Enum.SortOrder.LayoutOrder
			e6.Padding = dm(0, 5)
			e6:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
	function()
				e4.CanvasSize = dn(0, 0, 0, e6.AbsoluteContentSize.Y + 12)
			end)
			d_.MouseButton1Click:Connect(
	function()
				dv:SwitchTab({
					e4,
					d_
				})
			end)
			local e7 = {}
			function e7:NewSeparator()
				local e8 = dq("Frame")
				e8.Transparency = 1
				e8.Size = dn(0, 0, 0, 0)
				e8.BorderSizePixel = 0
				e8.Parent = e4
			end
			function e7:NewButton(e9, ea)
				local ea = ea or dr
				local eb = dq("TextButton")
				local ec = dq("UICorner")
				eb.Name = "BtnModule"
				eb.Parent = e4
				eb.BackgroundColor3 = dp(52, 62, 72)
				eb.BorderSizePixel = 0
				eb.Size = dn(0, 312, 0, 28)
				eb.AutoButtonColor = false
				eb.Font = Enum.Font.GothamSemibold
				eb.Text = "  " .. e9
				eb.TextColor3 = dp(255, 255, 255)
				eb.TextSize = 14.000
				eb.TextXAlignment = Enum.TextXAlignment.Left
				ec.CornerRadius = dm(0, 6)
				ec.Name = "BtnModuleCorner"
				ec.Parent = eb
				eb.MouseButton1Click:Connect(ea)
			end
			function e7:NewToggle(e9, du, ed, ea)
				local ea = ea or dr
				local ed = ed or false
				local ee = dq("TextButton")
				local ef = dq("UICorner")
				local eg = dq("Frame")
				local eh = dq("UIGradient")
				local ei = dq("UICorner")
				local ej = dq("Frame")
				local ek = dq("UICorner")
				local el = dq("UIGradient")
				library.flags[du or e9] = {
					State = false,
					Callback = ea,
					SetState = function(self, be)
						local be = be ~= nil and be or not library.flags:GetState(du)
						library.flags[du].State = be
						task.spawn(
	            function()
							library.flags[du].Callback(be)
						end)
						dv:Tween({
							Transparency = be and 1 or 0
						}, eg):Play()
						dv:Tween({
							Transparency = be and 0 or 1
						}, ej):Play()
					end
				}
				ee.Name = "ToggleModule"
				ee.Parent = e4
				ee.BackgroundColor3 = dp(52, 62, 72)
				ee.BorderSizePixel = 0
				ee.Size = dn(0, 312, 0, 28)
				ee.AutoButtonColor = false
				ee.Font = Enum.Font.GothamSemibold
				ee.Text = "  " .. e9
				ee.TextColor3 = dp(255, 255, 255)
				ee.TextSize = 14.000
				ee.TextXAlignment = Enum.TextXAlignment.Left
				ef.CornerRadius = dm(0, 6)
				ef.Name = "ToggleModuleCorner"
				ef.Parent = ee
				eg.Name = "OffStatus"
				eg.Parent = ee
				eg.BackgroundColor3 = dp(255, 255, 255)
				eg.BorderSizePixel = 0
				eg.Position = dn(0.878205061, 0, 0.178571433, 0)
				eg.Size = dn(0, 34, 0, 18)
				eh.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0.00, dp(255, 83, 83)),
					ColorSequenceKeypoint.new(0.15, dp(255, 83, 83)),
					ColorSequenceKeypoint.new(0.62, dp(52, 62, 72)),
					ColorSequenceKeypoint.new(1.00, dp(52, 62, 72))
				}
				eh.Rotation = 300
				eh.Name = "OffGrad"
				eh.Parent = eg
				ei.CornerRadius = dm(0, 4)
				ei.Name = "OffStatusCorner"
				ei.Parent = eg
				ej.Name = "OnStatus"
				ej.Parent = ee
				ej.BackgroundColor3 = dp(255, 255, 255)
				ej.BackgroundTransparency = 1.000
				ej.BorderSizePixel = 0
				ej.Position = dn(0.878205121, 0, 0.178571433, 0)
				ej.Size = dn(0, 34, 0, 18)
				ej.Transparency = 1
				ek.CornerRadius = dm(0, 4)
				ek.Name = "OnStatusCorner"
				ek.Parent = ej
				el.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0.00, dp(52, 62, 72)),
					ColorSequenceKeypoint.new(0.38, dp(48, 57, 67)),
					ColorSequenceKeypoint.new(1.00, dp(53, 255, 134))
				}
				el.Rotation = 300
				el.Name = "OnGrad"
				el.Parent = ej
				ee.MouseButton1Click:Connect(
	    function()
					library.flags[du or e9]:SetState()
				end)
				if ed then
					library.flags[du or e9]:SetState(ed)
				end
			end
			function e7:NewBind(e9, em, ea)
				local em = Enum.KeyCode[em]
				local en = {
					Return = true,
					Space = true,
					Tab = true,
					Backquote = true,
					CapsLock = true,
					Escape = true,
					Unknown = true
				}
				local eo = {
					RightControl = "Right Ctrl",
					LeftControl = "Left Ctrl",
					LeftShift = "Left Shift",
					RightShift = "Right Shift",
					Semicolon = ";",
					Quote = '"',
					LeftBracket = "[",
					RightBracket = "]",
					Equals = "=",
					Minus = "-",
					RightAlt = "Right Alt",
					LeftAlt = "Left Alt"
				}
				local ep = em
				local eq = em and (eo[em.Name] or em.Name) or "None"
				local er = dq("TextButton")
				local es = dq("UICorner")
				local et = dq("TextButton")
				local eu = dq("UICorner")
				er.Name = "KeybindModule"
				er.Parent = e4
				er.BackgroundColor3 = dp(52, 62, 72)
				er.BorderSizePixel = 0
				er.Size = dn(0, 312, 0, 28)
				er.AutoButtonColor = false
				er.Font = Enum.Font.GothamSemibold
				er.Text = "  " .. e9
				er.TextColor3 = dp(255, 255, 255)
				er.TextSize = 14.000
				er.TextXAlignment = Enum.TextXAlignment.Left
				es.CornerRadius = dm(0, 6)
				es.Name = "KeybindModuleCorner"
				es.Parent = er
				et.Name = "KeybindValue"
				et.Parent = er
				et.BackgroundColor3 = dp(58, 69, 80)
				et.BorderSizePixel = 0
				et.Position = dn(0.75, 0, 0.178571433, 0)
				et.Size = dn(0, 74, 0, 18)
				et.AutoButtonColor = false
				et.Font = Enum.Font.Gotham
				et.Text = eq
				et.TextColor3 = dp(255, 255, 255)
				et.TextSize = 12.000
				eu.CornerRadius = dm(0, 4)
				eu.Name = "KeybindValueCorner"
				eu.Parent = et
				b.UserInputService.InputBegan:Connect(
	    function(aJ, aK)
					if aK then
						return
					end
					if aJ.UserInputType ~= Enum.UserInputType.Keyboard then
						return
					end
					if aJ.KeyCode ~= ep then
						return
					end
					ea(ep.Name)
				end)
				et.MouseButton1Click:Connect(
	    function()
					et.Text = "..."
					wait()
					local ev, ew = b.UserInputService.InputEnded:Wait()
					local ex = tostring(ev.KeyCode.Name)
					if ev.UserInputType ~= Enum.UserInputType.Keyboard then
						et.Text = eq
						return
					end
					if en[ex] then
						et.Text = eq
						return
					end
					wait()
					ep = Enum.KeyCode[ex]
					et.Text = eo[ex] or ex
				end)
			end
			function e7:NewSlider(e9, du, em, ey, ez, eA, ea)
				local em = em or ey
				local ea = ea or dr
				local eB = dq("TextButton")
				local eC = dq("UICorner")
				local eD = dq("Frame")
				local eE = dq("UICorner")
				local eF = dq("Frame")
				local eG = dq("UICorner")
				local eH = dq("TextBox")
				local eI = dq("UICorner")
				local eJ = dq("TextButton")
				local eK = dq("TextButton")
				library.flags[du] = {
					State = em,
					SetValue = function(self, be)
						local eL = (ds.X - eD.AbsolutePosition.X) / eD.AbsoluteSize.X
						if be then
							eL = (be - ey) / (ez - ey)
						end
						eL = math.clamp(eL, 0, 1)
						if eA then
							be = be or tonumber(string.format("%.1f", tostring(ey + (ez - ey) * eL)))
						else
							be = be or math.floor(ey + (ez - ey) * eL)
						end
						library.flags[du].State = tonumber(be)
						eH.Text = tostring(be)
						eF.Size = dn(eL, 0, 1, 0)
						ea(tonumber(be))
					end
				}
				eB.Name = "SliderModule"
				eB.Parent = e4
				eB.BackgroundColor3 = dp(52, 62, 72)
				eB.BorderSizePixel = 0
				eB.Position = dn(0, 0, - 0.140425533, 0)
				eB.Size = dn(0, 312, 0, 28)
				eB.AutoButtonColor = false
				eB.Font = Enum.Font.GothamSemibold
				eB.Text = "  " .. e9
				eB.TextColor3 = dp(255, 255, 255)
				eB.TextSize = 14.000
				eB.TextXAlignment = Enum.TextXAlignment.Left
				eC.CornerRadius = dm(0, 6)
				eC.Name = "SliderModuleCorner"
				eC.Parent = eB
				eD.Name = "SliderBar"
				eD.Parent = eB
				eD.BackgroundColor3 = dp(58, 69, 80)
				eD.BorderSizePixel = 0
				eD.Position = dn(0.442307681, 0, 0.392857134, 0)
				eD.Size = dn(0, 108, 0, 6)
				eE.CornerRadius = dm(0, 2)
				eE.Name = "SliderBarCorner"
				eE.Parent = eD
				eF.Name = "SliderPart"
				eF.Parent = eD
				eF.BackgroundColor3 = dp(255, 255, 255)
				eF.BorderSizePixel = 0
				eF.Size = dn(0, 0, 0, 6)
				eG.CornerRadius = dm(0, 2)
				eG.Name = "SliderPartCorner"
				eG.Parent = eF
				eH.Name = "SliderValue"
				eH.Parent = eB
				eH.BackgroundColor3 = dp(58, 69, 80)
				eH.BorderSizePixel = 0
				eH.Position = dn(0.884615362, 0, 0.178571433, 0)
				eH.Size = dn(0, 32, 0, 18)
				eH.Font = Enum.Font.Gotham
				eH.Text = em or ey
				eH.TextColor3 = dp(255, 255, 255)
				eH.TextSize = 12.000
				eI.CornerRadius = dm(0, 4)
				eI.Name = "SliderValueCorner"
				eI.Parent = eH
				eJ.Name = "AddSlider"
				eJ.Parent = eB
				eJ.BackgroundColor3 = dp(255, 255, 255)
				eJ.BackgroundTransparency = 1.000
				eJ.BorderSizePixel = 0
				eJ.Position = dn(0.807692289, 0, 0.178571433, 0)
				eJ.Size = dn(0, 18, 0, 18)
				eJ.Font = Enum.Font.Gotham
				eJ.Text = "+"
				eJ.TextColor3 = dp(255, 255, 255)
				eJ.TextSize = 18.000
				eK.Name = "MinusSlider"
				eK.Parent = eB
				eK.BackgroundColor3 = dp(255, 255, 255)
				eK.BackgroundTransparency = 1.000
				eK.BorderSizePixel = 0
				eK.Position = dn(0.365384609, 0, 0.178571433, 0)
				eK.Size = dn(0, 18, 0, 18)
				eK.Font = Enum.Font.Gotham
				eK.Text = "-"
				eK.TextColor3 = dp(255, 255, 255)
				eK.TextSize = 18.000
				eK.MouseButton1Click:Connect(
	    function()
					local eM = library.flags:GetState(du)
					eM = math.clamp(eM - 1, ey, ez)
					library.flags[du]:SetValue(eM)
				end)
				eJ.MouseButton1Click:Connect(
	    function()
					local eM = library.flags:GetState(du)
					eM = math.clamp(eM + 1, ey, ez)
					library.flags[du]:SetValue(eM)
				end)
				library.flags[du]:SetValue(em)
				local dS, eN, eO = false, false, {
					[""] = true,
					["-"] = true
				}
				eD.InputBegan:Connect(
	    function(dX)
					if dX.UserInputType == Enum.UserInputType.MouseButton1 or dX.UserInputType == Enum.UserInputType.Touch then
						library.flags[du]:SetValue()
						dS = true
					end
				end)
				b.UserInputService.InputEnded:Connect(
	    function(dX)
					if dS and dX.UserInputType == Enum.UserInputType.MouseButton1 or dX.UserInputType == Enum.UserInputType.Touch then
						dS = false
					end
				end)
				b.UserInputService.InputChanged:Connect(
	    function(dX)
					if dS == true then
						library.flags[du]:SetValue()
					end
				end)
				eH.Focused:Connect(
	    function()
					eN = true
				end)
				eH.FocusLost:Connect(
	    function()
					eN = false
					if eH.Text == "" then
						library.flags[du]:SetValue(em)
					end
				end)
				eH:GetPropertyChangedSignal("Text"):Connect(
	    function()
					if not eN then
						return
					end
					eH.Text = eH.Text:gsub("%D+", "")
					local e9 = eH.Text
					if not tonumber(e9) then
						eH.Text = eH.Text:gsub("%D+", "")
					elseif not eO[e9] then
						if tonumber(e9) > ez then
							e9 = ez
							eH.Text = tostring(ez)
						end
						library.flags[du]:SetValue(tonumber(e9))
					end
				end)
			end
			function e7:NewDropdown(e9, du, eP, ea)
				local ea = ea or dr
				library.flags[du] = {
					State = eP[1]
				}
				local eQ = dq("TextButton")
				local eR = dq("UICorner")
				local eS = dq("TextBox")
				local eT = dq("TextButton")
				local eU = dq("TextButton")
				local eV = dq("UICorner")
				local eW = dq("UIListLayout")
				local eX = dq("UIPadding")
				eQ.Name = "DropdownModule"
				eQ.Parent = e4
				eQ.BackgroundColor3 = dp(52, 62, 72)
				eQ.BorderSizePixel = 0
				eQ.Size = dn(0, 312, 0, 28)
				eQ.AutoButtonColor = false
				eQ.Font = Enum.Font.GothamSemibold
				eQ.Text = ""
				eQ.TextColor3 = dp(255, 255, 255)
				eQ.TextSize = 14.000
				eQ.TextXAlignment = Enum.TextXAlignment.Left
				eR.CornerRadius = dm(0, 6)
				eR.Name = "DropdownModuleCorner"
				eR.Parent = eQ
				eS.Name = "DropdownText"
				eS.Parent = eQ
				eS.BackgroundColor3 = dp(255, 255, 255)
				eS.BackgroundTransparency = 1.000
				eS.Position = dn(0.025641026, 0, 0, 0)
				eS.Size = dn(0, 192, 0, 28)
				eS.Font = Enum.Font.GothamSemibold
				eS.PlaceholderText = e9
				eS.PlaceholderColor3 = dp(255, 255, 255)
				eS.TextColor3 = dp(255, 255, 255)
				eS.TextSize = 14.000
				eS.TextXAlignment = Enum.TextXAlignment.Left
				eS.Text = ""
				eT.Name = "OpenDropdown"
				eT.Parent = eQ
				eT.BackgroundColor3 = dp(255, 255, 255)
				eT.BackgroundTransparency = 1.000
				eT.BorderSizePixel = 0
				eT.Position = dn(0.907051265, 0, 0.178571433, 0)
				eT.Size = dn(0, 18, 0, 18)
				eT.Font = Enum.Font.Gotham
				eT.Text = "+"
				eT.TextColor3 = dp(255, 255, 255)
				eT.TextSize = 22.000
				eU.Name = "DropdownBottom"
				eU.Parent = e4
				eU.BackgroundColor3 = dp(52, 62, 72)
				eU.BorderSizePixel = 0
				eU.ClipsDescendants = true
				eU.Position = dn(0.0185185187, 0, 0.206896558, 0)
				eU.Size = dn(0, 312, 0, 0)
				eU.AutoButtonColor = false
				eU.Font = Enum.Font.GothamSemibold
				eU.Text = ""
				eU.TextColor3 = dp(255, 255, 255)
				eU.TextSize = 14.000
				eU.TextXAlignment = Enum.TextXAlignment.Left
				eU.Visible = false
				eV.CornerRadius = dm(0, 6)
				eV.Name = "DropdownBottomCorner"
				eV.Parent = eU
				eW.Name = "DropdownBottomLayout"
				eW.Parent = eU
				eW.HorizontalAlignment = Enum.HorizontalAlignment.Center
				eW.SortOrder = Enum.SortOrder.LayoutOrder
				eW.Padding = dm(0, 6)
				eX.Name = "DropdownBottomPadding"
				eX.Parent = eU
				eX.PaddingTop = dm(0, 6)
				local eY = false
				eW:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
	            function()
					if not eY then
						return
					end
					dv:Tween({
						Size = dn(0, 312, 0, eW.AbsoluteContentSize.Y + 12)
					}, eU, 0.1):Play()
				end)
				local eZ = function()
					local NewValue = eS.Text			
					for _, Element in next, eU:GetChildren() do
						if Element:IsA("TextButton") then
							if string.find(Element.Name:lower(), NewValue:lower()) then
								Element.Visible = true
							else
								Element.Visible = false
							end
						end
					end
				end
				local e_ = function(e9)
					local eP = eU:GetChildren()
					for ai = 1, # eP do
						local bd = eP[ai]
						if e9 == "" then
							eZ()
						else
							if bd:IsA("TextButton") then
								if bd.Name:lower():sub(1, string.len(e9)) == e9:lower() then
									bd.Visible = true
								else
									bd.Visible = false
								end
							end
						end
					end
				end
				local f0 = function()
					eY = not eY
					if eY then
						eU.Visible = true
						eZ()
					else
						task.spawn(
	                    function()
							task.wait(0.35)
							eU.Visible = false
						end)
					end
					eT.Text = eY and "-" or "+"
					dv:Tween({
						Size = dn(0, 312, 0, eY and eW.AbsoluteContentSize.Y + 12 or 0)
					}, eU, 0.35):Play()
				end
				eT.MouseButton1Click:Connect(f0)
				eS.Focused:Connect(
	            function()
					if eY then
						return
					end
					f0()
				end)
				eS:GetPropertyChangedSignal("Text"):Connect(function() -- 改版
					local NewValue = eS.Text			
					for _, Element in next, eU:GetChildren() do
						if Element:IsA("TextButton") then
							if string.find(Element.Name:lower(), NewValue:lower()) then
								Element.Visible = true
							else
								Element.Visible = false
							end
						end
					end
				end)
				library.flags[du].SetOptions = function(self, eP)
					library.flags[du]:ClearOptions()
					for ai = 1, # eP do
						library.flags[du]:AddOption(eP[ai])
					end
				end
				library.flags[du].ClearOptions = function(self)
					local f1 = eU:GetChildren()
					for ai = 1, # f1 do
						local dx = f1[ai]
						if dx:IsA("TextButton") then
							dx:Destroy()
						end
					end
				end
				library.flags[du].AddOption = function(self, bd)
					local f2 = dq("TextButton")
					local f3 = dq("UICorner")
					f2.Name = bd
					f2.Parent = eU
					f2.BackgroundColor3 = dp(58, 69, 80)
					f2.BorderSizePixel = 0
					f2.Size = dn(0, 300, 0, 28)
					f2.AutoButtonColor = false
					f2.Font = Enum.Font.GothamSemibold
					f2.Text = bd
					f2.TextColor3 = dp(255, 255, 255)
					f2.TextSize = 14.000
					f3.CornerRadius = dm(0, 6)
					f3.Name = "OptionCorner"
					f3.Parent = f2
					f2.MouseButton1Click:Connect(
	                function()
						eS.PlaceholderText = bd
						eS.Text = ""
						library.flags[du].State = bd
						task.spawn(f0)
						ea(bd)
					end)
				end
				library.flags[du].RemoveOption = function(self, bd)
					eU:WaitForChild(bd):Destroy()
				end
				library.flags[du]:SetOptions(eP)
			end
			function e7:NewBox(e9, du, ea)
				local ea = ea or dr
				local eB = dq("TextButton")
				local eC = dq("UICorner")
				local eH = dq("TextBox")
				local eI = dq("UICorner")
				eB.Name = "SliderModule"
				eB.Parent = e4
				eB.BackgroundColor3 = dp(52, 62, 72)
				eB.BorderSizePixel = 0
				eB.Position = dn(0, 0, - 0.140425533, 0)
				eB.Size = dn(0, 312, 0, 28)
				eB.AutoButtonColor = false
				eB.Font = Enum.Font.GothamSemibold
				eB.Text = "  " .. e9
				eB.TextColor3 = dp(255, 255, 255)
				eB.TextSize = 14.000
				eB.TextXAlignment = Enum.TextXAlignment.Left
				eC.CornerRadius = dm(0, 6)
				eC.Name = "BoxButtonCorner"
				eC.Parent = eB
				eH.Name = "Box"
				eH.Parent = eB
				eH.BackgroundColor3 = dp(58, 69, 80)
				eH.BorderSizePixel = 0
				eH.Position = dn(0.774615362, 0, 0.178571433, 0)
				eH.Size = dn(0, 65, 0, 18)
				eH.Font = Enum.Font.Gotham
				eH.Text = ""
				eH.PlaceholderText = du
				eH.TextColor3 = dp(255, 255, 255)
				eH.TextSize = 12.000
				eI.CornerRadius = dm(0, 4)
				eI.Name = "BoxCorner"
				eI.Parent = eH
				eH.FocusLost:Connect(
	            function(EnterPressed)
					if not EnterPressed then
						return
					else
						ea(eH.Text)
						if getgenv().ClearTextBoxText then
							wait(0.10)
							eH.Text = ""
						end
					end
				end)
			end
			return e7
		end
		setmetatable(getgenv().library, {
			__newindex = function(self, i, v)
				if i == 'Name' then
					dG.Text = "   " .. v
					return true
				end
				rawset(self, i, v)
			end
		})
	

        --<<  游戏功能部分 >>
		local players, gs = game:GetService("Players"), function(service)
			return game:GetService(service);
		end
		local player, repstorage, wkspc, runservice = players.LocalPlayer, gs("ReplicatedStorage"), gs("Workspace");
		local Mouse = player:GetMouse();
		local function getBase(owner)
			for _, v in next, wkspc.Plots:GetChildren() do
				if v:FindFirstChild("Owner") then
					if v.Owner.Value == owner then
						return v;
					end
				end
			end
			return nil
		end
		local function getSaw(player) --> 获取加工机功能
			local maxFurnace;
			local t = {}
			for i, v in next, getBase(player).Objects:GetChildren() do
				if v.Name:find("Furnace") then
					table.insert(t, v);
				end
			end
			maxFurnace = t[1];
			for i, v in next, t do
				if v.Hitbox.Size.z > maxFurnace.Hitbox.Size.z then
					maxFurnace = v;
				end
			end
			return maxFurnace;
		end
		local function grabObj(part) --> 拖拽矿石功能
			if part:IsA("Part") then
				repstorage.Events.Grab:InvokeServer(part, {})
			end
		end
		local function unGrab(part) --> 取消拖拽矿石功能
			if part:IsA("Part") then
				repstorage.Events.Ungrab:FireServer(part, {})
			end
		end
		function dragModel(model, cframe)  --> 移动游戏模型功能
			if not model.PrimaryPart then
				model.PrimaryPart = model:FindFirstChildOfClass("Part");
			end
			model.SetPrimaryPartCFrame(model, cframe);
		end
		local function sitCar()  --> 判断人物是否坐在车上的功能
			local character = player.Character or player.CharacterAdded:Wait();
			local car;
			local humanoid = character:WaitForChild("Humanoid", 10);
			if humanoid.SeatPart then
				car = humanoid.SeatPart.Parent;
			end
			return car
		end
		local function teleport(cframe)  --> 人物(汽车)传送功能
			if sitCar() then
				dragModel(sitCar(), cframe);
			else
				local character = player.Character or player.CharacterAdded:Wait();
				dragModel(character, cframe);
			end
		end

--Ores
		local function getOres(owner)  --> 获取矿石功能
			local oreList = {};
			for _, v in next, wkspc.Grabable:GetChildren() do
				if v.Name:find("MaterialPart") then
					if v:FindFirstChild("Owner") and v.Owner.Value == owner then  --> 判断
						if not table.find(oreList, v) then
							table.insert(oreList, v);
						end
					end
				end
			end
			return oreList;
		end
		local function dragOres(ore, cframe)  --> 传送矿石功能
			if ((ore.Part.Position - player.Character.HumanoidRootPart.Position).Magnitude >= 20) then
				teleport(ore.Part.CFrame + Vector3.new(0, 10, 0));
				task.wait();
			end
			grabObj(ore.Part); --> 抓住矿石
			for i = 1, 3 do
				dragModel(ore, cframe); --> 传送矿石到家
				task.wait()
			end
			unGrab(ore.Part); --> 取消抓取
		end
		
		local function notify(title, text, duration) --> 游戏通知功能
			return library:Notify({
					Title = tostring(title),
					Text = tostring(text),
					Duration = tonumber(duration) or 4;
				})
		end
		
		local Page1 = library:CreateTab("其他菜单"); -->双引号里面的内容可改
		local Page2 = library:CreateTab("传送菜单"); -->双引号里面的内容可改
		local Page3 = library:CreateTab("矿石菜单"); -->双引号里面的内容可改
		local Page4 = library:CreateTab("工具菜单"); -->双引号里面的内容可改
		
		Page1:NewButton("飞行脚本", function()
			loadstring(game:HttpGet("https://pastebin.com/raw/bwqAKTep"))();  --> 加载飞行脚本
		end)
		
		Page1:NewSeparator() --> 线条隔开
		local CarSpeed = 50;  --> 汽车飞行初始速度
		--> 一下只要有中文的, 在双(单)引号里面的都能改
		Page1:NewSlider("汽车飞行速度", "carFlySpeed", CarSpeed, 1, 200, false, function(Value)
			CarSpeed = Value;
		end)
		
		Page1:NewToggle("汽车飞行脚本", "cfly", false, function(v)
			if v == true then
				local HumanoidRP = player.Character.HumanoidRootPart
				local ScreenGui = Instance.new("ScreenGui")
				local W = Instance.new("TextButton")
				local S = Instance.new("TextButton")
				local A = Instance.new("TextButton")
				local D = Instance.new("TextButton")
				local Fly = Instance.new("TextButton")
				local unfly = Instance.new("TextButton")
				local StopFly = Instance.new("TextButton")
				ScreenGui.Parent = game.CoreGui
				ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				ScreenGui.Name = "汽车飞行脚本"
				unfly.Name = "unfly"
				unfly.Parent = ScreenGui
				unfly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				unfly.Transparency = 0.5
				unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
				unfly.Size = UDim2.new(0, 72, 0, 50)
				unfly.Font = Enum.Font.SourceSans
				unfly.Text = "停止飞行"
				unfly.TextColor3 = Color3.fromRGB(255, 255, 255)
				unfly.TextScaled = true
				unfly.TextSize = 14.000
				unfly.TextWrapped = unfly.MouseButton1Down:Connect(function()
					HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
					HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
				end)
				StopFly.Name = "Stop Fly"
				StopFly.Parent = ScreenGui
				StopFly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				StopFly.Transparency = 0.5
				StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
				StopFly.Size = UDim2.new(0, 71, 0, 50)
				StopFly.Font = Enum.Font.SourceSans
				StopFly.Text = "暂停飞行"
				StopFly.TextColor3 = Color3.fromRGB(255, 255, 255)
				StopFly.TextScaled = true
				StopFly.TextSize = 14.000
				StopFly.TextWrapped = true
				StopFly.MouseButton1Down:Connect(function()
					HumanoidRP.Anchored = true
				end)
				Fly.Name = "Fly"
				Fly.Parent = ScreenGui
				Fly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Fly.Transparency = 0.5
				Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
				Fly.Size = UDim2.new(0, 66, 0, 50)
				Fly.Font = Enum.Font.SourceSans
				Fly.Text = "飞行"
				Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
				Fly.TextScaled = true
				Fly.TextSize = 14.000
				Fly.TextWrapped = true
				Fly.MouseButton1Down:Connect(function()
					local BV = Instance.new("BodyVelocity", HumanoidRP)
					local BG = Instance.new("BodyGyro", HumanoidRP)
					BG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
					BG.D = 5000
					BG.P = 50000
					BG.CFrame = wkspc.CurrentCamera.CFrame
					BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				end)
				W.Name = "W"
				W.Parent = ScreenGui
				W.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				W.Transparency = 0.5
				W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
				W.Size = UDim2.new(0, 58, 0, 50)
				W.Font = Enum.Font.SourceSans
				W.Text = "↑"
				W.TextColor3 = Color3.fromRGB(255, 255, 255)
				W.TextScaled = true
				W.TextSize = 5.000
				W.TextWrapped = true
				W.MouseButton1Down:Connect(function()
					HumanoidRP.Anchored = false
					HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
					HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
					wait(.1)
					local BV = Instance.new("BodyVelocity", HumanoidRP)
					local BG = Instance.new("BodyGyro", HumanoidRP)
					BG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
					BG.D = 5000
					BG.P = 50000
					BG.CFrame = wkspc.CurrentCamera.CFrame
					BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					BV.Velocity = wkspc.CurrentCamera.CFrame.LookVector * CarSpeed
				end)
				S.Name = "S"
				S.Parent = ScreenGui
				S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S.Transparency = 0.5
				S.Position = UDim2.new(0.161668837, 0, 0.755294104, 0)
				S.Size = UDim2.new(0, 58, 0, 50)
				S.Font = Enum.Font.SourceSans
				S.Text = "↓"
				S.TextColor3 = Color3.fromRGB(255, 255, 255)
				S.TextScaled = true
				S.TextSize = 14.000
				S.TextWrapped = true
				S.MouseButton1Down:Connect(function()
					HumanoidRP.Anchored = false
					HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
					HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
					wait(.1)
					local BV = Instance.new("BodyVelocity", HumanoidRP)
					local BG = Instance.new("BodyGyro", HumanoidRP)
					BG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
					BG.D = 5000
					BG.P = 50000
					BG.CFrame = wkspc.CurrentCamera.CFrame
					BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					BV.Velocity = wkspc.CurrentCamera.CFrame.LookVector * - CarSpeed
				end)
			else
				if game.CoreGui:FindFirstChild("汽车飞行脚本") then
					game.CoreGui["汽车飞行脚本"]:Destroy();
				end
			end
		end)
		run = gs("Lighting").Changed:Connect(function()
			if NoFog then
				gs("Lighting").FogEnd = math.huge
			end
		end)
		Page1:NewToggle("删除雾", "nofog", false, function(v)
			NoFog = v;
		end)
		Page1:NewToggle("全亮", "full", false, function(v)
			local full;
			if v == true then
				full = gs("Lighting").Changed:connect(function()
					gs("Lighting").TimeOfDay = "14:00:00"
					gs("Lighting").FogEnd = 99999999
					gs("Lighting").Brightness = 7
				end)
			else
				if full then
					full:Disconnect();
					full = nil;
				end
			end
		end)
		Page1:NewButton("寻找紫树", function()
			local tree;
			for _, v in pairs(wkspc:GetDescendants()) do
				if v.Name == "Interact" and v.Parent.Name == "Leaf" then
					tree = v;
					break;
				end
			end
			if not tree then
				return notify("走马观花", "没有找到紫树!");
			end
			teleport(tree:FindFirstChildOfClass("Part").CFrame);
		end)
		Page1:NewButton("修复卡视角问题", function()
			local v2 = wkspc.CurrentCamera;
			v2.CameraType = Enum.CameraType["Watch"];
			task.wait();
			v2.CameraType = Enum.CameraType["Custom"];
		end)
		Page1:NewButton("关闭脚本", function()
			if b.CoreGui:FindFirstChild(_CONFIG.uiName) then
				if run then
					run:Disconnect()
					run = nil;
				end
				if full then
					full:Disconnect()
					full = nil
				end
				b.CoreGui[_CONFIG.uiName]:Destroy()
			end
		end)
		Page2:NewButton("传送到基地", function()
			local base = getBase(player);
			teleport(base.Base.CFrame + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到矿石商店", function()
			local cf = CFrame.new(- 426.023804, 6.49999571, - 72.7279129);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到商店 [UCS]", function()
			local cf = CFrame.new(- 990.3114013671875, 4.250003814697266, - 621.46630859375);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到镐子商店", function()
			local cf = CFrame.new(729.5538330078125, 2.25, 63.709720611572266);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到土地商店", function()
			local cf = CFrame.new(- 1008.6192626953125, 4.250002384185791, - 724.2153930664062);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到水电商店", function()
			local cf = CFrame.new(- 450.24755859375, 5.749998569488525, 21.00583267211914);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到汽车经销店", function()
			local cf = CFrame.new(711.9130249023438, 8.250000953674316, - 962.6895751953125);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到打折商店", function()
			local cf = CFrame.new(- 3199.43164, 17.7500019, 605.6922);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到逻辑店", function()
			local cf = CFrame.new(- 109.674004, 239.999969, 1127.81946);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到家具店", function()
			local cf = CFrame.new(- 1018.10181, 4.25000238, 690.901855);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到云矿", function()
			local cf = CFrame.new(503.980682, 431.749725, 1261.18567);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到冰矿石", function()
			local cf = CFrame.new(1993.668701171875, - 82.11865997314453, - 2280.691162109375);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到金矿", function()
			local cf = CFrame.new(676.4124755859375, 18.304752349853516, - 1503.1123046875);
			teleport(cf + Vector3.new(0, 10, 0));
		end)
		Page2:NewSeparator();
		getgenv().PLAYERS = {};
		for _, v in next, players:GetPlayers() do
			if not table.find(PLAYERS, v.Name) then
				table.insert(PLAYERS, v.Name);
			end
		end
		players.PlayerAdded:Connect(function(v)
			if not table.find(PLAYERS, v.Name) then
				table.insert(PLAYERS, v.Name);
				library.flags["玩家列表"]:AddOption(tostring(v.Name));
			end
		end)
		players.PlayerRemoving:Connect(function(v)
			if table.find(PLAYERS, v.Name) then
				table.remove(PLAYERS, table.find(PLAYERS, v.Name))
				library.flags["玩家列表"]:RemoveOption(tostring(v.Name))
			end
		end)
		Page2:NewDropdown("选择玩家", "玩家列表", PLAYERS, function(plr)
			PLAYERS = plr;
		end)
		Page2:NewButton("传送到玩家身边", function()
			if type(PLAYERS) == "table" then
				return notify("错误", "没有选择玩家!");
			end
			teleport(players[PLAYERS].Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 0));
		end)
		Page2:NewButton("传送到玩家基地", function()
			if type(PLAYERS) == "table" then
				return notify("错误", "没有选择玩家!");
			end
			local base = getBase(players[PLAYERS]);
			if not base then
				return notify("错误", "这个玩家没有基地!");
			end
			teleport(base.Base.CFrame + Vector3.new(0, 10, 0));
		end)
		
		Page3:NewButton("传送全部矿石到身边", function()
			if sitCar() then
				return notify("错误", "请不要坐在车上!");
			end
			local pos = player.Character.HumanoidRootPart.CFrame;
			local base = getBase(player);
			for _, v in next, getOres(player) do
				dragOres(v, pos); --> 传送矿石到家
				task.wait();
			end
			teleport(pos + Vector3.new(0, 10, 0)); --> 传送到旧位置
		end)
		Page3:NewButton("传送附近矿石到家", function()
			if sitCar() then
				return notify("错误", "请不要坐在车上!");
			end
			local base = getBase(player);
			for _, v in next, getOres(player) do
				if ((v.PrimaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 50) then
					dragOres(v, base.Base.CFrame + Vector3.new(0, 10, 0));
					task.wait();
				end
			end
		end)
		
		Page3:NewSeparator() --> 线条隔开
		Page3:NewButton("出售全部矿石", function()
			if sitCar() then
				return notify("错误", "请不要坐在车上!");
			end
			local cf = CFrame.new(- 421.5615234375, 6.499995708465576, - 65.09494018554688);
			local oldPos = player.Character.HumanoidRootPart.CFrame;
			for _, v in next, getOres(player) do
				dragOres(v, cf + Vector3.new(0, 5, 0));
				task.wait();
			end
			wkspc.Map.Sellary.Keeper.IPart.Interact:FireServer();
			teleport(oldPos); --> 传送到旧位置
		end)
		Page3:NewButton("出售附近矿石", function()
			if sitCar() then
				return notify("错误", "请不要坐在车上!");
			end
			local cf = CFrame.new(- 421.5615234375, 6.499995708465576, - 65.09494018554688);
			for _, v in next, getOres(player) do
				if ((v.PrimaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 50) then
					dragOres(v, cf + Vector3.new(0, 5, 0));
					task.wait();
				end
			end
		end)
				

		local connectSaw;
	
		local function test()
			local selected;
			notify("走马观花", "请选择加工机");
			connectSaw = Mouse.Button1Up:connect(function()
			    local Saw = Mouse.Target.Parent;
			    if Saw and Saw.Parent and Saw.Parent.Hitbox then
				    Saw = Saw.Parent;
				    selected = Saw;				    
				end
			end)
			repeat task.wait(.1)
			until selected ~= nil;
		    notify("走马观花", "已选择加工机");
		    local selection = Instance.new("SelectionBox")
			selection.Parent = selected.Hitbox;
			selection.Adornee = selection.Parent
						
		    if connectSaw then
		    	connectSaw:Disconnect();
		    	connectSaw=nil;
		    end
		    for i,v in next, selected:GetDescendants() do
		    	if v.Name == "SelectionBox" then
		    		v:Destroy();
		    		break;
		    	end
		    end
		    return selected;
	    end
	    
		local customize = nil;		
		Page3:NewSeparator() --> 线条隔开
		Page3:NewButton("点击选择加工机", function()
		    customize = test();		   
		end)
		
		Page3:NewButton("加工全部矿石", function()
			if sitCar() then
				return notify("错误", "请不要坐在车上!");
			end
			local saw = customize ~= nil and customize or getSaw(player);
			if not saw then
			    print("没有加工机")
				return
			end
			local sawPart = saw.Refine.Part.CFrame;
			local oldPos = player.Character.HumanoidRootPart.CFrame;
			for _, v in next, getOres(player) do
				local value = v.Configuration.Data.MatInd.Value;
				if value:find("Raw") then --> 判断矿石是否已经加工
					dragOres(v, sawPart);
					task.wait()
					local isJiaGong = false;
					local connection = wkspc.Grabable.ChildAdded:Connect(function(child)
						child:WaitForChild("Owner", 10);
						if child.Owner.Value == player then
							isJiaGong = true;
							connection:Disconnect();
							connection = nil
						end
					end)
					repeat
						task.wait()
					until isJiaGong == true or task.wait(3)
					if connection then
						connection:Disconnect()
						connection = nil;
					end
				end
			end
			teleport(oldPos);
		end)
		Page3:NewButton("加工附近矿石", function()
			if sitCar() then
				return notify("错误", "请不要坐在车上!");
			end
			local saw = customize ~= nil and customize or getSaw(player);
			if not saw then
				return
			end
			local sawPart = saw.Refine.Part.CFrame;
			for _, v in next, getOres(player) do
				if ((v.PrimaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 50) then
					local value = v.Configuration.Data.MatInd.Value;
					if value:find("Raw") then
						dragOres(v, sawPart);
						task.wait()
						local isJiaGong = false;
						local connection = wkspc.Grabable.ChildAdded:Connect(function(child)
							child:WaitForChild("Owner", 10);
							if child.Owner.Value == player then
								isJiaGong = true;
								connection:Disconnect();
								connection = nil
							end
						end)
						repeat
							task.wait()
						until isJiaGong == true or task.wait(3)
						if connection then
							connection:Disconnect()
							connection = nil;
						end
					end
				end
			end
		end)
		
		Page3:NewButton("点击加工矿石 [工具]", function()
			if player.Backpack:FindFirstChild("点击加工矿石") or player.Character:FindFirstChild("点击加工矿石") then
				player.Backpack["点击加工矿石"]:Destroy()
			end
			local clickToDragMod = Instance.new("Tool", player.Backpack)
			clickToDragMod.Name = "点击加工矿石"
			clickToDragMod.RequiresHandle = false
			clickToDragMod.Activated:Connect(function()			
				if sitCar() then
					return notify("错误", "请不要坐在车上!");
				end
			    local saw = customize ~= nil and customize or getSaw(player);
		        if not saw then
		            print("没有加工机")
			        return
	     	    end
				local ore = Mouse.Target.Parent;
				local sawPart = saw.Refine.Part.CFrame;
				if ore.Parent == wkspc.Grabable then
					if ore:FindFirstChild("Owner") and ore.Owner.Value == player then
						dragOres(ore, sawPart);
						task.wait();
					end
				end
			end)
		end)
		
		Page3:NewSeparator() --> 线条隔开
		Page3:NewButton("设置位置", function()
			if wkspc:FindFirstChild("IIIII") then
				wkspc.IIIII:Destroy()
			end
			p = Instance.new("Part", wkspc)
			p.Name = "IIIII"
			p.Transparency = 1
			p.Anchored = true
			p.CFrame = player.Character.HumanoidRootPart.CFrame
			p.CanCollide = false
			p.Size = player.Character.HumanoidRootPart.Size
			local posBox = Instance.new("SelectionBox", p)
			posBox.Name = "posBox"
			posBox.Color3 = Color3.new(200, 200, 200)
			posBox.Adornee = posBox.Parent
		end)
		Page3:NewButton("删除位置", function()
			if wkspc:FindFirstChild("IIIII") then
				wkspc.IIIII:Destroy()
			end
		end)
		Page3:NewButton("传送全部矿石", function()
			if sitCar() then
				return notify("错误", "请不要坐在车上!");
			end
			local cf;
			if wkspc:FindFirstChild("IIIII") then
				cf = wkspc.IIIII.CFrame;
			end
			if not cf then
				return notify("错误", "请不要坐在车上!");
			end
			local pos = player.Character.HumanoidRootPart.CFrame;
			for _, v in next, getOres(player) do
				dragOres(v, cf); --> 传送矿石到家
				task.wait();
			end
			teleport(pos + Vector3.new(0, 5, 0)); --> 传送到旧位置
		end)
		Page3:NewButton("传送附近矿石", function()
			if sitCar() then
				return notify("错误", "请不要坐在车上!");
			end
			local cf;
			if wkspc:FindFirstChild("IIIII") then
				cf = wkspc.IIIII.CFrame;
			end
			if not cf then
				return notify("错误", "没有设置位置!");
			end
			for _, v in next, getOres(player) do
				if ((v.PrimaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 50) then
					dragOres(v, cf);
					task.wait();
				end
			end
		end)
		Page3:NewButton("点击传送矿石 [工具]", function()
			if player.Backpack:FindFirstChild("点击传送矿石") or player.Character:FindFirstChild("点击传送矿石") then
				player.Backpack["点击传送矿石"]:Destroy()
			end
			local clickToDragOre = Instance.new("Tool", player.Backpack)
			clickToDragOre.Name = "点击传送矿石"
			clickToDragOre.RequiresHandle = false
			clickToDragOre.Activated:Connect(function()
				local cf;
				if wkspc:FindFirstChild("IIIII") then
					cf = wkspc.IIIII.CFrame;
				end
				if not cf then
					return notify("错误", "没有设置位置!");
				end
				if sitCar() then
					return notify("错误", "请不要坐在车上!");
				end
				local ore = Mouse.Target.Parent;
				if ore.Parent == wkspc.Grabable then
					if ore:FindFirstChild("Owner") and ore.Owner.Value == player then
						dragOres(ore, cf);
						task.wait();
					end
				end
			end)
		end)
		
        local parts = {}
        local part_parents = {}
        local part_cframes = {}
     
     
		Page4:NewButton("两个小工具", function()
			local delete = Instance.new("Tool", player.Backpack);
			local undo = Instance.new("Tool", player.Backpack);
			
		    delete.Name = "点击删除";
            delete.RequiresHandle = false;
            delete.CanBeDropped = false;
           
            delete.Activated:Connect(function()
                notify("红脚本", "你删除了 "..Mouse.Target.Name);
         
                table.insert(parts, Mouse.Target);
                table.insert(part_parents, Mouse.Target.Parent);
                table.insert(part_cframes, Mouse.Target.CFrame);
                Mouse.Target.Parent = nil;
            end)
           
            undo.Name = "点击撤销";
            undo.RequiresHandle = false;
            undo.CanBeDropped = false;
           
            undo.Activated:Connect(function()
                notify("红脚本", "撤销 "..parts[#parts].Name .. " 的删除");
        
                parts[#parts].Parent = part_parents[#part_parents]
                parts[#parts].CFrame = part_cframes[#part_cframes]
		        table.remove(part_cframes, #part_cframes)
		        table.remove(parts, #parts)
		        table.remove(part_parents, #part_parents)
            end)
		end)
	else
		local plr = game:GetService("Players").LocalPlayer;
		plr:Kick("没有白名单, 请进群领白名单: \n870091998");
		while true do
		end
	end

end)("走马观花 X")  --> 脚本名字