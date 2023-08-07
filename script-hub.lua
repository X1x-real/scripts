local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Clik's Script", HidePremium = false, SaveConfig = true, ConfigFolder = "ClikScript", IntroText = "Clik's Script"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local MainSection = MainTab:AddSection({
	Name = "Main"
})

--[[
Name = <string> - The name of the section.
]]

OrionLib:MakeNotification({
	Name = "Clik's Hub",
	Content = "Successfully Loaded",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]

MainTab:AddButton({
   Name = "Infinite Jump",
   Callback = function()
     --Toggles the infinite jump between on or off on every script run
    _G.infinjump = not _G.infinjump

    if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true

	--Notifies readiness

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
    if _G.infinjump == true then
    OrionLib:MakeNotification({
	Name = "Clik's Hub",
	Content = "Infinite Jump is on!",
	Image = "rbxassetid://4483345998",
	Time = 5
    })
    else
    OrionLib:MakeNotification({
	Name = "Clik's Hub",
	Content = "Infinite Jump is off!",
	Image = "rbxassetid://4483345998",
	Time = 5
    })
    end
    end
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

MainTab:AddSlider({
	Name = "Walk Speed",
	Min = 16,
	Max = 150,
	Default = 16,
	Color = Color3.fromRGB(161,183,255),
	Increment = 1,
	ValueName = "Walk Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
	end    
})

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]

MainTab:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 150,
	Default = 50,
	Color = Color3.fromRGB(161,183,255),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
	end    
})

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]

local ScriptsTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local ScriptsSection = ScriptsTab:AddSection({
	Name = "Scripts"
})

--[[
Name = <string> - The name of the section.
]]

ScriptsTab:AddButton({
   Name = "Remote Spy",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
   end,
})

ScriptsTab:AddButton({
   Name = "Dex",
   Callback = function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
   end,
})

ScriptsTab:AddButton({
   Name = "Infinite Yield",
   Callback = function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

ScriptsTab:AddButton({
   Name = "Audio Logger",
   Callback = function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/X1x2256/scripts/main/Audio%20Logger.lua"))()
   end,
})
