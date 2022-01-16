local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
    SchemeColor = Color3.fromRGB(44,202,102),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(5, 77, 26),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)


}

local Window = Library.CreateLib("Uranium Hub", colors)

local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Gui")


SettingsSection:NewKeybind("Toggle UI Keybind", "pick What key to press to hide the Gui", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Auto")
MainSection:NewToggle("Auto Plunder", "Toggles Auto Plunder on or off", function(state)
    if state then
        getgenv().AP = true
        while AP == true do
            wait(0,01)
            

            local args = {
            [1] = "ClickedButton"
            }

            game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))

        
        
        
        end
    else
        getgenv().AP = false
    end
end)


local Player = Window:NewTab("Player")
