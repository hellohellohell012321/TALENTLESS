local G2L = {};

-- StarterGui.notifscreen
notifscreen = Instance.new("ScreenGui", game:GetService("CoreGui"));
notifscreen["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.notifscreen.Frame
G2L["2"] = Instance.new("Frame", notifscreen);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(69, 72, 76);
G2L["2"]["Size"] = UDim2.new(0, 333, 0, 127);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- StarterGui.notifscreen.Frame.yes
confirmyes = Instance.new("TextButton", G2L["2"]);
confirmyes["BorderSizePixel"] = 0;
confirmyes["TextSize"] = 23;
confirmyes["TextColor3"] = Color3.fromRGB(255, 255, 255);
confirmyes["BackgroundColor3"] = Color3.fromRGB(109, 109, 109);
confirmyes["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
confirmyes["Size"] = UDim2.new(0, 130, 0, 26);
confirmyes["Name"] = [[yes]];
confirmyes["BorderColor3"] = Color3.fromRGB(0, 0, 0);
confirmyes["Text"] = [[yes]];
confirmyes["Position"] = UDim2.new(0.73324, -65, 0.66338, 0);

-- StarterGui.notifscreen.Frame.title
G2L["4"] = Instance.new("TextLabel", G2L["2"]);
G2L["4"]["TextWrapped"] = true;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["TextSize"] = 16;
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(0, 313, 0, 81);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[wait! you are currently queueing all of the songs. are you sure you want to stop?]];
G2L["4"]["Name"] = [[title]];
G2L["4"]["Position"] = UDim2.new(0.32781, -100, -0.0034, 0);

-- StarterGui.notifscreen.Frame.UICorner
G2L["5"] = Instance.new("UICorner", G2L["2"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.notifscreen.Frame.no
confirmno = Instance.new("TextButton", G2L["2"]);
confirmno["BorderSizePixel"] = 0;
confirmno["TextSize"] = 23;
confirmno["TextColor3"] = Color3.fromRGB(255, 255, 255);
confirmno["BackgroundColor3"] = Color3.fromRGB(109, 109, 109);
confirmno["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
confirmno["Size"] = UDim2.new(0, 130, 0, 26);
confirmno["Name"] = [[no]];
confirmno["BorderColor3"] = Color3.fromRGB(0, 0, 0);
confirmno["Text"] = [[no]];
confirmno["Position"] = UDim2.new(0.26385, -65, 0.66338, 0);

local function C_c()
	local TweenService = game:GetService("TweenService")
	local player = game.Players.LocalPlayer
	local notifscreen = notifscreen
	local frame = notifscreen:WaitForChild("Frame")
	local popOutTime = 0.5
	frame.Size = UDim2.new(0, 0, 0, 0)
	frame.Visible = true
	local tweenInfo = TweenInfo.new(popOutTime, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out)
	local targetSize = UDim2.new(0, 333, 0, 127)
	local popOutTween = TweenService:Create(frame, tweenInfo, {Size = targetSize})
	popOutTween:Play()
end
task.spawn(C_c)

confirmyes.MouseButton1Click:Connect(function()
    playingall = false
    STOPLOOP:Destroy()
    notifscreen:Destroy()
    stopPlayingSongs()
end)

confirmno.MouseButton1Click:Connect(function()
    notifscreen:Destroy()
end)

return notifscreen, require;
