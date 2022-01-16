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
MainSection:NewDropdown("Rebirth Amount", "Pick the amount to auto rebirth", {"1", "10", "100", "1000" , "10000" , "100000"}, function(currentOption)
    getgenv().RA = currentOption
end)
MainSection:NewToggle("Auto Rebirth", "Toggle Auto Rebirth on or off", function(state)
    if state then
        getgenv().AR = true
        while AR == true do
            wait(0,1)
            
            local args = {
                [1] = RA
            }
            
            game:GetService("ReplicatedStorage").Rebirth:FireServer(unpack(args))
        end
      
    
    
    else
        getgenv().AR = false
    end
end)




















local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Movement")
PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
PlayerSection:NewSlider("Jumppower", "Changes the JumpPower", 250, 50, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)


PlayerSection:NewToggle("Infinite Jump", "Makes you jump infinite", function(state)
    if state then
        
        
        getgenv().infinjump = true
 
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        Mouse.KeyDown:connect(function(k)
        if getgenv().infinjump then
        if k:byte() == 32 then
        Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        Humanoid:ChangeState("Jumping")
        wait(0.1)
        Humanoid:ChangeState("Seated")
        end
        end
        end)
 
       
    
    
    else
        getgenv().infinjump = false
    end
end)
