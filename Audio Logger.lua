-- Gui to Lua
-- Version: 3.2

-- Random String Generator

local random = Random.new()
local letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}

function getRandomLetter()
	return letters[random:NextInteger(1,#letters)]
end

function getRandomString(length, includeCapitals)
	local length = length or 10
	local str = ''
	for i=1,length do
		local randomLetter = getRandomLetter()
		if includeCapitals and random:NextNumber() > .5 then
			randomLetter = string.upper(randomLetter)
		end
		str = str .. randomLetter
	end
	return str
end

-- Gui to Lua
-- Version: 3.2

-- Instances:

local audio = Instance.new("ScreenGui")
local Custom = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local TurnOffButton = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local Off = Instance.new("TextButton")
local Minimalize = Instance.new("ImageLabel")
local UICorner_4 = Instance.new("UICorner")
local Off_2 = Instance.new("TextButton")
local Log = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Play = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Holder = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local AudioFrame = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local AudioName = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local Select = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local AudioID = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local AudioLogs = Instance.new("ScrollingFrame")
local Layout = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

--Properties:

audio.Name = getRandomString(17, true)
audio.Parent = game.CoreGui
audio.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Custom.Name = "Custom"
Custom.Parent = audio
Custom.BackgroundColor3 = Color3.fromRGB(19, 21, 25)
Custom.Position = UDim2.new(0.284616172, 0, 0.128653884, 0)
Custom.Size = UDim2.new(0, 392, 0, 319)

UICorner.Parent = Custom

TextLabel.Parent = Custom
TextLabel.BackgroundColor3 = Color3.fromRGB(5, 5, 7)
TextLabel.Size = UDim2.new(0, 392, 0, 33)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Audio Logger"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

UICorner_2.Parent = TextLabel

Frame.Parent = TextLabel
Frame.BackgroundColor3 = Color3.fromRGB(5, 5, 7)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.839999974, 0)
Frame.Size = UDim2.new(0, 153, 0, 4)

TurnOffButton.Name = "Turn Off Button"
TurnOffButton.Parent = TextLabel
TurnOffButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TurnOffButton.BackgroundTransparency = 1.000
TurnOffButton.Position = UDim2.new(0.918151677, 0, 0, 0)
TurnOffButton.Size = UDim2.new(0, 31, 0, 31)
TurnOffButton.Image = "http://www.roblox.com/asset/?id=5650878135"

UICorner_3.Parent = TurnOffButton

Off.Name = "Off"
Off.Parent = TurnOffButton
Off.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Off.BackgroundTransparency = 1.000
Off.BorderSizePixel = 0
Off.Size = UDim2.new(0, 24, 0, 24)
Off.ZIndex = 5
Off.Font = Enum.Font.SourceSans
Off.Text = ""
Off.TextColor3 = Color3.fromRGB(0, 0, 0)
Off.TextSize = 1.000
Off.TextTransparency = 1.000

Minimalize.Name = "Minimalize"
Minimalize.Parent = TextLabel
Minimalize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimalize.BackgroundTransparency = 1.000
Minimalize.BorderSizePixel = 0
Minimalize.Position = UDim2.new(0.839058101, 0, 0.261363626, 0)
Minimalize.Size = UDim2.new(0, 31, 0, 24)
Minimalize.Image = "http://www.roblox.com/asset/?id=3517304301"

UICorner_4.Parent = Minimalize

Off_2.Name = "Off"
Off_2.Parent = Minimalize
Off_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Off_2.BackgroundTransparency = 1.000
Off_2.BorderSizePixel = 0
Off_2.Size = UDim2.new(0, 24, 0, 24)
Off_2.ZIndex = 5
Off_2.Font = Enum.Font.SourceSans
Off_2.Text = ""
Off_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Off_2.TextSize = 1.000
Off_2.TextTransparency = 1.000

Log.Name = "Log"
Log.Parent = Custom
Log.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Log.BorderColor3 = Color3.fromRGB(54, 54, 54)
Log.Position = UDim2.new(0.0310194045, 0, 0.873593152, 0)
Log.Size = UDim2.new(0, 172, 0, 32)
Log.Font = Enum.Font.GothamBold
Log.Text = "Log"
Log.TextColor3 = Color3.fromRGB(0, 0, 0)
Log.TextSize = 14.000

UICorner_5.Parent = Log

Play.Name = "Play"
Play.Parent = Custom
Play.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Play.BorderColor3 = Color3.fromRGB(54, 54, 54)
Play.Position = UDim2.new(0.546344995, 0, 0.873593152, 0)
Play.Size = UDim2.new(0, 166, 0, 32)
Play.Font = Enum.Font.GothamBold
Play.Text = "Play Audio"
Play.TextColor3 = Color3.fromRGB(0, 0, 0)
Play.TextSize = 14.000

UICorner_6.Parent = Play

Holder.Name = "Holder"
Holder.Parent = Custom
Holder.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Holder.BackgroundTransparency = 1.000
Holder.Position = UDim2.new(0.00224833586, 0, 0.147208139, 0)
Holder.Size = UDim2.new(0, 379, 0, 57)

UICorner_7.Parent = Holder

AudioFrame.Name = "AudioFrame"
AudioFrame.Parent = Holder
AudioFrame.BackgroundColor3 = Color3.fromRGB(5, 5, 7)
AudioFrame.Position = UDim2.new(0.0435456373, 0, 0.0487806536, 0)
AudioFrame.Size = UDim2.new(0, 367, 0, 53)

UICorner_8.Parent = AudioFrame

AudioName.Name = "AudioName"
AudioName.Parent = AudioFrame
AudioName.BackgroundColor3 = Color3.fromRGB(5, 5, 7)
AudioName.BackgroundTransparency = 1.000
AudioName.Position = UDim2.new(0, 0, 0.00811508484, 0)
AudioName.Size = UDim2.new(0, 355, 0, 21)
AudioName.Font = Enum.Font.GothamBold
AudioName.Text = ""
AudioName.TextColor3 = Color3.fromRGB(255, 255, 255)
AudioName.TextSize = 14.000
AudioName.TextWrapped = true

UICorner_9.Parent = AudioName

Select.Name = "Select"
Select.Parent = AudioFrame
Select.BackgroundColor3 = Color3.fromRGB(32, 35, 42)
Select.Position = UDim2.new(0.552999973, 0, 0.449999988, 0)
Select.Size = UDim2.new(0, 153, 0, 25)
Select.Font = Enum.Font.GothamBold
Select.Text = "Select"
Select.TextColor3 = Color3.fromRGB(255, 255, 255)
Select.TextSize = 14.000

UICorner_10.Parent = Select

AudioID.Name = "AudioID"
AudioID.Parent = AudioFrame
AudioID.BackgroundColor3 = Color3.fromRGB(5, 5, 7)
AudioID.BackgroundTransparency = 1.000
AudioID.Position = UDim2.new(0, 0, 0.549781919, 0)
AudioID.Size = UDim2.new(0, 201, 0, 23)
AudioID.Font = Enum.Font.GothamBold
AudioID.Text = ""
AudioID.TextColor3 = Color3.fromRGB(158, 158, 158)
AudioID.TextScaled = true
AudioID.TextSize = 13.000
AudioID.TextWrapped = true

UICorner_11.Parent = AudioID

AudioLogs.Name = "AudioLogs"
AudioLogs.Parent = Custom
AudioLogs.Active = true
AudioLogs.BackgroundColor3 = Color3.fromRGB(19, 21, 25)
AudioLogs.BorderSizePixel = 0
AudioLogs.Position = UDim2.new(-0.000302684552, 0, 0.103448279, 0)
AudioLogs.Size = UDim2.new(0, 391, 0, 245)

Layout.Name = "Layout"
Layout.Parent = AudioLogs
Layout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Layout.BackgroundTransparency = 1.000
Layout.Position = UDim2.new(0.00224832585, 0, 0, 0)
Layout.Size = UDim2.new(0, 282, 0, 147)

UIListLayout.Parent = AudioLogs
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Scripts:

local function KYKONM_fake_script() -- Off.LocalScript 
	local script = Instance.new('LocalScript', Off)

	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(KYKONM_fake_script)()
local function FYGGIDF_fake_script() -- Off_2.LocalScript 
	local script = Instance.new('LocalScript', Off_2)

	local min = false
	script.Parent.MouseButton1Click:connect(function()
		if min == false then
			script.Parent.Parent.Parent.Parent.Log.Visible = false
			script.Parent.Parent.Parent.Parent.Play.Visible = false
			script.Parent.Parent.Parent.Parent.Holder.Visible = false
			script.Parent.Parent.Parent.Parent.AudioLogs.Visible = false
			script.Parent.Parent.Parent.Parent.Transparency = 1
			script.Parent.Parent.Parent.Visible = true
			min = true
		else
			min = false
			script.Parent.Parent.Parent.Parent.Log.Visible = true
			script.Parent.Parent.Parent.Parent.Play.Visible = true
			script.Parent.Parent.Parent.Parent.Holder.Visible = true
			script.Parent.Parent.Parent.Parent.AudioLogs.Visible = true
			script.Parent.Parent.Parent.Parent.Transparency = 0
			script.Parent.Parent.Parent.Visible = true
			end 
	end) 
end
coroutine.wrap(FYGGIDF_fake_script)()
local function IACBE_fake_script() -- Log.LocalScript 
	local script = Instance.new('LocalScript', Log)

	_G.target = game.Players.LocalPlayer.Name
	local plr = game:GetService("Players").LocalPlayer
	local charr = game:GetService("Players").LocalPlayer.Character
	local players = game:GetService("Players"):GetPlayers()
	local Player = game:GetService("Players").LocalPlayer
	local Char = Player.Character
	local pg = true
	local LogPlay = false
	local Ignore = {"rbxasset://sounds/action_footsteps_plastic.mp3", "rbxasset://sounds/impact_water.mp3", "rbxasset://sounds/uuhhh.mp3", "rbxasset://sounds/action_swim.mp3", "rbxasset://sounds/action_get_up.mp3", "rbxasset://sounds/action_falling.mp3", "rbxasset://sounds/action_jump.mp3", "rbxasset://sounds/action_jump_land.mp3"}
	local Tween = function(Obj, Time, Style, Direction, Table)
		game:GetService("TweenService"):Create(Obj, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction], 0, false, 0), Table):Play()
	end
	local Main = script.Parent.Parent
	local Play = script.Parent
	script.Parent.MouseButton1Down:connect(function()
		LogFrame = script.Parent.Parent
		local wspace = workspace:GetDescendants()
		for i, v in pairs(LogFrame.AudioLogs:GetDescendants()) do
			if not v:IsA("UIListLayout") then
				v:remove()
			end
		end
		for i = 1, #wspace do
			local v = wspace[i]
			if v:IsA("Sound") then
				if v.IsLoaded ~= false and not table.find(Ignore, v.SoundId) then
					local Holder = LogFrame.Holder:clone()
					local Frame = Holder.AudioFrame
					inf, info = pcall(function()
						return game:GetService("MarketplaceService"):GetProductInfo(v.SoundId:gsub("rbxassetid://", "", 1):gsub("http://www.roblox.com/asset/%?id=", "", 1):gsub("https://www.roblox.com/asset/%?id=", "", 1))
					end)
					if inf then
						Frame.AudioName.Text = info.Name
					elseif v.SoundId:match("^rbxassetid://sounds/") then
						Frame.AudioName.Text = v.SoundId:gsub("rbxasset://sounds/", "", 1)
					else
						Frame.AudioName.Text = v.Name
					end
					Holder.Visible = true
					Holder.Name = v.SoundId
					Frame.AudioID.Text = v.SoundId:gsub("http://www.roblox.com/asset/%?id=", "", 1)
					Tween(LogFrame.AudioLogs, .0, "Quad", "Out", {
						CanvasSize = UDim2.new(0, 0, 0, LogFrame.AudioLogs.UIListLayout.AbsoluteContentSize.Y * 1.5)
					})
					Holder.Parent = LogFrame.AudioLogs
					Frame.Select.MouseButton1Down:connect(function()
						_G.active = nil
						_G.active = v.SoundId
					end)
				end
			end
		end
		--if script.Parent.Parent.AudioLogs
	end)
end
coroutine.wrap(IACBE_fake_script)()
local function WVSBYXC_fake_script() -- Play.LocalScript 
	local script = Instance.new('LocalScript', Play)

	_G.target = game.Players.LocalPlayer.Name
	local plr = game:GetService("Players").LocalPlayer
	local charr = game:GetService("Players").LocalPlayer.Character
	local players = game:GetService("Players"):GetPlayers()
	local Player = game:GetService("Players").LocalPlayer
	local Char = Player.Character
	local pg = true
	local LogPlay = false
	local Ignore = {"rbxasset://sounds/action_footsteps_plastic.mp3", "rbxasset://sounds/impact_water.mp3", "rbxasset://sounds/uuhhh.mp3", "rbxasset://sounds/action_swim.mp3", "rbxasset://sounds/action_get_up.mp3", "rbxasset://sounds/action_falling.mp3", "rbxasset://sounds/action_jump.mp3", "rbxasset://sounds/action_jump_land.mp3"}
	local Tween = function(Obj, Time, Style, Direction, Table)
		game:GetService("TweenService"):Create(Obj, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction], 0, false, 0), Table):Play()
	end
	local Main = script.Parent.Parent
	local Play = script.Parent
	script.Parent.MouseButton1Down:connect(function()
		if not LogPlay then
			LogPlay = true
			local Sound = Instance.new("Sound")
			Sound.Parent = Main
			Sound.Looped = true
			Sound.SoundId = _G.active
			Sound.Volume = 0.5
			Sound:play()
			Play.Text = "Stop"
		else
			local Sound = Main.Sound
			Sound:remove()
			LogPlay = false
			Play.Text = "Play Audio"
		end
	end)
end
coroutine.wrap(WVSBYXC_fake_script)()
local function JCYXVFB_fake_script() -- Custom.Dragify 
	local script = Instance.new('LocalScript', Custom)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.50
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(JCYXVFB_fake_script)()
