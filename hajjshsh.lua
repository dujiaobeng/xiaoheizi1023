local library = loadstring(game:HttpGet"https://pastebin.com/raw/tBpc3aSR")()
local window = library:new("红脚本")

local creds = window:Tab("主要")

local bin = creds:section("信息",true)

    bin:Label("你的用户名:"..game.Players.LocalPlayer.Name)
    bin:Label("你的注入器:"..identifyexecutor())

local credits = creds:section("UI设置",true)

    credits:Toggle("彩虹UI", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    credits:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
local creds = window:Tab("脚本")
local credits = creds:section("付费",true)
    credits:Button("白脚本",function()
_G.baiscript='作者ababa和修购，以及我的老婆人'
loadstring("\112\114\105\110\116\40\34\32\89\79\85\82\32\83\67\82\73\80\84\32\72\69\82\69\33\33\32\34\41\10")()
    end)
    credits:Button("走马观花x",function()
getgenv().zhanghuihuihui="走马观花作者 紅";
loadstring(game:HttpGet("https://github.com/jsGay8s/RBX_DEV/raw/main/"..game.PlaceId..".lua"))("走马观花X-2023-04-24更新!")
    end)

local credits = creds:section("免费",true)
    credits:Button("飞行",function()
loadstring([[loadstring(game:HttpGet(('https://gist.githubusercontent.com/meozoneYT/bf037dff9f0a70017304ddd67fdcd370/raw/e14e74f425b060df523343cf30b787074eb3c5d2/arceus%2520x%2520fly%25202%2520obflucator'),true))()]])()
    end)
