-- Copyright (C) 2026 hellohellohell012321
-- All Rights Reserved. Licensed under a custom source-available license.
-- See LICENSE file for details. Use, modification, or distribution
-- requires prior written permission from the copyright holder.

local translator = loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/translator.lua", true))()

local function translateText(text) -- this function will also be called from the other sub scripts
    return translator:translateText(text)
end

local settings = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local uic1 = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local uic2 = Instance.new("UICorner")
local closeButton = Instance.new("TextButton")
local settingsFrame = Instance.new("ScrollingFrame")
local uic3 = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local UIListLayout = Instance.new("UIListLayout")

settings.Name = "settings"
settings.Parent = game:GetService("CoreGui")
settings.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Name = "frame"
frame.Parent = settings
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0, 315, 0, 272)
frame.ZIndex = 99

    uic1.CornerRadius = UDim.new(0, 4)
    uic1.Name = "uic1"
    uic1.Parent = frame

    title.Name = "title"
    title.Parent = frame
    title.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
    title.Size = UDim2.new(1, 0, -0.011029412, 50)
    title.ZIndex = 2
    title.Font = Enum.Font.SourceSansBold
    title.Text = translateText("settings")
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 46.000

        uic2.CornerRadius = UDim.new(0, 4)
        uic2.Name = "uic2"
        uic2.Parent = title

    closeButton.Name = "closeButton"
    closeButton.Parent = frame
    closeButton.BackgroundTransparency = 1.000
    closeButton.LayoutOrder = 1
    closeButton.Position = UDim2.new(1, -40, 0, 4)
    closeButton.Size = UDim2.new(0, 35, 0, 35)
    closeButton.ZIndex = 5
    closeButton.Font = Enum.Font.SourceSansBold
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.TextScaled = true
    closeButton.TextWrapped = true

    settingsFrame.Name = "settingsFrame"
    settingsFrame.Parent = frame
    settingsFrame.Active = true
    settingsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    settingsFrame.BackgroundTransparency = 1.000
    settingsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    settingsFrame.BorderSizePixel = 0
    settingsFrame.Position = UDim2.new(0, 0, 0.172794119, 0)
    settingsFrame.Size = UDim2.new(0, 315, 0, 225)
    settingsFrame.ScrollBarThickness = 5
    settingsFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    settingsFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

        uic3.CornerRadius = UDim.new(0, 4)
        uic3.Name = "uic3"
        uic3.Parent = settingsFrame

        UIPadding.Parent = settingsFrame
        UIPadding.PaddingLeft = UDim.new(0, 20)
        UIPadding.PaddingTop = UDim.new(0, 20)
        UIPadding.PaddingBottom = UDim.new(0, 20)

        UIListLayout.Parent = settingsFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 24)

-- drag script (not mine)

local UserInputService = game:GetService("UserInputService")

local gui = frame

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

closeButton.MouseButton1Click:Connect(function()
    settings:Destroy()
end)

-- this file is only loaded via the main script, so assume _G.talentlessSettings is already set with all the settings already in.

local function createString()
    local string = "_G.talentlessSettings = {\n"

    for key, boolean in pairs(_G.talentlessSettings) do
        string = string .. "['" .. key .. "'] = " .. tostring(boolean) .. ",\n"
    end

    string = string .. "}"

    return string
end

local function updateSettingsFile()
    writefile("TALENTLESS_settings.txt", createString())
end

local function addSetting(key, description)

    local checkBox = Instance.new("TextButton")
    local settingsLabel = Instance.new("TextLabel")
    local settingContainer = Instance.new("Frame")

    settingContainer.Name = "settingContainer"
    settingContainer.Parent = settingsFrame
    settingContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    settingContainer.BackgroundTransparency = 1.000
    settingContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    settingContainer.BorderSizePixel = 0
    settingContainer.Size = UDim2.new(0, 274, 0, 31)

    checkBox.Name = "checkBox"
    checkBox.Parent = settingContainer
    checkBox.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    checkBox.BorderColor3 = Color3.fromRGB(64, 68, 90)
    checkBox.BorderSizePixel = 4
    checkBox.Size = UDim2.new(0, 35, 0, 31)
    checkBox.Font = Enum.Font.SourceSansBold
    checkBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkBox.TextSize = 44.000
    checkBox.TextWrapped = true

    settingsLabel.Name = "settingsLabel"
    settingsLabel.Parent = settingContainer
    settingsLabel.AnchorPoint = Vector2.new(1, 0)
    settingsLabel.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    settingsLabel.BorderColor3 = Color3.fromRGB(64, 68, 90)
    settingsLabel.BorderSizePixel = 4
    settingsLabel.Position = UDim2.new(1, 0, 0, 0)
    settingsLabel.Size = UDim2.new(0, 209, 0, 31)
    settingsLabel.Font = Enum.Font.SourceSansBold
    settingsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    settingsLabel.TextSize = 27.000
    settingsLabel.Text = description
    settingsLabel.TextScaled = true

    if _G.talentlessSettings and _G.talentlessSettings[key] == true then
        checkBox.Text = "x"
    else
        checkBox.Text = ""
    end

    checkBox.MouseButton1Click:Connect(function()
        _G.talentlessSettings[key] = not _G.talentlessSettings[key]
        if _G.talentlessSettings[key] == true then
            checkBox.Text = "x"
        else
            checkBox.Text = ""
        end
        updateSettingsFile()
    end)

    return checkBox

end

local function addButton(description, callback)

    local buttonContainer = Instance.new("Frame")
    local buttonLabel = Instance.new("TextLabel")
    local button = Instance.new("ImageButton")

    buttonContainer.Name = "buttonContainer"
    buttonContainer.Parent = settingsFrame
    buttonContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    buttonContainer.BackgroundTransparency = 1.000
    buttonContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    buttonContainer.BorderSizePixel = 0
    buttonContainer.Position = UDim2.new(0.0647834912, 0, 0.0367647074, 0)
    buttonContainer.Size = UDim2.new(0, 274, 0, 31)

    buttonLabel.Name = "buttonLabel"
    buttonLabel.Parent = buttonContainer
    buttonLabel.AnchorPoint = Vector2.new(1, 0)
    buttonLabel.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    buttonLabel.BorderColor3 = Color3.fromRGB(64, 68, 90)
    buttonLabel.BorderSizePixel = 4
    buttonLabel.Position = UDim2.new(1, 0, 0, 0)
    buttonLabel.Size = UDim2.new(0, 209, 0, 31)
    buttonLabel.Font = Enum.Font.SourceSansBold
    buttonLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    buttonLabel.TextSize = 27.000
    buttonLabel.Text = description
    buttonLabel.TextScaled = true

    button.Name = "button"
    button.Parent = buttonContainer
    button.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    button.BorderColor3 = Color3.fromRGB(64, 68, 90)
    button.BorderSizePixel = 4
    button.Size = UDim2.new(0, 35, 0, 31)
    button.Image = "rbxassetid://12804017021"

    button.MouseButton1Click:Connect(callback)
end

local secondaryLoaderCheckbox = addSetting("secondaryloader", translateText("secondaryloadertoggle"))
addSetting("disablefeaturedsongs", translateText("disablefeaturedsongs"))
addSetting("mutesfx", translateText("muteallsfx"))
addSetting("disablenotifs", translateText("disableallnotifs"))
addSetting("alwaysshowmidispoofer", translateText("alwaysshowmidispoofer"))
addSetting("disableaccidents", translateText("disablefakeaccidents"))

if not isfile("TALENTLESS_settings.txt") then
    local checkBoxArrow = Instance.new("TextLabel")
    checkBoxArrow.Name = "checkBoxArrow"
    checkBoxArrow.Parent = frame
    checkBoxArrow.BackgroundTransparency = 1
    checkBoxArrow.Size = UDim2.new(0, 100, 0, 31)
    checkBoxArrow.Position = UDim2.new(0, -93, 0, 64) -- 20px UIPaddingLeft - 105px offset, 47px settingsFrame Y + 20px UIPaddingTop
    checkBoxArrow.Text = translateText("trythis") .. " →"
    checkBoxArrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkBoxArrow.Font = Enum.Font.SourceSansBold
    checkBoxArrow.TextSize = 25
    checkBoxArrow.TextXAlignment = Enum.TextXAlignment.Right
    checkBoxArrow.ZIndex = 5 

    local TweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)
    local fadeTween = TweenService:Create(checkBoxArrow, tweenInfo, {TextTransparency = 1})
    fadeTween:Play()

    secondaryLoaderCheckbox.MouseButton1Click:Connect(function()
        fadeTween:Cancel()
        checkBoxArrow:Destroy()
    end)
end

addButton(translateText("forcestopallsongs"), function() -- below is identical to the stopplayingsongs function found in the loaders
    _G.STOPIT = true -- indicator for playing functions that tells it to halt.

    function pressKey(keys, beats, bpm)
    end

    function pressnote(note, octave, beats, bpm)
    end

    function rest(beats, bpm)
    end

    function keypress(keys, beats, bpm)
    end

    function keysequence16(keys, beats, bpm)
    end

    function finishedSong()
    end

    function adjustVelocity(h)
    end

    songisplaying = false
    _G.songisplaying = false

    playSound("18595195017", 0.5) -- universal function, was made in MAIN.lua
    stopPlayingSongs() -- function made by loader. if its nil who cares its at the end.
end)
