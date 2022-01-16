local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
    SchemeColor = Color3.fromRGB(44,202,102),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(5, 77, 26),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)


}











local Window = Library.CreateLib("Uranium Hub", colors)
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Settings")


MainSection:NewKeybind("Toggle UI Keybind", "pick What key to press to hide the Gui", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)



local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Movement")
PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 200, 16, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
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



local PlayerSection = Player:NewSection("Teleports")
PlayerSection:NewDropdown("Teleports", "Pick Where to Teleport", {"5 to 50", "32 to 64", "The Wall", "The Slope", "The Tower", "The Pyramid", "The Abyss", "The Mountain", "The Statues", "Spawn"}, function(t)

    if t == "5 to 50" then
        getgenv().P = CFrame.new(19, 3, 182.5)
    end  
    if t == "32 to 64" then
        getgenv().P = CFrame.new(-31.5, 3, 208)
    end
    if t == "The Wall" then
        getgenv().P = CFrame.new(-31.5, 3, 278)
    end
    if t == "The Slope" then
        getgenv().P = CFrame.new(69.5, 3, 278)
    end
    if t == "The Tower" then
        getgenv().P = CFrame.new(-31.5, 3, 338)
    end
    if t == "The Pyramid" then
        getgenv().P = CFrame.new(69.5, 3, 338)
    end
    if t == "The Abyss" then
        getgenv().P = CFrame.new(-31.5, 3, 398)
    end
    if t == "The Mountain" then
        getgenv().P = CFrame.new(69.5, 3, 398)
    end
    if t == "The Statues" then
        getgenv().P = CFrame.new(19, 3, 448.5)
    end
    if t == "Spawn" then
        getgenv().P = CFrame.new(20, 3, 200)

    end

end)
PlayerSection:NewButton("Teleport", "Teleport to your picked Location", function()
    local player = game.Players.LocalPlayer.Character
                player.HumanoidRootPart.CFrame = P


end)



local AutoFarm = Window:NewTab("AutoFarm WIP")
local AutoFarmSection = AutoFarm:NewSection("AutoFarm")
AutoFarmSection:NewDropdown("Autofarm Stage", "Pick what Stage to Autofarm", {"5 to 50", "32 to 64", "The Wall", "The Slope", "The Tower", "The Pyramid", "The Abyss", "The Mountain", "The Statues"}, function(l)

    if l == "5 to 50" then
        getgenv().part = game.Workspace.Ends.End50.Button
    end  
    if l == "32 to 64" then
        getgenv().part = game.Workspace.Ends.End100.Button
    end
    if l == "The Wall" then
        getgenv().part = game.Workspace.Ends.End150.Button
    end
    if l == "The Slope" then
        getgenv().part = game.Workspace.Ends.EndSlope.Button
    end
    if l == "The Tower" then
        getgenv().part = game.Workspace.Ends.EndTower.Button
    end
    if l == "The Pyramid" then
        getgenv().part = game.Workspace.Ends.EndPyramid.Button
    end
    if l == "The Abyss" then
        getgenv().part = game.Workspace.Ends.EndAbyss.Button
    end
    if l == "The Mountain" then
        getgenv().part = game.Workspace.Ends.EndMountain.Button
    end
    if l == "The Statues" then
        getgenv().part = game.Workspace.Ends.EndStack.Button
    end




end)

AutoFarmSection:NewToggle("Autofarm", "Toggle AutoFarm On or Off", function(state)
   
    
    if state then
        
        getgenv().safe = CFrame.new(20, 3, 200)
        getgenv().AF = true
        while AF == true do
            wait(1)
            
            local player = game.Players.LocalPlayer.Character
                player.HumanoidRootPart.CFrame = part.CFrame
            wait(1)
            local humanoid = game.Players.LocalPlayer.Character.Humanoid
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)

           
        end




        
    else
        getgenv().AF = false 
    end
end)  

    
