local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "确认身份",
    Text = "正在验证....",
    Duration = 5
})
local a=tostring(game.Players.LocalPlayer.Character);
if a=="pro_xx723"then
_G.asdzxc=true
elseif a=="pro_xx723"then
_G.asdzxc=true
elseif a=="lipuace"then
_G.asdzxc=true
end
if _G.asdzxc==true then
    local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "验证结果",
    Text = a.."验证身份成功",
    Duration = 5
})
  wait(3)
local OrionLib = loadstring(game:HttpGet('https://pastebin.com/raw/xLRUSiKx'))()
local Window = OrionLib:MakeWindow({Name = "红脚本", HidePremium = false, SaveConfig = true,IntroText = "红脚本（测试中）", ConfigFolder = "pro"})
local Tab =Window:MakeTab({
	Name = "简介",	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "复制QQ群号",	Callback = function()
     setclipboard("887524676")
  	end
})
local Tab = Window:MakeTab({
	Name = "通用",	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "无限跳",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end
})
Tab:AddButton({
    Name = "点击传送",
    Callback = function()
        Tool = Instance.new("Tool")
        Tool.Name = "点击传送"
        Tool.RequiresHandle = false
        Tool.Parent = game.Players.LocalPlayer.Backpack
        Tool.Activated:Connect(function()
            Mouse = game.Players.LocalPlayer:GetMouse().Hit+Vector3.new(0, 2.5, 0)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.X, Mouse.Y, Mouse.Z)
        end)
    end
})
Tab:AddButton({
    Name = "跟踪玩家",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
    end
})
Tab:AddButton({
	Name = "防止掉线（反挂机）",	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})
Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
Tab:AddButton({
	Name = "飞行V3（隐藏）",	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()
  	end    
})
    else --验证失败执行↓
setclipboard("887524676")
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "验证失败",
    Text = "你并没有白名单已复制链接加入群获得白名单",
    Duration = 10
})
end