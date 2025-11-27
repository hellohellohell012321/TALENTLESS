local NotificationLibrary = loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS@main/notif_lib.lua"))()

local function playSound(soundId, loudness)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
    sound.Volume = loudness or 1  -- Default to full volume if no loudness is provided
    sound:Play()
end

local translator = loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS@main/translator.lua"))()

local function translateText(text)
    return translator:translateText(text) -- lang shouldve alr been set by main script.
end

local infogui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local copy = Instance.new("TextButton")
local desc = Instance.new("TextLabel")
local title = Instance.new("TextLabel")
local dismiss = Instance.new("TextButton")

infogui.Name = "infogui"
infogui.Parent = game:GetService("CoreGui")
infogui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = infogui
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Size = UDim2.new(0, 285, 0, 269)
Frame.ZIndex = 99

UIListLayout.Parent = Frame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 15)

UIPadding.Parent = Frame
UIPadding.PaddingTop = UDim.new(0, 15)

copy.Name = "copy"
copy.Parent = Frame
copy.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
copy.BorderColor3 = Color3.fromRGB(64, 68, 90)
copy.BorderSizePixel = 4
copy.LayoutOrder = 3
copy.Position = UDim2.new(0.117543861, 0, 0.677165329, 0)
copy.Size = UDim2.new(0, 234, 0, 25)
copy.Font = Enum.Font.SourceSansBold
copy.Text = translateText("copy")
copy.TextColor3 = Color3.fromRGB(255, 255, 255)
copy.TextSize = 14.000
copy.TextWrapped = true

desc.Name = "desc"
desc.Parent = Frame
desc.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
desc.BorderColor3 = Color3.fromRGB(64, 68, 90)
desc.BorderSizePixel = 4
desc.LayoutOrder = 2
desc.Position = UDim2.new(0.0701754391, 0, 0.255905509, 0)
desc.Size = UDim2.new(0, 255, 0, 92)
desc.Font = Enum.Font.SourceSansBold
desc.Text = translateText("help info")
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.TextSize = 14.000
desc.TextWrapped = true

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
title.BorderColor3 = Color3.fromRGB(64, 68, 90)
title.BorderSizePixel = 4
title.LayoutOrder = 1
title.Size = UDim2.new(0, 250, 0, 50)
title.Font = Enum.Font.SourceSansBold
title.Text = translateText("resources")
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 50.000
title.TextWrapped = true

dismiss.Name = "dismiss"
dismiss.Parent = Frame
dismiss.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
dismiss.BorderColor3 = Color3.fromRGB(64, 68, 90)
dismiss.BorderSizePixel = 4
dismiss.LayoutOrder = 3
dismiss.Position = UDim2.new(0.117543861, 0, 0.834645689, 0)
dismiss.Size = UDim2.new(0, 234, 0, 25)
dismiss.Font = Enum.Font.SourceSansBold
dismiss.Text = translateText("nevermind")
dismiss.TextColor3 = Color3.fromRGB(255, 255, 255)
dismiss.TextSize = 14.000
dismiss.TextWrapped = true

local UserInputService = game:GetService("UserInputService")

local gui = Frame

local dragging
local dragInput
local dragStart
local startPos
	
local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
	
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
	
gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
	
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
end
end)

copy.MouseButton1Click:Connect(function()
    setclipboard("https://www.hellohellohell0.com")
    NotificationLibrary:SendNotification("Success", translateText("linkcopied"), 5)
    playSound(6493287948, 0.1)
    wait(0.5)
    infogui:Destroy()
end)

dismiss.MouseButton1Click:Connect(function()
    infogui:Destroy()
end)
