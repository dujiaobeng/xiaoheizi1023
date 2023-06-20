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

local creds = window:Tab("脚本")
local bin = creds:section("付费",true)
    credits:Button("白脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
_G["白脚本作者修狗"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"
loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))() 
    end)
    credits:Button("走马观花x",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
getgenv().zhanghuihuihui="走马观花作者 紅";
loadstring(game:HttpGet("https://github.com/jsGay8s/RBX_DEV/raw/main/"..game.PlaceId..".lua"))("走马观花X-2023-04-24更新!")
    end)

local credits = creds:section("免费",true)
    credits:Button("飞行",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
loadstring([[loadstring(game:HttpGet(('https://gist.githubusercontent.com/meozoneYT/bf037dff9f0a70017304ddd67fdcd370/raw/e14e74f425b060df523343cf30b787074eb3c5d2/arceus%2520x%2520fly%25202%2520obflucator'),true))()]])()
    end)
