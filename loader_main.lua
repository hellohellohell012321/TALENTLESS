-- Copyright (C) 2026 hellohellohell012321
-- All Rights Reserved. Licensed under a custom source-available license.
-- See LICENSE file for details. Use, modification, or distribution
-- requires prior written permission from the copyright holder.

_G.STOPIT = false

local NotificationLibrary = loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/notif_lib.lua"))()

local translator = loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/translator.lua"))()

local function translateText(text)
    return translator:translateText(text) -- lang shouldve alr been set by main script.
end

local function playSound(soundId, loudness)
    if _G.talentlessSettings and _G.talentlessSettings["mutesfx"] == true then
        return
    end
    
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
    sound.Volume = loudness or 1
    sound:Play()
end

x = "hi"

loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/load.lua", true))()

local lilgui = Instance.new("ScreenGui")
local fram = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local pausebutton = Instance.new("ImageButton")
local stopbutton = Instance.new("ImageButton")
local bpmtext = Instance.new("TextLabel")
local upbpm = Instance.new("TextButton")
local downbpm = Instance.new("TextButton")
local errorbox = Instance.new("TextLabel")
local less = Instance.new("TextButton")
local more = Instance.new("TextButton")
local info = Instance.new("TextLabel")
local progressBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local progressFill = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local playhead = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

lilgui.Name = "lilgui"
lilgui.Parent = game:GetService("CoreGui")
lilgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

fram.Name = "fram"
fram.Parent = lilgui
fram.AnchorPoint = Vector2.new(0.5, 0.5)
fram.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
fram.BorderColor3 = Color3.fromRGB(0, 0, 0)
fram.BorderSizePixel = 0
fram.Position = UDim2.new(0.5, 0, 0.513671875, 0)
fram.Size = UDim2.new(0, 327, 0, 140)

UICorner.Parent = fram

pausebutton.Name = "pausebutton"
pausebutton.Parent = fram
pausebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pausebutton.BackgroundTransparency = 1.000
pausebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
pausebutton.BorderSizePixel = 0
pausebutton.Position = UDim2.new(0.038651865, 0, 0.0442799143, 3)
pausebutton.Size = UDim2.new(0, 50, 0, 50)
pausebutton.Image = "http://www.roblox.com/asset/?id=86903979265676"

stopbutton.Name = "stopbutton"
stopbutton.Parent = fram
stopbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
stopbutton.BackgroundTransparency = 1.000
stopbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
stopbutton.BorderSizePixel = 0
stopbutton.Position = UDim2.new(0.248281866, 0, 0.0442799143, 3)
stopbutton.Size = UDim2.new(0, 50, 0, 50)
stopbutton.Image = "http://www.roblox.com/asset/?id=99665585363395"

bpmtext.Name = "bpmtext"
bpmtext.Parent = fram
bpmtext.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
bpmtext.BorderColor3 = Color3.fromRGB(64, 68, 90)
bpmtext.BorderSizePixel = 4
bpmtext.Position = UDim2.new(0.508491933, 0, 0.108229935, 2)
bpmtext.Size = UDim2.new(0, 122, 0, 34)
bpmtext.Font = Enum.Font.SourceSansBold
bpmtext.Text = "BPM: nil"
bpmtext.TextColor3 = Color3.fromRGB(255, 255, 255)
bpmtext.TextScaled = true
bpmtext.TextSize = 14.000
bpmtext.TextWrapped = true

upbpm.Name = "upbpm"
upbpm.Parent = fram
upbpm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
upbpm.BackgroundTransparency = 1.000
upbpm.BorderColor3 = Color3.fromRGB(0, 0, 0)
upbpm.BorderSizePixel = 0
upbpm.Position = UDim2.new(0.401891857, 0, 0.108229935, 2)
upbpm.Size = UDim2.new(0, 34, 0, 34)
upbpm.Font = Enum.Font.SourceSansBold
upbpm.Text = "^"
upbpm.TextColor3 = Color3.fromRGB(255, 255, 255)
upbpm.TextScaled = true
upbpm.TextSize = 14.000
upbpm.TextWrapped = true

downbpm.Name = "downpbm"
downbpm.Parent = fram
downbpm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
downbpm.BackgroundTransparency = 1.000
downbpm.BorderColor3 = Color3.fromRGB(0, 0, 0)
downbpm.BorderSizePixel = 0
downbpm.Position = UDim2.new(0.881572008, 0, 0.108229935, 2)
downbpm.Size = UDim2.new(0, 34, 0, 34)
downbpm.Font = Enum.Font.SourceSansBold
downbpm.Text = "v"
downbpm.TextColor3 = Color3.fromRGB(255, 255, 255)
downbpm.TextScaled = true
downbpm.TextSize = 14.000
downbpm.TextWrapped = true

errorbox.Name = "errorbox"
errorbox.Parent = fram
errorbox.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
errorbox.BorderColor3 = Color3.fromRGB(64, 68, 90)
errorbox.BorderSizePixel = 4
errorbox.Position = UDim2.new(0.129282534, -2, 0.505622864, 0)
errorbox.Size = UDim2.new(0, 117, 0, 31)
errorbox.Font = Enum.Font.SourceSansBold
errorbox.Text = translateText("error margin") .. "0"
errorbox.TextColor3 = Color3.fromRGB(255, 255, 255)
errorbox.TextScaled = true
errorbox.TextSize = 14.000
errorbox.TextWrapped = true

less.Name = "less"
less.Parent = fram
less.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
less.BackgroundTransparency = 1.000
less.BorderColor3 = Color3.fromRGB(0, 0, 0)
less.BorderSizePixel = 0
less.Position = UDim2.new(0.486622483, -3, 0.505622864, 0)
less.Size = UDim2.new(0, 31, 0, 30)
less.Font = Enum.Font.SourceSansBold
less.Text = "↓"
less.TextColor3 = Color3.fromRGB(255, 255, 255)
less.TextScaled = true
less.TextSize = 14.000
less.TextWrapped = true

more.Name = "more"
more.Parent = fram
more.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
more.BackgroundTransparency = 1.000
more.BorderColor3 = Color3.fromRGB(0, 0, 0)
more.BorderSizePixel = 0
more.Position = UDim2.new(0.0318624042, -3, 0.505622864, 0)
more.Size = UDim2.new(0, 31, 0, 30)
more.Font = Enum.Font.SourceSansBold
more.Text = "↑"
more.TextColor3 = Color3.fromRGB(255, 255, 255)
more.TextScaled = true
more.TextSize = 14.000
more.TextWrapped = true

info.Name = "info"
info.Parent = fram
info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
info.BorderColor3 = Color3.fromRGB(0, 0, 0)
info.BorderSizePixel = 0
info.Position = UDim2.new(0.581422389, -3, 0.472012758, 0)
info.Size = UDim2.new(0, 116, 0, 39)
info.Font = Enum.Font.SourceSans
info.Text = "created by hellohellohell012321 at stxllar scripts!"
info.TextColor3 = Color3.fromRGB(0, 0, 0)
info.TextScaled = true
info.TextSize = 14.000
info.TextWrapped = true

progressBar.Name = "progressBar"
progressBar.Parent = fram
progressBar.AnchorPoint = Vector2.new(0.5, 0.5)
progressBar.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
progressBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
progressBar.BorderSizePixel = 0
progressBar.Position = UDim2.new(0.5, 0, 0.88, 0)
progressBar.Size = UDim2.new(0, 280, 0, 5)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = progressBar

progressFill.Name = "progressFill"
progressFill.Parent = progressBar
progressFill.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
progressFill.BorderSizePixel = 0
progressFill.Size = UDim2.new(0, 0, 1, 0)

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = progressFill

playhead.Name = "playhead"
playhead.Parent = progressBar
playhead.AnchorPoint = Vector2.new(0, 0.5)
playhead.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playhead.BorderSizePixel = 0
playhead.Position = UDim2.new(0, -10, 0.5, 0)
playhead.Size = UDim2.new(0, 10, 0, 10)

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = playhead



local UserInputService = game:GetService("UserInputService")

local gui = fram

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

local song = {}
local songThread
local finishedLoading = false

function stopPlayingSongs()

    print("stopped.")
    _G.STOPIT = true -- indicator for playing functions that tells it to halt.

    function pressKey(keys, beats, bpm)
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

    songisplaying = false -- indicator for telling the user they cant play when a song is playing, etc.
    _G.songisplaying = false

    playSound("18595195017", 0.5)
    NotificationLibrary:SendNotification("Success", translateText("stopping..."), 1)
    lilgui:Destroy()
end

if _G.toggleUiTalentless and _G.toggleUiTalentless:IsA("TextButton") then
    _G.toggleUiTalentless.MouseButton1Click:Connect(function()
        fram.Visible = not fram.Visible
        if fram.Visible then
            playSound(70452176150315, 0.1)
        else
            playSound(1524549907, 0.1)
        end
    end)
end

function finishedSong()
    table.insert(song, {
        type = "finishedSong"
    })
    finishedLoading = true
end

local function finishedSongtrigger()
    if _G.STOPIT then return end
    playSound("18595195017", 0.5)
    NotificationLibrary:SendNotification("Success", translateText("songfinished"), 3)
    songisplaying = false
    _G.songisplaying = false
    lilgui:Destroy()
    lilgui = nil
    _G.STOPIT = true
end

local resumeEvent = Instance.new("BindableEvent")

pausing = false

local function pauseSong()
    pausing = not pausing

    if not pausing then
        pausebutton.Image = "http://www.roblox.com/asset/?id=86903979265676"
        resumeEvent:Fire()
    else
        pausing = true
        pausebutton.Image = "http://www.roblox.com/asset/?id=130610056660845"
    end
end

pausebutton.MouseButton1Click:Connect(pauseSong)

stopbutton.MouseButton1Click:Connect(stopPlayingSongs)

function updatebpmtext()
    bpmtext.Text = "BPM: " .. tostring(bpm)
end

updatebpmtext()

upbpm.MouseButton1Click:Connect(
    function()
        bpm = bpm + 10
        updatebpmtext()
    end
)

downbpm.MouseButton1Click:Connect(
    function()
        bpm = bpm - 10
        updatebpmtext()
    end
)

if not errormargin then
    errormargin = 0
else
end

local function round(num, decimalPlaces)
    local mult = 10 ^ decimalPlaces
    return math.floor(num * mult + 0.5) / mult
end

local function updateErrorMargin()
    errorbox.Text = translateText("error margin") .. tostring(round(errormargin * 100, 2))
end

updateErrorMargin()

more.MouseButton1Click:Connect(
    function()
        errormargin = round(errormargin + 0.01, 3)
        updateErrorMargin()
    end
)

less.MouseButton1Click:Connect(
    function()
        if errormargin <= 0 then
            return
        end
        errormargin = round(errormargin - 0.01, 3)
        updateErrorMargin()
    end
)

VirtualInputManager = game:GetService("VirtualInputManager")

local RunService = game:GetService("RunService")

local function preciseWait(seconds)
    local start = os.clock()
    -- Busy wait for sub-frame precision, but yield if there's still > 0.015s left
    while os.clock() - start < seconds do
        if seconds - (os.clock() - start) > 0.015 then
            RunService.Heartbeat:Wait()
        end
    end
end

-- PLAYHEAD FUNCTIONS
-- PLAYHEAD FUNCTIONS
-- PLAYHEAD FUNCTIONS

local halted = false
local tempClear = false
local currentSongPosition = 0  -- Current position in beats
local totalSongBeats = 0       -- Total song length in beats
local isDraggingPlayhead = false

local draggingPlayhead = false
local playheadDragStart = nil

local waspaused = false
playhead.InputBegan:Connect(function(input) -- pick up the playhead, pause the song
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        draggingPlayhead = true
        isDraggingPlayhead = true
        
        if pausing == true then waspaused = true else waspaused = false end
        pausing = true
    end
end)

UserInputService.InputEnded:Connect(function(input) -- let go of the playhead, resume the song and call percentage skip func
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        if draggingPlayhead then
            draggingPlayhead = false
            isDraggingPlayhead = false
            
            -- Calculate percentage based on playhead position
            local percentage = (playhead.Position.X.Scale * 100)
            
            if waspaused == false then
                pausing = false
                resumeEvent:Fire()
            else waspaused = false end

            skipToPercentage(percentage)
        end
    end
end)

UserInputService.InputChanged:Connect(function(input) -- dragging the playhead
    if draggingPlayhead and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        
        local mousePos = input.Position
        local barPos = progressBar.AbsolutePosition
        local barSize = progressBar.AbsoluteSize
        
        local relativeX = mousePos.X - barPos.X
        local percentage = math.clamp(relativeX / barSize.X, 0, 1)
        
        playhead.Position = UDim2.new(percentage, -10, 0.5, 0)
        progressFill.Size = UDim2.new(percentage, 0, 1, 0)
    end
end)

local function calculateTotalBeats()
    local totalBeats = 0
    for _, action in pairs(song) do
        if action.type == "rest" then
            totalBeats = totalBeats + action.beats
        end
    end
    return totalBeats
end

function getSkipIndex(percentage) -- function to return the part of the song to skip to based on percentage
    if percentage < 0 or percentage > 100 then
        print("Invalid percentage. Must be 0-100")
        return
    end

    local totalBeats = calculateTotalBeats()
    local targetBeats = (percentage / 100) * totalBeats
    local currentBeats = 0
    local targetIndex = 1
       
    for i, action in pairs(song) do
        if action.type == "rest" then
            currentBeats = currentBeats + action.beats
            if currentBeats >= targetBeats then
                targetIndex = i
                break
            end
        end
    end
    
    return targetIndex
end

local function updatePlayheadVisual()
    if totalSongBeats == 0 then return end
    
    local percentage = currentSongPosition / totalSongBeats
    percentage = math.clamp(percentage, 0, 1)

    playhead.Position = UDim2.new(percentage, -10, 0.5, 0)

    progressFill.Size = UDim2.new(percentage, 0, 1, 0)
end

function skipToPercentage(percentage)
    tempClear = true
    halted = false
    repeat wait() until halted == true
    tempClear = false

    local targetIndex = getSkipIndex(percentage)

    local targetBeats = (percentage / 100) * totalSongBeats
    currentSongPosition = 0

    for i = 1, targetIndex - 1 do
        if song[i].type == "rest" then
            currentSongPosition = currentSongPosition + song[i].beats
        end
    end

    updatePlayheadVisual()

    songThread = task.spawn(function()
        for i = targetIndex, #song do
            if _G.STOPIT or tempClear then halted = true break end
            
            local action = song[i]
            
            if action.type == "keypress" then
                keypresstrigger(action.keys, action.beats, bpm, (action.mergeCount or 1) > 1)
            elseif action.type == "rest" then
                resttrigger(action.beats, bpm)
            elseif action.type == "adjustVelocity" then
                adjustVelocitytrigger(action.vel)
            elseif action.type == "pedalDown" then
                pedalDowntrigger()
            elseif action.type == "pedalUp" then
                pedalUptrigger()
            elseif action.type == "finishedSong" then
                finishedSongtrigger()
            end
        end
    end)
end

-- PRESSKEY FUNCTION
-- PRESSKEY FUNCTION
-- PRESSKEY FUNCTION

local midiKeyMappings = {
    ["Ctrl+1"] = 21,    -- A0
    ["Ctrl+2"] = 22,    -- A#0/Bb0  
    ["Ctrl+3"] = 23,    -- B0

    ["Ctrl+4"] = 24,    -- C1
    ["Ctrl+5"] = 25,    -- C#1/Db1
    ["Ctrl+6"] = 26,    -- D1
    ["Ctrl+7"] = 27,    -- D#1/Eb1
    ["Ctrl+8"] = 28,    -- E1
    ["Ctrl+9"] = 29,    -- F1
    ["Ctrl+0"] = 30,    -- F#1/Gb1
    ["Ctrl+q"] = 31,    -- G1
    ["Ctrl+w"] = 32,    -- G#1/Ab1
    ["Ctrl+e"] = 33,    -- A1
    ["Ctrl+r"] = 34,    -- A#1/Bb1
    ["Ctrl+t"] = 35,    -- B1

    ["1"] = 36,         -- C2
    ["!"] = 37,         -- C#2/Db2 (Shift+1)
    ["2"] = 38,         -- D2
    ["@"] = 39,         -- D#2/Eb2 (Shift+2)
    ["3"] = 40,         -- E2
    ["4"] = 41,         -- F2
    ["$"] = 42,         -- F#2/Gb2 (Shift+4)
    ["5"] = 43,         -- G2
    ["%"] = 44,         -- G#2/Ab2 (Shift+5)
    ["6"] = 45,         -- A2
    ["^"] = 46,         -- A#2/Bb2 (Shift+6)
    ["7"] = 47,         -- B2

    ["8"] = 48,         -- C3
    ["*"] = 49,         -- C#3/Db3 (Shift+8)
    ["9"] = 50,         -- D3
    ["("] = 51,         -- D#3/Eb3 (Shift+9)
    ["0"] = 52,         -- E3
    ["q"] = 53,         -- F3
    ["Q"] = 54,         -- F#3/Gb3 (Shift+q)
    ["w"] = 55,         -- G3
    ["W"] = 56,         -- G#3/Ab3 (Shift+w)
    ["e"] = 57,         -- A3
    ["E"] = 58,         -- A#3/Bb3 (Shift+e)
    ["r"] = 59,         -- B3

    ["t"] = 60,         -- C4 (Middle C)
    ["T"] = 61,         -- C#4/Db4 (Shift+t)
    ["y"] = 62,         -- D4
    ["Y"] = 63,         -- D#4/Eb4 (Shift+y)
    ["u"] = 64,         -- E4
    ["i"] = 65,         -- F4
    ["I"] = 66,         -- F#4/Gb4 (Shift+i)
    ["o"] = 67,         -- G4
    ["O"] = 68,         -- G#4/Ab4 (Shift+o)
    ["p"] = 69,         -- A4 (440Hz)
    ["P"] = 70,         -- A#4/Bb4 (Shift+p)
    ["a"] = 71,         -- B4

    ["s"] = 72,         -- C5
    ["S"] = 73,         -- C#5/Db5 (Shift+s)
    ["d"] = 74,         -- D5
    ["D"] = 75,         -- D#5/Eb5 (Shift+d)
    ["f"] = 76,         -- E5
    ["g"] = 77,         -- F5
    ["G"] = 78,         -- F#5/Gb5 (Shift+g)
    ["h"] = 79,         -- G5
    ["H"] = 80,         -- G#5/Ab5 (Shift+h)
    ["j"] = 81,         -- A5
    ["J"] = 82,         -- A#5/Bb5 (Shift+j)
    ["k"] = 83,         -- B5

    ["l"] = 84,         -- C6
    ["L"] = 85,         -- C#6/Db6 (Shift+l)
    ["z"] = 86,         -- D6
    ["Z"] = 87,         -- D#6/Eb6 (Shift+z)
    ["x"] = 88,         -- E6
    ["c"] = 89,         -- F6
    ["C"] = 90,         -- F#6/Gb6 (Shift+c)
    ["v"] = 91,         -- G6
    ["V"] = 92,         -- G#6/Ab6 (Shift+v)
    ["b"] = 93,         -- A6
    ["B"] = 94,         -- A#6/Bb6 (Shift+b)
    ["n"] = 95,         -- B6

    ["m"] = 96,         -- C7
    ["M"] = 97,         -- C#7/Db7 (Shift+m)
    ["Ctrl+u"] = 98,    -- D7
    ["Ctrl+i"] = 99,    -- D#7/Eb7
    ["Ctrl+o"] = 100,   -- E7
    ["Ctrl+p"] = 101,   -- F7
    ["Ctrl+a"] = 102,   -- F#7/Gb7
    ["Ctrl+s"] = 103,   -- G7
    ["Ctrl+d"] = 104,   -- G#7/Ab7
    ["Ctrl+f"] = 105,   -- A7
    ["Ctrl+g"] = 106,   -- A#7/Bb7
    ["Ctrl+h"] = 107,   -- B7
    ["Ctrl+j"] = 108,   -- C8
}

local midiNumpadMappings = {
    [0] = Enum.KeyCode.KeypadZero,        -- NUM0
    [1] = Enum.KeyCode.KeypadOne,         -- NUM1  
    [2] = Enum.KeyCode.KeypadTwo,         -- NUM2
    [3] = Enum.KeyCode.KeypadThree,       -- NUM3
    [4] = Enum.KeyCode.KeypadFour,        -- NUM4
    [5] = Enum.KeyCode.KeypadFive,        -- NUM5
    [6] = Enum.KeyCode.KeypadSix,         -- NUM6
    [7] = Enum.KeyCode.KeypadSeven,       -- NUM7
    [8] = Enum.KeyCode.KeypadEight,       -- NUM8
    [9] = Enum.KeyCode.KeypadNine,        -- NUM9
    [10] = Enum.KeyCode.KeypadMinus,      -- - (minus)
    [11] = Enum.KeyCode.KeypadPlus        -- + (plus)
}

local shiftKeys = {
    "!","@","#","$","%","^","&","*","(",")",
    "Q","W","E","R","T","Y","U","I","O","P",
    "A","S","D","F","G","H","J","K","L","Z",
    "X","C","V","B","N","M"
}

local keyMappings = {
    ["1"] = Enum.KeyCode.One, ["!"] = Enum.KeyCode.One, ["2"] = Enum.KeyCode.Two, ["@"] = Enum.KeyCode.Two,
    ["3"] = Enum.KeyCode.Three, ["#"] = Enum.KeyCode.Three, ["4"] = Enum.KeyCode.Four, ["$"] = Enum.KeyCode.Four,
    ["5"] = Enum.KeyCode.Five, ["%"] = Enum.KeyCode.Five, ["6"] = Enum.KeyCode.Six, ["^"] = Enum.KeyCode.Six,
    ["7"] = Enum.KeyCode.Seven, ["&"] = Enum.KeyCode.Seven, ["8"] = Enum.KeyCode.Eight, ["*"] = Enum.KeyCode.Eight,
    ["9"] = Enum.KeyCode.Nine, ["("] = Enum.KeyCode.Nine, ["0"] = Enum.KeyCode.Zero, [")"] = Enum.KeyCode.Zero,
    ["q"] = Enum.KeyCode.Q, ["Q"] = Enum.KeyCode.Q, ["w"] = Enum.KeyCode.W, ["W"] = Enum.KeyCode.W,
    ["e"] = Enum.KeyCode.E, ["E"] = Enum.KeyCode.E, ["r"] = Enum.KeyCode.R, ["R"] = Enum.KeyCode.R,
    ["t"] = Enum.KeyCode.T, ["T"] = Enum.KeyCode.T, ["y"] = Enum.KeyCode.Y, ["Y"] = Enum.KeyCode.Y,
    ["u"] = Enum.KeyCode.U, ["U"] = Enum.KeyCode.U, ["i"] = Enum.KeyCode.I, ["I"] = Enum.KeyCode.I,
    ["o"] = Enum.KeyCode.O, ["O"] = Enum.KeyCode.O, ["p"] = Enum.KeyCode.P, ["P"] = Enum.KeyCode.P,
    ["a"] = Enum.KeyCode.A, ["A"] = Enum.KeyCode.A, ["s"] = Enum.KeyCode.S, ["S"] = Enum.KeyCode.S,
    ["d"] = Enum.KeyCode.D, ["D"] = Enum.KeyCode.D, ["f"] = Enum.KeyCode.F, ["F"] = Enum.KeyCode.F,
    ["g"] = Enum.KeyCode.G, ["G"] = Enum.KeyCode.G, ["h"] = Enum.KeyCode.H, ["H"] = Enum.KeyCode.H,
    ["j"] = Enum.KeyCode.J, ["J"] = Enum.KeyCode.J, ["k"] = Enum.KeyCode.K, ["K"] = Enum.KeyCode.K,
    ["l"] = Enum.KeyCode.L, ["L"] = Enum.KeyCode.L, ["z"] = Enum.KeyCode.Z, ["Z"] = Enum.KeyCode.Z,
    ["x"] = Enum.KeyCode.X, ["X"] = Enum.KeyCode.X, ["c"] = Enum.KeyCode.C, ["C"] = Enum.KeyCode.C,
    ["v"] = Enum.KeyCode.V, ["V"] = Enum.KeyCode.V, ["b"] = Enum.KeyCode.B, ["B"] = Enum.KeyCode.B,
    ["n"] = Enum.KeyCode.N, ["N"] = Enum.KeyCode.N, ["m"] = Enum.KeyCode.M, ["M"] = Enum.KeyCode.M
}

local function noteHoldWait(beats, bpm, shorts)
    local waittime
    local randomOff

    if not shorts then
        local noteTime = (beats / bpm) * 60
        local maxRan = noteTime * 0.4 -- 40% of note hold time
        randomOff = math.random() * maxRan -- num from 0 to maxRan
        waittime = noteTime * 0.9 - randomOff -- note is held from 0.5-0.9 of its original duration.

        if errormargin ~= 0 then
            local extraSpread = noteTime * errormargin * 2 
            waittime = waittime + (math.random() * 2 - 1) * extraSpread
        end
    else -- if short notes...
        local beatDuration = 60 / bpm          -- length of one beat in seconds
        local safeCeiling = beatDuration / 8 -- never take up more than half a beat

        local baseMin = 0.01
        local baseMax = 0.13

        if errormargin ~= 0 then
            baseMax = baseMax + errormargin / 2
        end

        waittime = baseMin + math.random() * (baseMax - baseMin)
    end

    task.wait(waittime)
end

local function triggerPress(key, beats, bpm, shift, ctrlRequired)

    if not keyMappings[key] and not midiKeyMappings[key] then
        return
    end

    local shiftApplied = false
    local unshiftApplied = false
    local shorts

    if type(beats) == "number" then
        shorts = false
    else
        shorts = true
    end

    local digit1
    local digit2 
    local digit3
    local digit4
    local midiVel

    if _G.midiSpoof then
        digit1 = math.floor(midiKeyMappings[key] / 12) -- get the octave number
        digit2 = math.floor(midiKeyMappings[key] % 12) -- get the note number within the octave
        print(key .. ": " .. midiKeyMappings[key])

        if vel then
            midiVel = math.floor(vel * 127)
        else
            midiVel = 64
        end

        digit3 = math.floor(midiVel / 12) -- velocity digit 1
        digit4 = math.floor(midiVel % 12) -- velocity digit 2
    end

    if errormargin ~= 0 then
        if math.random() < 0.5 then -- 50% chance to apply jitter
            task.wait((math.random() * 0.5 - 0.25) * errormargin) -- +- quarter of errormargin
        end
    end

    if not _G.midiSpoof then
        if shift then
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game)
        end

        if not _G.talentlessSettings or
        _G.talentlessSettings and not _G.talentlessSettings["disableaccidents"] then
            local agf = errormargin * 100
            if math.random(1, 1000) <= agf then
                VirtualInputManager:SendKeyEvent(not shift, Enum.KeyCode.LeftShift, false, game) -- shift/unshift if it applies
                shiftApplied = true
                print("shift/unshift applied")
            end
        end
        
        if ctrlRequired then
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
        end
        
        VirtualInputManager:SendKeyEvent(true, keyMappings[key], false, game)

        if ctrlRequired then
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, game)
        end

        if shiftApplied == true then
            if not shift then
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, game) -- turn shift off if shift was applied to a non-shift
                shiftApplied = false
            end
        end

        if shift then
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, game)
        end

        noteHoldWait(beats, bpm, shorts)
        
        VirtualInputManager:SendKeyEvent(false, keyMappings[key], false, game)
    else -- midispoof is on
        
        -- Note-ON sequence
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.KeypadMultiply, false, game)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.KeypadMultiply, false, game)
        VirtualInputManager:SendKeyEvent(true, midiNumpadMappings[digit1], false, game)
        VirtualInputManager:SendKeyEvent(false, midiNumpadMappings[digit1], false, game)
        VirtualInputManager:SendKeyEvent(true, midiNumpadMappings[digit2], false, game)
        VirtualInputManager:SendKeyEvent(false, midiNumpadMappings[digit2], false, game)
        VirtualInputManager:SendKeyEvent(true, midiNumpadMappings[digit3], false, game)
        VirtualInputManager:SendKeyEvent(false, midiNumpadMappings[digit3], false, game)
        VirtualInputManager:SendKeyEvent(true, midiNumpadMappings[digit4], false, game)
        VirtualInputManager:SendKeyEvent(false, midiNumpadMappings[digit4], false, game)

        noteHoldWait(beats, bpm, shorts)
        
        -- Note-OFF sequence (multiply + octave + note + 0 + 0)
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.KeypadMultiply, false, game)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.KeypadMultiply, false, game)
        VirtualInputManager:SendKeyEvent(true, midiNumpadMappings[digit1], false, game)  -- same octave
        VirtualInputManager:SendKeyEvent(false, midiNumpadMappings[digit1], false, game)
        VirtualInputManager:SendKeyEvent(true, midiNumpadMappings[digit2], false, game)  -- same note
        VirtualInputManager:SendKeyEvent(false, midiNumpadMappings[digit2], false, game)
        VirtualInputManager:SendKeyEvent(true, midiNumpadMappings[0], false, game)       -- vel=0
        VirtualInputManager:SendKeyEvent(false, midiNumpadMappings[0], false, game)
        VirtualInputManager:SendKeyEvent(true, midiNumpadMappings[0], false, game)       -- vel=0
        VirtualInputManager:SendKeyEvent(false, midiNumpadMappings[0], false, game)
    end
end

local function pressKey(keys, beats, bpm, isChord)
    if _G.STOPIT then return end

    local shiftRequired, nonShift, toPressMidi = {}, {}, {}
    local ctrlRequired = false

    if _G.midiSpoof then
        if keys:sub(1, 5) == "Ctrl+" then
            table.insert(toPressMidi, keys) -- insert the whole string as 1 entry
        else 
            for i = 1, #keys do
                local key = keys:sub(i, i)
                table.insert(toPressMidi, key)
            end
        end

        -- Press
        for _, key in ipairs(toPressMidi) do
            coroutine.wrap(
                function()
                    triggerPress(key, beats, bpm, false)
                end
            )()
            if isChord and errormargin ~= 0 then
                if math.random() < 0.5 then -- 50% chance to apply delay
                    task.wait((math.random() - 0.5) * errormargin) -- +- half of errormargin
                end
            end
        end
    else
        if keys:sub(1, 5) == "Ctrl+" then
            ctrlRequired = true
            keys = keys:sub(6) -- remove ctrl+
        end

        if not ctrlRequired then
            -- seperate shift and no shift
            for i = 1, #keys do
                local key = keys:sub(i, i)
                table.insert(table.find(shiftKeys, key) and shiftRequired or nonShift, key)
            end
        end

        -- Press non-shift keys first
        for _, key in ipairs(nonShift) do
            coroutine.wrap(
                function()
                    triggerPress(key, beats, bpm, false, ctrlRequired)
                end
            )()
            if isChord and errormargin ~= 0 then
                if math.random() < 0.5 then -- 50% chance to apply delay
                    task.wait((math.random() - 0.5) * errormargin) -- +- half of errormargin
                end
            end
        end

        -- Press shift-required keys
        if #shiftRequired > 0 then
            for _, key in ipairs(shiftRequired) do
                coroutine.wrap(
                    function()
                        triggerPress(key, beats, bpm, true, ctrlRequired)
                    end
                )()
                if isChord and errormargin ~= 0 then
                    if math.random() < 0.5 then -- 50% chance to apply delay
                        task.wait((math.random() - 0.5) * errormargin)
                    end
                end
            end
        end

        if ctrlRequired then
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, game)
        end

    end
end

-- KEYPRESS FUNCTION
-- KEYPRESS FUNCTION
-- KEYPRESS FUNCTION

-- the one used in like all songs
function keypress(keys, beats, bpm) -- bpm will not be added to the table, because it can be changed.
    local last = song[#song]

    if last and last.type == "keypress" and last.beats == beats and keys:sub(1,5) ~= "Ctrl+" and last.keys:sub(1,5) ~= "Ctrl+" then
        last.keys = last.keys .. keys
        last.mergeCount = (last.mergeCount or 1) + 1
    else
        table.insert(song, {
            type = "keypress",
            keys = keys,
            beats = beats,
            mergeCount = 1
        })
    end
end

function keypresstrigger(keys, beats, bpm, isChord)
    if _G.STOPIT then return end
    if pausing then
        resumeEvent.Event:Wait()
    end
    coroutine.wrap(
        function()
            pressKey(keys, beats, bpm, isChord)
        end
    )()
end

-- VELOCITY FUNCTION
-- VELOCITY FUNCTION
-- VELOCITY FUNCTION

function adjustVelocity(vel)
    table.insert(song, {
        type = "adjustVelocity",
        vel = vel
    })
end

function adjustVelocitytrigger(velo)
    if _G.STOPIT then return end

    if _G.midiSpoof then 
        vel = velo
    else
        local velocityMap = "58qrupdhl"

        velo = math.clamp(velo, 0, 1)

        if velo < 0.27 then
            topress = "2"
        elseif velo >= 0.88 then
            topress = "c"
        else
            local index = math.floor((velo - 0.27) / 0.61 * (#velocityMap - 2)) + 2
            topress = velocityMap:sub(index, index)
        end

        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftAlt, false, game)
        VirtualInputManager:SendKeyEvent(true, keyMappings[topress], false, game)
        VirtualInputManager:SendKeyEvent(false, keyMappings[topress], false, game)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftAlt, false, game)
    end
end

-- REST FUNCTION
-- REST FUNCTION
-- REST FUNCTION

function rest(beats, bpm) -- bpm will not be added to the table, because it may be changed.
    table.insert(song, {
        type = "rest",
        beats = beats
    })
end

function resttrigger(beats, bpm)
    if _G.STOPIT then return end
    
    local waitTime = (beats / bpm) * 60

    if _G.talentlessSettings and _G.talentlessSettings["secondaryloader"] then
        preciseWait(waitTime)
    else
        task.wait(waitTime)
    end
    
    -- update playhead stuffs
    currentSongPosition = currentSongPosition + beats
    updatePlayheadVisual()
end

-- PEDAL FUNCTIONS
-- PEDAL FUNCTIONS
-- PEDAL FUNCTIONS

function pedalDown()
    table.insert(song, {
        type = "pedalDown"
    })
end

function pedalDowntrigger()
    if _G.STOPIT then return end
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
end

function pedalUp()
    table.insert(song, {
        type = "pedalUp"
    })
end

function pedalUptrigger()
    if _G.STOPIT then return end
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
end

-- MAIN SONG LOOP
-- MAIN SONG LOOP
-- MAIN SONG LOOP

songThread = task.spawn(function()
    repeat wait() until finishedLoading == true
    
    totalSongBeats = calculateTotalBeats()
    totalSongBeats = calculateTotalBeats()
    currentSongPosition = 0  -- cause we js started
    updatePlayheadVisual()

    for i = 1, #song do
        if _G.STOPIT or tempClear then halted = true break end
        
        local action = song[i]
        
        if action.type == "keypress" then
            keypresstrigger(action.keys, action.beats, bpm, (action.mergeCount or 1) > 1)
        elseif action.type == "rest" then
            resttrigger(action.beats, bpm)
        elseif action.type == "adjustVelocity" then
            adjustVelocitytrigger(action.vel)
        elseif action.type == "pedalDown" then
            pedalDowntrigger()
        elseif action.type == "pedalUp" then
            pedalUptrigger()
        elseif action.type == "finishedSong" then
            finishedSongtrigger()
        end
    end
end)

watcher = task.spawn(function()
    while task.wait(0.1) do
        if _G.STOPIT then
            song = {}
            task.cancel(songThread)
            return
        end
    end
end)

-- load settings

if not _G.talentlessSettings then -- it was run before the main script

    _G.talentlessSettings = {}

    local settingsOptions = {
        "secondaryloader",
        "mutesfx",
        "disablenotifs",
        "alwaysshowmidispoofer",
        "disableaccidents"
    }

    if isfile("TALENTLESS_settings.txt") then
        print("settings file found")
        local settingsCode = readfile("TALENTLESS_settings.txt")

        local func = loadstring(settingsCode)
        if func then
            print("settings file is good")
            loadstring(settingsCode)()
        else
            print("settings file is broken")
            NotificationLibrary:SendNotification("Error", "Someting went wrong loading your settings. Your settings have been reset.", 5)
            playSound("7383525713", 0.5)
        end

        for _, option in ipairs(settingsOptions) do
            if not string.find(settingsCode, option) then -- they may not have this option saved; due to a new update etc.
                _G.talentlessSettings[option] = false
            end
        end
    else
        for _, option in ipairs(settingsOptions) do
            _G.talentlessSettings[option] = false
        end
    end
end
