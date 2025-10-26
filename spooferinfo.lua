-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local uic2 = Instance.new("UICorner")
local info = Instance.new("TextLabel")
local closeButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

local translator = loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS@main/translator.lua"))()

local function translateText(text)
    return translator:translateText(text) -- lang shouldve alr been set by main script.
end

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.524622738, 0, 0.440348536, 0)
Frame.Size = UDim2.new(0, 384, 0, 296)

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Size = UDim2.new(1, 0, -0.0414047241, 50)
title.Font = Enum.Font.SourceSansBold
title.Text = translateText("spoof midi title")
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 32.000

uic2.CornerRadius = UDim.new(0, 4)
uic2.Name = "uic2"
uic2.Parent = title

info.Name = "info"
info.Parent = Frame
info.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
info.BorderColor3 = Color3.fromRGB(64, 68, 90)
info.BorderSizePixel = 4
info.LayoutOrder = 1
info.Position = UDim2.new(0.0480766296, 0, 0.620982587, 0)
info.Size = UDim2.new(0, 347, 0, 98)
info.Font = Enum.Font.SourceSans
info.Text = translateText("spoof midi info")
info.TextColor3 = Color3.fromRGB(255, 255, 255)
info.TextScaled = true
info.TextSize = 23.000
info.TextWrapped = true

closeButton.Name = "closeButton"
closeButton.Parent = Frame
closeButton.BackgroundTransparency = 1.000
closeButton.LayoutOrder = 1
closeButton.Position = UDim2.new(0.994791687, -35, -0.0121212117, 5)
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.ZIndex = 5
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextScaled = true
closeButton.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.046875, 0, 0.176975965, 0)
ImageLabel.Size = UDim2.new(0, 258, 0, 204)
ImageLabel.ZIndex = 0
ImageLabel.Image = "rbxassetid://136739056545816"

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.75, 0, 0.14994894, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 131)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = translateText("midi connect reminder")
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

closeButton.MouseButton1Click:Connect(
	function()
		ScreenGui:Destroy()
	end
)

-- drag script (not mince)

local UserInputService = game:GetService("UserInputService")

local gui = Frame

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    gui.Position =
        UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui.InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

UserInputService.InputChanged:Connect(
    function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end
)
