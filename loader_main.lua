-- some parts are skidded from chatgpt
-- the comments are not from chatgpt though becvause i legitamately need them for debugging and to easily know whats going on if theres an issue

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

    playSound("6493287948", 0.1)
    NotificationLibrary:SendNotification("Success", "Stopping...", 1)
    lilgui:Destroy()
    lilgui = nil
end

function finishedSong()
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

local shiftKeys = {
    "!",
    "@",
    "#",
    "$",
    "%",
    "^",
    "&",
    "*",
    "(",
    ")",
    "Q",
    "W",
    "E",
    "R",
    "T",
    "Y",
    "U",
    "I",
    "O",
    "P",
    "A",
    "S",
    "D",
    "F",
    "G",
    "H",
    "J",
    "K",
    "L",
    "Z",
    "X",
    "C",
    "V",
    "B",
    "N",
    "M"
}

local keyMappings = {
    ["1"] = Enum.KeyCode.One,
    ["!"] = Enum.KeyCode.One,
    ["2"] = Enum.KeyCode.Two,
    ["@"] = Enum.KeyCode.Two,
    ["3"] = Enum.KeyCode.Three,
    ["#"] = Enum.KeyCode.Three,
    ["4"] = Enum.KeyCode.Four,
    ["$"] = Enum.KeyCode.Four,
    ["5"] = Enum.KeyCode.Five,
    ["%"] = Enum.KeyCode.Five,
    ["6"] = Enum.KeyCode.Six,
    ["^"] = Enum.KeyCode.Six,
    ["7"] = Enum.KeyCode.Seven,
    ["&"] = Enum.KeyCode.Seven,
    ["8"] = Enum.KeyCode.Eight,
    ["*"] = Enum.KeyCode.Eight,
    ["9"] = Enum.KeyCode.Nine,
    ["("] = Enum.KeyCode.Nine,
    ["0"] = Enum.KeyCode.Zero,
    [")"] = Enum.KeyCode.Zero,
    ["q"] = Enum.KeyCode.Q,
    ["Q"] = Enum.KeyCode.Q,
    ["w"] = Enum.KeyCode.W,
    ["W"] = Enum.KeyCode.W,
    ["e"] = Enum.KeyCode.E,
    ["E"] = Enum.KeyCode.E,
    ["r"] = Enum.KeyCode.R,
    ["R"] = Enum.KeyCode.R,
    ["t"] = Enum.KeyCode.T,
    ["T"] = Enum.KeyCode.T,
    ["y"] = Enum.KeyCode.Y,
    ["Y"] = Enum.KeyCode.Y,
    ["u"] = Enum.KeyCode.U,
    ["U"] = Enum.KeyCode.U,
    ["i"] = Enum.KeyCode.I,
    ["I"] = Enum.KeyCode.I,
    ["o"] = Enum.KeyCode.O,
    ["O"] = Enum.KeyCode.O,
    ["p"] = Enum.KeyCode.P,
    ["P"] = Enum.KeyCode.P,
    ["a"] = Enum.KeyCode.A,
    ["A"] = Enum.KeyCode.A,
    ["s"] = Enum.KeyCode.S,
    ["S"] = Enum.KeyCode.S,
    ["d"] = Enum.KeyCode.D,
    ["D"] = Enum.KeyCode.D,
    ["f"] = Enum.KeyCode.F,
    ["F"] = Enum.KeyCode.F,
    ["g"] = Enum.KeyCode.G,
    ["G"] = Enum.KeyCode.G,
    ["h"] = Enum.KeyCode.H,
    ["H"] = Enum.KeyCode.H,
    ["j"] = Enum.KeyCode.J,
    ["J"] = Enum.KeyCode.J,
    ["k"] = Enum.KeyCode.K,
    ["K"] = Enum.KeyCode.K,
    ["l"] = Enum.KeyCode.L,
    ["L"] = Enum.KeyCode.L,
    ["z"] = Enum.KeyCode.Z,
    ["Z"] = Enum.KeyCode.Z,
    ["x"] = Enum.KeyCode.X,
    ["X"] = Enum.KeyCode.X,
    ["c"] = Enum.KeyCode.C,
    ["C"] = Enum.KeyCode.C,
    ["v"] = Enum.KeyCode.V,
    ["V"] = Enum.KeyCode.V,
    ["b"] = Enum.KeyCode.B,
    ["B"] = Enum.KeyCode.B,
    ["n"] = Enum.KeyCode.N,
    ["N"] = Enum.KeyCode.N,
    ["m"] = Enum.KeyCode.M,
    ["M"] = Enum.KeyCode.M
}

local function pressKey(keys, beats, bpm)
    local shiftApplied = false
    local unshiftApplied = false
    local shorts

    if type(beats) == "number" then
        shorts = false
    else
        shorts = true
    end

    local shiftRequired, nonShift = {}, {}
    local ctrlRequired = false

    if keys:sub(1, 5) == "Ctrl+" then
        ctrlRequired = true
        keys = keys:sub(6) -- remove ctrl+
    end

    -- seperate shift and no shift
    for i = 1, #keys do
        local key = keys:sub(i, i)
        table.insert(table.find(shiftKeys, key) and shiftRequired or nonShift, key)
    end

    -- Press non-shift keys first
    for _, key in ipairs(nonShift) do

        local agf = errormargin * 100 -- so 0.01 is 1
        if math.random(1, 250) <= agf then -- 0.01 is 1/175 chance, 0.04 is 4/175 which is a 2.3%
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game) -- shift if it applies
            shiftApplied = true
            print("shift applied")
        end

        coroutine.wrap(
            function()
                
                if ctrlRequired then
                    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
                end

                VirtualInputManager:SendKeyEvent(true, keyMappings[key], false, game)

                if ctrlRequired then
                    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, game)
                end

                if shiftApplied == true then
                    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, game) -- turn shift off if shift was applied
                    shiftApplied = false
                end

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
                
                VirtualInputManager:SendKeyEvent(false, keyMappings[key], false, game)
            end
        )()

        if errormargin ~= 0 then
            if math.random() < 0.5 then -- 50% chance to apply delay
                task.wait(math.random() * errormargin / 2) -- make the delay 0-half of the error margin
            end
        else end
    end

    -- Press shift-required keys
    if #shiftRequired > 0 then
        for _, key in ipairs(shiftRequired) do
            
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game)
            
            local agf = errormargin * 100 -- so 0.01 is 1
            if math.random(1, 250) <= agf then -- 0.01 is 1/200 chance, 0.04 is 4/200
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, game) -- unshift if it applies
                unshiftApplied = true
                print("unshift applied")
            end

            coroutine.wrap(
                function()
                    
                    if ctrlRequired then
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
                    end
    
                    VirtualInputManager:SendKeyEvent(true, keyMappings[key], false, game)
    
                    if ctrlRequired then
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, game)
                    end

                    if unshiftApplied == false then
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, game)
                    end

                    local waittime
                    local randomOff

                    if shorts == false then
                        local maxRan = (beats / bpm) * 60 / 2 -- half of note hold time
                        randomOff = math.random() * maxRan -- num from 0 to maxRan (half of note hold time)
                        waittime = (beats / bpm) * 60 - randomOff
                    else

                        waittime = math.random(4, 12) / 100 -- beats to secs, OR random number from 0.044 to 0.12
                    end
                    task.wait(waittime)

                    VirtualInputManager:SendKeyEvent(false, keyMappings[key], false, game)
                end
            )()

            if errormargin ~= 0 then
                if math.random() < 0.5 then -- 50% chance to apply delay
                    task.wait(math.random() * errormargin / 2)
                end
            else
            end
        end
    end

    if ctrlRequired then
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, game)
    end
end

function adjustVelocity(vel)
    local velocityMap = "58qrupdhl"

    vel = math.clamp(vel, 0, 1)

    if vel < 0.27 then
        topress = "2"
    elseif vel >= 0.88 then
        topress = "c"
    else
        local index = math.floor((vel - 0.27) / 0.61 * (#velocityMap - 2)) + 2
        topress = velocityMap:sub(index, index)
    end

    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftAlt, false, game)
    VirtualInputManager:SendKeyEvent(true, keyMappings[topress], false, game)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftAlt, false, game)
end

-- note mappings to vp keys

local noteMappings = {
    ["C"] = {[1] = "1", [2] = "8", [3] = "t", [4] = "s", [5] = "l", [6] = "m"},
    ["C#"] = {[1] = "!", [2] = "*", [3] = "T", [4] = "S", [5] = "L"},
    ["D"] = {[1] = "2", [2] = "9", [3] = "y", [4] = "d", [5] = "z"},
    ["D#"] = {[1] = "@", [2] = "(", [3] = "Y", [4] = "D", [5] = "Z"},
    ["E"] = {[1] = "3", [2] = "0", [3] = "u", [4] = "f", [5] = "x"},
    ["F"] = {[1] = "4", [2] = "q", [3] = "i", [4] = "g", [5] = "c"},
    ["F#"] = {[1] = "$", [2] = "Q", [3] = "I", [4] = "G", [5] = "C"},
    ["G"] = {[1] = "5", [2] = "w", [3] = "o", [4] = "h", [5] = "v"},
    ["G#"] = {[1] = "%", [2] = "W", [3] = "O", [4] = "H", [5] = "V"},
    ["A"] = {[1] = "6", [2] = "e", [3] = "p", [4] = "j", [5] = "b"},
    ["A#"] = {[1] = "^", [2] = "E", [3] = "P", [4] = "J", [5] = "B"},
    ["B"] = {[1] = "7", [2] = "r", [3] = "a", [4] = "k", [5] = "n"}
}

-- press function
function pressnote(note, octave, beats, bpm)
    if pausing then
        resumeEvent.Event:Wait()
    end

    local key = noteMappings[note] and noteMappings[note][octave]
    if key then
        -- press it asynchronously
        coroutine.wrap(
            function()
                pressKey(key, beats, bpm) -- pass args to presskey
            end
        )()
    else
        warn("Invalid note or octave: " .. tostring(note) .. " octave " .. tostring(octave))
    end
end

-- REST FUNCTION
-- REST FUNCTION
-- REST FUNCTION

function rest(beats, bpm)
    local waitTime = (beats / bpm) * 60 -- beats to secs
    if errormargin == 0 then
        task.wait(waitTime)
    else
        local randomOffset = math.random() * errormargin - (errormargin / 2) -- generate a random number between -errormargin / 2 and +errormargin / 2
        wait(waitTime + randomOffset) -- add num above to the og wait
    end
end

-- KEYPRESS FUNCTION
-- KEYPRESS FUNCTION
-- KEYPRESS FUNCTION

function keypress(keys, beats, bpm)
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
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
end

function pedalUp()
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
end
