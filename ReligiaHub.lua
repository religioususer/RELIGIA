local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🌟 Religia Universal 🏀",
   LoadingTitle = "RELIGIA HUB",
   LoadingSubtitle = "by ReligiousUsername",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"religh_1"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local UnivTab = Window:CreateTab("Universal ✨", nil)
local UnivSection = UnivTab:CreateSection("Universal Scripts 🛡")

local InfJumpButton = UnivTab:CreateButton({
    Name = "Infinite Jump",
    Callback = function()
                    --Toggles the infinite jump between on or off on every script run
        _G.infinjump = not _G.infinjump

        if _G.infinJumpStarted == nil then
            --Ensures this only runs once to save resources
            _G.infinJumpStarted = true
            
            --Notifies readiness
            game.StarterGui:SetCore("SendNotification", {Title="Youtube Hub"; Text="Infinite Jump Activated!"; Duration=5;})

            --The actual infinite jump
            local plr = game:GetService('Players').LocalPlayer
            local m = plr:GetMouse()
            m.KeyDown:connect(function(k)
                if _G.infinjump then
                    if k:byte() == 32 then
                    humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
                    humanoid:ChangeState('Jumping')
                    wait()
                    humanoid:ChangeState('Seated')
                    end
                end
	end)
end
    end,
 })

 local ESPButton = UnivTab:CreateButton({
    Name = "ESP",
    Callback = function()
        local gui = Instance.new("BillboardGui")
        local esp = Instance.new("TextLabel",gui) ---- new instances to make the billboard gui and the textlabel



        gui.Name = "Cracked esp"; ---- properties of the esp
        gui.ResetOnSpawn = false
        gui.AlwaysOnTop = true;
        gui.LightInfluence = 0;
        gui.Size = UDim2.new(1.75, 0, 1.75, 0);
        esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        esp.Text = ""
        esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
        esp.BorderSizePixel = 4;
        esp.BorderColor3 = Color3.new(esp_settings.colour)
        esp.BorderSizePixel = 0
        esp.Font = "GothamSemibold"
        esp.TextSize = esp_settings.textsize
        esp.TextColor3 = Color3.fromRGB(esp_settings.colour) -- text colour

        game:GetService("RunService").RenderStepped:Connect(function() ---- loops faster than a while loop :)
            for i,v in pairs (game:GetService("Players"):GetPlayers()) do
                if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Cracked esp")==nil  then -- craeting checks for team check, local player etc
                    esp.Text = "{"..v.Name.."}"
                    gui:Clone().Parent = v.Character.Head
            end
        end
        end)
    end,
 })

 local Slider = MainTab:CreateSlider({
    Name = "WalkSpeed Slider",
    Range = {1, 350},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
    end,
 })

 local Slider = MainTab:CreateSlider({
    Name = "JumpPower Slider",
    Range = {1, 350},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
    end,
 })

 local InfYieldButton = UnivTab:CreateButton({
    Name = "Infinite Jump",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt"))()
    end,
 })



local ParryTab = Window:CreateTab("Blade Ball🛡", nil) -- Title, Image
local ParrySection = ParryTab:CreateSection("AutoParry 🛡")

local ParryButton = ParryTab:CreateButton({
   Name = "Auto Parry",
   Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/UPD-Blade-Ball-auto-parry-12960"))()
   end,
})

