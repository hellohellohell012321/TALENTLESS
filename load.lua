local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingBarGui"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

local loadingBar = Instance.new("Frame")
loadingBar.Name = "LoadingBar"
loadingBar.Size = UDim2.new(0.333, 0, 0, 4) 
loadingBar.Position = UDim2.new(0.333, 0, 1, 10) 
loadingBar.AnchorPoint = Vector2.new(0, 0.5)
loadingBar.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
loadingBar.BorderSizePixel = 0
loadingBar.Parent = screenGui

local fillBar = Instance.new("Frame")
fillBar.Name = "Fill"
fillBar.Size = UDim2.new(0, 0, 1, 0)
fillBar.Position = UDim2.new(0.5, 0, 0, 0)
fillBar.AnchorPoint = Vector2.new(0.5, 0)
fillBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fillBar.BorderSizePixel = 0
fillBar.Parent = loadingBar

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 57, 73)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
gradient.Rotation = 0
gradient.Parent = fillBar

local tweenInfo = TweenInfo.new(
	0.3,
	Enum.EasingStyle.Quad,
	Enum.EasingDirection.Out
)

local fillTweenInfo = TweenInfo.new(
	0.5,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.InOut
)

local fadeTweenInfo = TweenInfo.new(
	0.3,
	Enum.EasingStyle.Quad,
	Enum.EasingDirection.InOut
)

local slideUpTween = TweenService:Create(loadingBar, tweenInfo, {
	Position = UDim2.new(0.333, 0, 0.9, 0)
})

local fillTween = TweenService:Create(fillBar, fillTweenInfo, {
	Size = UDim2.new(1, 0, 1, 0)
})

local fadeOutTween = TweenService:Create(loadingBar, fadeTweenInfo, {
	BackgroundTransparency = 1
})

local fadeFillTween = TweenService:Create(fillBar, fadeTweenInfo, {
	BackgroundTransparency = 1
})

slideUpTween:Play()
slideUpTween.Completed:Wait()

fillTween:Play()
fillTween.Completed:Wait()

fadeOutTween:Play()
fadeFillTween:Play()
fadeOutTween.Completed:Wait()

screenGui:Destroy()
