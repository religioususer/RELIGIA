local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("RELIGIA Universal✨", "Synapse")

--MainTab+Section
local MainTab = Window:NewTab("Home")
local UnivSection = MainTab:NewSection("Universal")

UnivSection:NewButton("InfJump", "self explanatory", function()
    game:GetService("RunService").RenderStepped:Connect(function()
	if not game.Players.LocalPlayer.Character then return end
	if not game.Players.LocalPlayer.Character.Humanoid then return end

	 if game.Players.LocalPlayer.Character.Humanoid.Jump then
		 game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	 end
end)
end)

UnivSection:NewSlider("WalkSpeed", "bruh", 200, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

UnivSection:NewSlider("JumpPower", "bruh x2", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

UnivSection:NewButton("Reset Sliders", "... self explanatory", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

UnivSection:NewButton("ESP", "... self explanatory", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zV20f3Bk", true))()
end)

UnivSection:NewButton("Fly", "... self explanatory v2", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0i564PvP", true))()
end)

UnivSection:NewButton("NahClip", "... self explanatory v2", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JBpVFq7M", true))()
end)

--MiscSection
local MiscSection = MainTab:NewSection("Misc")
MiscSection:NewButton("Check UI (check desc)", "Press F9 to check. If it doesnt print, something is wrong", function()
    print("RELIGIA Works Completly Fine!")
end)

MiscSection:NewButton("Infinite Yield", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/infiniteyield/master/source.lua", true))()
end)
