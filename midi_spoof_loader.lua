-- some parts are skidded from chatgpt
-- the comments are not from chatgpt though becvause i legitamately need them for debugging and to easily know whats going on if theres an issue

_G.STOPIT = false

local NotificationLibrary =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/notif_lib.lua"))()

function playSound(soundId, loudness)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
    sound.Volume = loudness or 1
    sound:Play()
end

x = "hi"

loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/load.lua", true))()

wait(0.3)

playSound("6493287948", 0.1)
NotificationLibrary:SendNotification("Success", "Began playing song.", 1)

-- StarterGui.ScreenGui
lilgui = Instance.new("ScreenGui", game:GetService("CoreGui"))
lilgui["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

-- StarterGui.ScreenGui.Frame
local fram = Instance.new("Frame", lilgui)
fram["BorderSizePixel"] = 0
fram["BackgroundColor3"] = Color3.fromRGB(32, 32, 32)
fram["Size"] = UDim2.new(0, 327, 0, 119)
fram["Position"] = UDim2.new(0.5, 0, 0.5, 0)
fram["BorderColor3"] = Color3.fromRGB(0, 0, 0)
fram.AnchorPoint = Vector2.new(0.5, 0.5)

-- StarterGui.ScreenGui.Frame.UICorner
local uic = Instance.new("UICorner", fram)

-- StarterGui.ScreenGui.Frame.pause
local pausebutton = Instance.new("ImageButton", fram)
pausebutton["BorderSizePixel"] = 0
pausebutton["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
pausebutton["Image"] = [[http://www.roblox.com/asset/?id=86903979265676]]
pausebutton["Size"] = UDim2.new(0, 50, 0, 50)
pausebutton["Name"] = [[pause]]
pausebutton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
pausebutton["Position"] = UDim2.new(0.04171, 0, 0.09428, 0)
pausebutton.BackgroundTransparency = 1

-- StarterGui.ScreenGui.Frame.stop
stopbutton = Instance.new("ImageButton", fram)
stopbutton["BorderSizePixel"] = 0
stopbutton["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
stopbutton["Image"] = [[http://www.roblox.com/asset/?id=99665585363395]]
stopbutton["Size"] = UDim2.new(0, 50, 0, 50)
stopbutton["Name"] = [[stop]]
stopbutton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
stopbutton["Position"] = UDim2.new(0.25134, 0, 0.09428, 0)
stopbutton.BackgroundTransparency = 1

-- StarterGui.ScreenGui.Frame.bpm
local bpmtext = Instance.new("TextLabel", fram)
bpmtext["TextWrapped"] = true
bpmtext["BorderSizePixel"] = 0
bpmtext["TextSize"] = 14
bpmtext["TextScaled"] = true
bpmtext["BackgroundColor3"] = Color3.fromRGB(255, 108, 154)
bpmtext["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
bpmtext["TextColor3"] = Color3.fromRGB(0, 0, 0)
bpmtext["Size"] = UDim2.new(0, 122, 0, 34)
bpmtext["BorderColor3"] = Color3.fromRGB(0, 0, 0)
bpmtext["Text"] = "BPM: " .. tostring(bpm)
bpmtext["Name"] = [[bpm]]
bpmtext["Position"] = UDim2.new(0.51155, 0, 0.15823, 0)

-- StarterGui.ScreenGui.Frame.up
local upbpm = Instance.new("TextButton", fram)
upbpm["TextWrapped"] = true
upbpm["BorderSizePixel"] = 0
upbpm["TextColor3"] = Color3.fromRGB(255, 255, 255)
upbpm["TextSize"] = 14
upbpm["TextScaled"] = true
upbpm["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
upbpm["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
upbpm["Size"] = UDim2.new(0, 34, 0, 34)
upbpm["BackgroundTransparency"] = 1
upbpm["Name"] = [[up]]
upbpm["BorderColor3"] = Color3.fromRGB(0, 0, 0)
upbpm["Text"] = [[^]]
upbpm["Position"] = UDim2.new(0.40495, 0, 0.15823, 0)

-- StarterGui.ScreenGui.Frame.down
local downbpm = Instance.new("TextButton", fram)
downbpm["TextWrapped"] = true
downbpm["BorderSizePixel"] = 0
downbpm["TextColor3"] = Color3.fromRGB(255, 255, 255)
downbpm["TextSize"] = 14
downbpm["TextScaled"] = true
downbpm["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
downbpm["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
downbpm["Size"] = UDim2.new(0, 34, 0, 34)
downbpm["BackgroundTransparency"] = 1
downbpm["Name"] = [[down]]
downbpm["BorderColor3"] = Color3.fromRGB(0, 0, 0)
downbpm["Text"] = [[v]]
downbpm["Position"] = UDim2.new(0.88463, 0, 0.15823, 0)

-- StarterGui.ScreenGui.Frame.errorbox
local errorbox = Instance.new("TextLabel", fram)
errorbox["TextWrapped"] = true
errorbox["BorderSizePixel"] = 0
errorbox["TextSize"] = 14
errorbox["TextScaled"] = true
errorbox["BackgroundColor3"] = Color3.fromRGB(255, 109, 155)
errorbox["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
errorbox["TextColor3"] = Color3.fromRGB(0, 0, 0)
errorbox["Size"] = UDim2.new(0, 117, 0, 31)
errorbox["BorderColor3"] = Color3.fromRGB(0, 0, 0)
errorbox["Text"] = [[error margin: 0.00]]
errorbox["Name"] = [[errorbox]]
errorbox["Position"] = UDim2.new(0.11705, 0, 0.59848, 0)

-- StarterGui.ScreenGui.Frame.less
local less = Instance.new("TextButton", fram)
less["TextWrapped"] = true
less["BorderSizePixel"] = 0
less["TextColor3"] = Color3.fromRGB(255, 255, 255)
less["TextSize"] = 14
less["TextScaled"] = true
less["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
less["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
less["Size"] = UDim2.new(0, 31, 0, 30)
less["BackgroundTransparency"] = 1
less["Name"] = [[less]]
less["BorderColor3"] = Color3.fromRGB(0, 0, 0)
less["Text"] = [[↓]]
less["Position"] = UDim2.new(0.47439, 0, 0.59848, 0)

-- StarterGui.ScreenGui.Frame.more
local more = Instance.new("TextButton", fram)
more["TextWrapped"] = true
more["BorderSizePixel"] = 0
more["TextColor3"] = Color3.fromRGB(255, 255, 255)
more["TextSize"] = 14
more["TextScaled"] = true
more["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
more["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
more["Size"] = UDim2.new(0, 31, 0, 30)
more["BackgroundTransparency"] = 1
more["Name"] = [[more]]
more["BorderColor3"] = Color3.fromRGB(0, 0, 0)
more["Text"] = [[↑]]
more["Position"] = UDim2.new(0.01963, 0, 0.59848, 0)

local info = Instance.new("TextLabel", fram)
info["TextWrapped"] = true
info["BorderSizePixel"] = 0
info["TextSize"] = 14
info["TextScaled"] = true
info["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
info["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
info["TextColor3"] = Color3.fromRGB(0, 0, 0)
info["Size"] = UDim2.new(0, 126, 0, 39)
info["BorderColor3"] = Color3.fromRGB(0, 0, 0)
info["Text"] = [[created by hellohellohell012321 at stxllar scripts!]]
info["Name"] = [[info]]
info["Position"] = UDim2.new(0.56919, 0, 0.56487, 0)

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

function stopPlayingSongs()

    print("stopped.")
    _G.STOPIT = true

    songisplaying = false

    playSound("6493287948", 0.1)
    NotificationLibrary:SendNotification("Success", "Stopping...", 1)
    lilgui:Destroy()
end

function finishedSong()
    if _G.STOPIT then return end
    playSound("6493287948", 0.1)
    NotificationLibrary:SendNotification("Success", "Your song has finished.", 3)
    songisplaying = false
    lilgui:Destroy()
    lilgui = nil
end

local resumeEvent = Instance.new("BindableEvent")

pausing = false

local function pauseSong()
    pausing = not pausing

    if not pausing then
        pausebutton.Image = "http://www.roblox.com/asset/?id=86903979265676"
        resumeEvent:Fire()
        pausing = false
        playSound("6493287948", 0.1)
        NotificationLibrary:SendNotification("Success", "You have resumed playing.", 1)
    else
        pausing = true
        pausebutton.Image = "http://www.roblox.com/asset/?id=130610056660845"
        playSound("6493287948", 0.1)
        NotificationLibrary:SendNotification("Success", "You have paused your playing.", 1)
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

local function updateErrorMargin()
    errorbox.Text = "error margin: " .. tostring(errormargin)
end

updateErrorMargin()

local function round(num, decimalPlaces)
    local mult = 10 ^ decimalPlaces
    return math.floor(num * mult + 0.5) / mult
end

more.MouseButton1Click:Connect(
    function()
        errormargin = round(errormargin + 0.005, 3)
        updateErrorMargin()
    end
)

less.MouseButton1Click:Connect(
    function()
        if errormargin <= 0 then
            return
        end
        errormargin = round(errormargin - 0.005, 3)
        updateErrorMargin()
    end
)

VirtualInputManager = game:GetService("VirtualInputManager")

-- PRESSKEY FUNCTION
-- PRESSKEY FUNCTION
-- PRESSKEY FUNCTION

-- MIDI Note to KeyCode mapping based on piano layout
-- Maps each key to its corresponding MIDI note number
local keyMappings = {
    -- Octave 0 (Ctrl+ combinations)
    ["Ctrl+1"] = 21,    -- A0
    ["Ctrl+2"] = 22,    -- A#0/Bb0  
    ["Ctrl+3"] = 23,    -- B0
    
    -- Octave 1 (Ctrl+ combinations)
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
    
    -- Octave 2
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
    
    -- Octave 3
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
    
    -- Octave 4
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
    
    -- Octave 5
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
    
    -- Octave 6
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
    
    -- Octave 7
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



local numpadMappings = {
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



local function pressKey(keys, beats, bpm)

    if _G.STOPIT then return end

    local shorts

    if type(beats) == "number" then
        shorts = false
    else
        shorts = true
    end

    local nonShift = {}

    -- seperate shift and no shift
    for i = 1, #keys do
        local key = keys:sub(i, i)
        table.insert(nonShift, key)
    end

    -- Press non-shift keys first
    for _, key in ipairs(nonShift) do
        print(key .. ": " .. tostring(keyMappings[key]))
        local digit1 = math.floor(keyMappings[key] / 12) -- get the octave number
        local digit2 = math.floor(keyMappings[key] % 12) -- get the note number within the octave

        local midiVel
        if vel then
            midiVel = math.floor(vel * 127)
        else
            midiVel = 64
        end

        local digit3 = math.floor(midiVel / 12) -- velocity digit 1
        local digit4 = math.floor(midiVel % 12) -- velocity digit 2
        
        coroutine.wrap(
            function()

                -- You need to add this before sending the 4 digits:
                -- Note-ON sequence
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.KeypadMultiply, false, game)
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.KeypadMultiply, false, game)
                VirtualInputManager:SendKeyEvent(true, numpadMappings[digit1], false, game)
                VirtualInputManager:SendKeyEvent(false, numpadMappings[digit1], false, game)
                VirtualInputManager:SendKeyEvent(true, numpadMappings[digit2], false, game)
                VirtualInputManager:SendKeyEvent(false, numpadMappings[digit2], false, game)
                VirtualInputManager:SendKeyEvent(true, numpadMappings[digit3], false, game)
                VirtualInputManager:SendKeyEvent(false, numpadMappings[digit3], false, game)
                VirtualInputManager:SendKeyEvent(true, numpadMappings[digit4], false, game)
                VirtualInputManager:SendKeyEvent(false, numpadMappings[digit4], false, game)

                local waittime
                local randomOff

                if shorts == false then
                    local maxRan = (beats / bpm) * 60 / 2 -- half of note hold time
                    randomOff = math.random() * maxRan -- num from 0 to maxRan (half of note hold time)
                    waittime = (beats / bpm) * 60 - randomOff
                    
                else -- beats to time, or if short notes...
                    waittime = math.random(4, 12) / 100 -- random number from 0.04 to 0.12
                end
                
                task.wait(waittime)

                -- Note-OFF sequence (multiply + octave + note + 0 + 0)
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.KeypadMultiply, false, game)
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.KeypadMultiply, false, game)
                VirtualInputManager:SendKeyEvent(true, numpadMappings[digit1], false, game)  -- same octave
                VirtualInputManager:SendKeyEvent(false, numpadMappings[digit1], false, game)
                VirtualInputManager:SendKeyEvent(true, numpadMappings[digit2], false, game)  -- same note
                VirtualInputManager:SendKeyEvent(false, numpadMappings[digit2], false, game)
                VirtualInputManager:SendKeyEvent(true, numpadMappings[0], false, game)       -- vel=0
                VirtualInputManager:SendKeyEvent(false, numpadMappings[0], false, game)
                VirtualInputManager:SendKeyEvent(true, numpadMappings[0], false, game)       -- vel=0
                VirtualInputManager:SendKeyEvent(false, numpadMappings[0], false, game)
            
            end
        )()

        if errormargin ~= 0 then
            if math.random() < 0.5 then -- 50% chance to apply delay
                task.wait(math.random() * errormargin / 3) -- make the delay 0-half of the error margin
            end
        else end
    end

    if errormargin ~= 0 then
        task.wait(math.random() * (errormargin * 2)) -- make the delay 0-half of the error margin
    else end
end

function adjustVelocity(velo)
    if _G.STOPIT then return end
    vel = velo
end

-- REST FUNCTION
-- REST FUNCTION
-- REST FUNCTION

function rest(beats, bpm)
    if _G.STOPIT then return end
    local waitTime = (beats / bpm) * 60 -- beats to secs
    if errormargin == 0 then
        task.wait(waitTime)
    else
        local randomOffset = (math.random() * 1.6 - 1) * (errormargin / 2) -- generate a random number between -errormargin / 2 and +errormargin / 2
        wait(waitTime + randomOffset) -- add num above to the og wait
    end
end

-- KEYPRESS FUNCTION
-- KEYPRESS FUNCTION
-- KEYPRESS FUNCTION

function keypress(keys, beats, bpm)
    if _G.STOPIT then return end
    if pausing then
        resumeEvent.Event:Wait()
    else
    end
    coroutine.wrap(
        function()
            pressKey(keys, beats, bpm)
        end
    )()
end

-- KEYSEQUENCE16 FUNCTION
-- KEYSEQUENCE16 FUNCTION
-- KEYSEQUENCE16 FUNCTION

function keysequence16(keys, beats, bpm)
    if _G.STOPIT then return end
    if pausing then
        resumeEvent.Event:Wait()
    else
    end

    coroutine.wrap(
        function()
            for i = 1, #keys do
                local key = keys:sub(i, i)
                keypress(key, beats, bpm)
                rest(0.25, bpm)
            end
        end
    )()
end

function pedalDown()
    if _G.STOPIT then return end
end

function pedalUp()
    if _G.STOPIT then return end
end
