---@diagnostic disable-next-line: undefined-global
local hernnyhub = {
    SchemeColor = Color3.fromRGB(69, 69, 69),
    Background = Color3.fromRGB(10, 10, 10),
    Header = Color3.fromRGB(18, 18, 18),
    TextColor = Color3.fromRGB(0, 204, 255),
    ElementColor = Color3.fromRGB(48, 48, 48)
}
game.StarterGui:SetCore("SendNotification",
    { Title = "BABFT HUB", Text = "Wait few secound", Duration = 3, })
if game.PlaceId == 537413528 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    game.StarterGui:SetCore("SendNotification",
        { Title = "BABFT HUB", Text = "now enjoy our Hub", Duration = 5, })
    local Window = Library.CreateLib("BABFT", hernnyhub)
    --tabs
    local main = Window:NewTab("Main")
    local player = Window:NewTab("Player")
    local config = Window:NewTab("Config")
    local credit = Window:NewTab("Credit")
    --section
    local mainSection = main:NewSection("BAFT AUTO FARM HUB")
    mainSection:NewButton("NooVster script gui", "have auto farm", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/NooVster/v1.1/main/Source'))()
    end)
    mainSection:NewButton("Anti-AFK", "just do it", function()
        wait(0.5)
        local ba = Instance.new("ScreenGui")
        local ca = Instance.new("TextLabel")
        local da = Instance.new("Frame")
        local _b = Instance.new("TextLabel")
        local ab = Instance.new("TextLabel")
        ba.Parent = game.CoreGui
        ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
        ca.Parent = ba;
        ca.Active = true
        ca.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        ca.Draggable = true
        ca.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
        ca.Size = UDim2.new(0, 370, 0, 52)
        ca.Font = Enum.Font.SourceSansSemibold;
        ca.Text = "Anti Afk"
        ca.TextColor3 = Color3.new(0, 1, 1)
        ca.TextSize = 22;
        da.Parent = ca
        da.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
        da.Position = UDim2.new(0, 0, 1.0192306, 0)
        da.Size = UDim2.new(0, 370, 0, 107)
        _b.Parent = da
        _b.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        _b.Position = UDim2.new(0, 0, 0.800455689, 0)
        _b.Size = UDim2.new(0, 370, 0, 21)
        _b.Font = Enum.Font.Arial;
        _b.Text = "Made by luca#5432"
        _b.TextColor3 = Color3.new(0, 1, 1)
        _b.TextSize = 20;
        ab.Parent = da
        ab.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        ab.Position = UDim2.new(0, 0, 0.158377, 0)
        ab.Size = UDim2.new(0, 370, 0, 44)
        ab.Font = Enum.Font.ArialBold;
        ab.Text = "Status: Active"
        ab.TextColor3 = Color3.new(0, 1, 1)
        ab.TextSize = 20;
        local bb = game:service 'VirtualUser'
        game:service 'Players'.LocalPlayer.Idled:connect(function()
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
            ab.Text = "Roblox tried kicking you buy I didnt let them!"
            wait(2)
            ab.Text = "Status : Active"
        end)
    end)
    mainSection:NewButton("Auto Build", "it Automally build for you", function()
        loadstring(game:HttpGet(
            ("https://raw.githubusercontent.com/Val1antt/scripts/main/BuildABoat/BuildABoatRestored.lua"), true))()
    end)
    --player
    local playerSection = player:NewSection("Player config")
    playerSection:NewSlider("Walk Speed", "Walk Speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    playerSection:NewSlider("jump power", "Jump Power", 500, 0, function(y) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = y
        game.Players.LocalPlayer.Character.Humanoid.JumpHeight = y
    end)
    playerSection:NewButton("Toggle Infinite jump", "Nerver can stop jumping", function()
        --[[
© 2022 WeAreDevs | The WeAreDevs Infinite Jump script
Created and distributed by https://wearedevs.net/scripts
March 9, 2022

Step 1: Inject this script into any game using a Lua injector like JJSploit
Step 2: When you get the ready notification, spam the space bar to jump as many times as you want

Controls:
Reinject the script to toggle the infinite jump script on or off.
Excute Lua "G.infinjump = true" to explicity turn the infinite jump script on
Excute Lua "G.infinjump = false" to explicity turn the infinite jump script off
]]
        --Toggles the infinite jump between on or off on every script run
        _G.infinjump = not _G.infinjump

        if _G.infinJumpStarted == nil then
            --Ensures this only runs once to save resources
            _G.infinJumpStarted = true

            --Notifies readiness
            game.StarterGui:SetCore("SendNotification",
                { Title = "WeAreDevs.net", Text = "The WeAreDevs Infinite Jump exploit is ready!", Duration = 5, })

            --The actual infinite jump
            local plr = game:GetService('Players').LocalPlayer
            local m = plr:GetMouse()
            m.KeyDown:connect(function(k)
                if _G.infinjump then
                    if k:byte() == 32 then
                        humanoid = game:GetService 'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
                        humanoid:ChangeState('Jumping')
                        wait()
                        humanoid:ChangeState('Seated')
                    end
                end
            end)
        end
    end)
    playerSection:NewKeybind("Toggle Fly", "KeybindInfo", Enum.KeyCode.F, function()
        print("You just clicked the bind")
    end)
    --config
    local configSection = config:NewSection("config")
    configSection:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.P, function()
        Library:ToggleUI()
    end)
    --credit
    local creditSection = credit:NewSection("Credit")
    creditSection:NewLabel("By: Hernny")
else
    game.StarterGui:SetCore("SendNotification",
        { Title = "BABFT HUB", Text = "Bruh your game playing is Unsupported, we're sorry", Duration = 5, })
end
