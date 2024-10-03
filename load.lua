local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(47, 47, 47);
G2L["2"]["Size"] = UDim2.new(0, 349, 0, 142);
G2L["2"]["Position"] = UDim2.new(0.5, -174.5, 0.5, -71);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 4);

G2L["4"] = Instance.new("TextLabel", G2L["2"]);
G2L["4"]["TextWrapped"] = true;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextScaled"] = true;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(109, 109, 109);
G2L["4"]["TextSize"] = 14;
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(0, 258, 0, 32);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[loading song...]];
G2L["4"]["Name"] = [[title]];
G2L["4"]["Position"] = UDim2.new(0.12894, 0, 0.14789, 0);

G2L["5"] = Instance.new("Frame", G2L["2"]);
G2L["5"]["ZIndex"] = 5;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(208, 49, 43);
G2L["5"]["Size"] = UDim2.new(0, 38, 0, 27);
G2L["5"]["Position"] = UDim2.new(0.06304, 0, 0.65493, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[loadprogress]];

G2L["6"] = Instance.new("Frame", G2L["2"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["Size"] = UDim2.new(0, 303, 0, 27);
G2L["6"]["Position"] = UDim2.new(0.06304, 0, 0.65493, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[loadbar]];

G2L["7"] = Instance.new("TextLabel", G2L["2"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(109, 109, 109);
G2L["7"]["TextSize"] = 14;
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Size"] = UDim2.new(0, 258, 0, 32);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[made by hellohellohell012321]];
G2L["7"]["Name"] = [[creds]];
G2L["7"]["Position"] = UDim2.new(0.12607, 0, 0.38732, 0);

local TweenService = game:GetService("TweenService")

local loadProgressFrame = G2L["5"]
local loadBarFrame = G2L["6"]

local function createTween(object, tweenInfo, goal)
    local tween = TweenService:Create(object, tweenInfo, goal)
    return tween
end

local function tweenLoadProgress(duration)
    local goal = {}
    goal.Size = loadBarFrame.Size
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local tween = createTween(loadProgressFrame, tweenInfo, goal)
    tween:Play()
end

local function popOutEffect(duration)
    local goal = {}
    goal.Size = UDim2.new(0, 349, 0, 142) -- Enlarge to fill the screen or become larger
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    local tween = createTween(G2L["2"], tweenInfo, goal)
    tween:Play()
end

G2L["2"].Size = UDim2.new(0, 0, 0, 0)
popOutEffect(0.5)

wait(0.5)
tweenLoadProgress(3)

wait(3.5)

G2L["1"]:Destroy()

return G2L["1"], require
