local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DylZ Hub", "BloodTheme")

local Scripts = Window:NewTab("Scripts")
local Player = Window:NewTab("Player")
local Info = Window:NewTab("Info")
local Info = Info:NewSection("Info")
local Scripts = Scripts:NewSection("Scripts")
local Player = Player:NewSection("Player")
local Settings = Window:NewTab("Settings")
local Settings = Settings:NewSection("Settings")

Scripts:NewButton("DarkHub", "This will inject dark hub!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
end)

Scripts:NewButton("OwlHub", "This will inject owl hub!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SiLeNSwOrD/OwlHub/master/OwlHub.txt"))();
end)

Player:NewSlider("Walkspeed", "Changes the walkspeed", 500, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
	
Player:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
	
Scripts:NewButton("Admin", "This will inject an admin script!", function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
	end)
	
	
Scripts:NewButton("Fly/Noclip", "This will inject a fly/noclip gui!", function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/DW6ZRWr3'),true))()
	end)

Player:NewTextBox("TP", "Tp to the player", function(txt)
	local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local pl2 = txt
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	wait(0.1)

	pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end)

Settings:NewKeybind("Toggle UI", "This is the keybind to toggle your ui!", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)