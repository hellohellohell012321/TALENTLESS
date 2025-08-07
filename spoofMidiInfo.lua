-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local uic2 = Instance.new("UICorner")
local songname = Instance.new("TextLabel")
local closeButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 384, 0, 165)

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Size = UDim2.new(1, 0, -0.0787878782, 50)
title.Font = Enum.Font.SourceSansBold
title.Text = "spoof midi: what is it?"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 32.000

uic2.CornerRadius = UDim.new(0, 4)
uic2.Name = "uic2"
uic2.Parent = title

songname.Name = "songname"
songname.Parent = Frame
songname.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
songname.BorderColor3 = Color3.fromRGB(64, 68, 90)
songname.BorderSizePixel = 4
songname.LayoutOrder = 1
songname.Position = UDim2.new(0.0480766296, 0, 0.334014326, 0)
songname.Size = UDim2.new(0, 347, 0, 84)
songname.ZIndex = -5
songname.Font = Enum.Font.SourceSans
songname.Text = "this option is showing because you're in the game \"piano rooms\". when \"spoof midi\" is turned ON, talentless will tell the game that all of your inputs are coming from a real midi keyboard, not a qwerty keyboard! this makes the autoplay so much more believable, because people will think you are playing on a real piano. to use it, just turn on spoof midi, and play any song!"
songname.TextColor3 = Color3.fromRGB(255, 255, 255)
songname.TextScaled = true
songname.TextSize = 23.000
songname.TextWrapped = true

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
