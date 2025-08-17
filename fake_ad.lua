-- Gui to Lua
-- Notification (top-right of screen)

local TweenService = game:GetService("TweenService")
local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local close = Instance.new("TextButton")

-- GUI setup:
ScreenGui.Parent = PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 373, 0, 74)
-- Start off-screen (top-right)
Frame.Position = UDim2.new(1, 10, 0, 20)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "wanna advertise something to TALENTLESS' 1000+ daily users? DM 67h.b on discord!"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextWrapped = true

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.fromRGB(255, 68, 67)
close.BorderSizePixel = 0
-- Top-left of notification, sticking out slightly
close.Position = UDim2.new(0, -20, 0, -10)
close.Size = UDim2.new(0, 35, 0, 33)
close.Font = Enum.Font.SourceSansBold
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextScaled = true
close.TextWrapped = true

-- Tween in (slide from right)
local tweenIn = TweenService:Create(Frame, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
	Position = UDim2.new(1, -383, 0, 20) -- top-right inside screen
})
tweenIn:Play()

-- Close button logic
local closed = false
close.MouseButton1Click:Connect(function()
	if closed then return end
	closed = true
	local tweenOut = TweenService:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
		Position = UDim2.new(1, 10, 0, 20) -- slide out to right
	})
	tweenOut:Play()
	tweenOut.Completed:Once(function()
		ScreenGui:Destroy()
	end)
end)
