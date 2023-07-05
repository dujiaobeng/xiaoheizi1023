local library = loadstring(game:HttpGet"https://pastebin.com/raw/tBpc3aSR")()
local window = library:new("脚本中心<红>")

local creds = window:Tab("主要",'6035145364')

local bin = creds:section("信息",true)

    bin:Label("你的用户名:"..game.Players.LocalPlayer.Character.Humanoid.Name)
    bin:Label("你的注入器:"..identifyexecutor())

local credits = creds:section("关闭脚本",true)

    credits:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
local creds = window:Tab("脚本')

local credits = creds:section("免费脚本",true)
    credits:Button("飞行",function()
    loadstring([[loadstring(game:HttpGet(('https://gist.githubusercontent.com/meozoneYT/bf037dff9f0a70017304ddd67fdcd370/raw/e14e74f425b060df523343cf30b787074eb3c5d2/arceus%2520x%2520fly%25202%2520obflucator'),true))()]])()
    end