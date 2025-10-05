-- Copyright (C) 2025 hellohellohell012321
-- Licensed under the GNU GPL v3. See LICENSE file for details.

-- to do:
-- make the requestlang function read the current language file first
-- make a button that does requestlang; after doing so it re-executes talentless.


local translator = loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/translator.lua"))()


local function translateText(text) -- this function will also be called from the other sub scripts
    return translator:translateText(text)
end


local TextService = game:GetService("TextService")

local function fitText(button)
    local size = button.TextSize

    while size > 1 do
        local textBounds = TextService:GetTextSize(
            button.Text,
            size,
            button.Font,
            Vector2.new(math.huge, math.huge) -- no wrapping limit
        )

        if textBounds.X <= button.AbsoluteSize.X then
            break
        end

        size = size - 1
        button.TextSize = size
    end

    return size
end

local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/notif_lib.lua"))()

local ContentProvider = game:GetService("ContentProvider")

local assetsToPreload = {
    "rbxassetid://94707254666920", -- unfav icon
    "rbxassetid://95485559387661", -- fav icon
    "rbxassetid://70452176150315",
    "rbxassetid://1524549907",
    "rbxassetid://6493287948",
    "rbxassetid://104269922408932",
}

ContentProvider:PreloadAsync(assetsToPreload)

local function playSound(soundId, loudness)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
    sound.Volume = loudness or 1
    sound:Play()
end


-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local closeButton = Instance.new("TextButton")
local infoButton = Instance.new("TextButton")
local changeLanguageButton = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local uic2 = Instance.new("UICorner")
local uic1 = Instance.new("UICorner")
local categoriesFrame = Instance.new("ScrollingFrame")
local categoriesLayout = Instance.new("UIListLayout")
local categoriesPadding = Instance.new("UIPadding")
local scroll = Instance.new("ScrollingFrame")
local listLayout = Instance.new("UIListLayout")
local barlist = Instance.new("UIListLayout")
local barpadding = Instance.new("UIPadding")
local padding = Instance.new("UIPadding")
local creds = Instance.new("TextLabel")
local bar = Instance.new("Frame")
local songname = Instance.new("TextLabel")
local bpmbox = Instance.new("TextBox")
local playsong = Instance.new("TextButton")
local toggle = Instance.new("TextButton")
local searchframe = Instance.new("Frame")
local searchbar = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Name = "frame"
frame.Parent = ScreenGui
frame.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Size = UDim2.new(0, 475, 0, 272)

    uic1.CornerRadius = UDim.new(0, 4)
    uic1.Name = "uic1"
    uic1.Parent = frame

translator:requestLang(frame, "first")

    closeButton.Name = "closeButton"
    closeButton.Parent = frame
    closeButton.BackgroundTransparency = 1
    closeButton.LayoutOrder = 1
    closeButton.Position = UDim2.new(1, -35, 0, 5)
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.ZIndex = 5
    closeButton.Font = Enum.Font.SourceSansBold
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.TextScaled = true

    infoButton.Name = "infoButton"
    infoButton.Parent = frame
    infoButton.BackgroundTransparency = 1
    infoButton.LayoutOrder = 2
    infoButton.Position = UDim2.new(0, 5, 0, 5)
    infoButton.Size = UDim2.new(0, 30, 0, 30)
    infoButton.ZIndex = 5
    infoButton.Font = Enum.Font.SourceSansBold
    infoButton.Text = "?"
    infoButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    infoButton.TextScaled = true

    changeLanguageButton.Name = "infoButton"
    changeLanguageButton.Parent = frame
    changeLanguageButton.BackgroundTransparency = 1
    changeLanguageButton.LayoutOrder = 2
    changeLanguageButton.Position = UDim2.new(0, 30, 0, 5)
    changeLanguageButton.Size = UDim2.new(0, 30, 0, 30)
    changeLanguageButton.ZIndex = 5
    changeLanguageButton.Font = Enum.Font.SourceSansBold
    changeLanguageButton.Text = "🌐"
    changeLanguageButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    changeLanguageButton.TextScaled = true

    title.Name = "title"
    title.Parent = frame
    title.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
    title.Size = UDim2.new(1, 0, 0, 50)
    title.Font = Enum.Font.SourceSansBold
    title.Text = "TALENTLESS"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 46
    title.ZIndex = 2

        uic2.CornerRadius = UDim.new(0, 4)
        uic2.Name = "uic2"
        uic2.Parent = title

    categoriesFrame.Name = "categoriesFrame"
    categoriesFrame.Parent = frame
    categoriesFrame.Active = true
    categoriesFrame.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
    categoriesFrame.BackgroundTransparency = 1.000
    categoriesFrame.Position = UDim2.new(0.0105263162, 0, 0.183819935, 0)
    categoriesFrame.Size = UDim2.new(0, 111, 0, 222)
    categoriesFrame.ZIndex = 0
    categoriesFrame.ScrollBarThickness = 3
    categoriesFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

        categoriesLayout.Name = "categoriesLayout"
        categoriesLayout.Parent = categoriesFrame
        categoriesLayout.SortOrder = Enum.SortOrder.LayoutOrder
        categoriesLayout.Padding = UDim.new(0, 10)
        categoriesLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

        categoriesPadding.Name = "categoriesPadding"
        categoriesPadding.Parent = categoriesFrame
        categoriesPadding.PaddingLeft = UDim.new(0, 5)
        categoriesPadding.PaddingRight = UDim.new(0, 5)
        categoriesPadding.PaddingTop = UDim.new(0, 5)
        categoriesPadding.PaddingBottom = UDim.new(0, 5)

    scroll.Name = "scroll"
    scroll.Parent = frame
    scroll.Active = true
    scroll.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
    scroll.BackgroundTransparency = 1.000
    scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
    scroll.BorderSizePixel = 0
    scroll.Position = UDim2.new(0.266860753, 0, 0.183819935, 0)
    scroll.Size = UDim2.new(0, 198, 0, 222)
    scroll.CanvasPosition = Vector2.new(0, 17.4999962)
    scroll.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
    scroll.ScrollBarThickness = 3
    scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

        listLayout.Name = "listLayout"
        listLayout.Parent = scroll
        listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        listLayout.SortOrder = Enum.SortOrder.LayoutOrder
        listLayout.Padding = UDim.new(0, 20)

        padding.Name = "padding"
        padding.Parent = scroll
        padding.PaddingTop = UDim.new(0, 50)
        padding.PaddingBottom = UDim.new(0, 20)

    searchframe.Name = "searchframe"
    searchframe.Parent = frame
    searchframe.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
    searchframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
    searchframe.BorderSizePixel = 0
    searchframe.Position = UDim2.new(0.246315792, 0, 0.183823526, 0)
    searchframe.Size = UDim2.new(0, 208, 0, 38)

        searchbar.Name = "searchbar"
        searchbar.Parent = searchframe
        searchbar.BackgroundColor3 = Color3.fromRGB(96, 102, 121)
        searchbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
        searchbar.BorderSizePixel = 0
        searchbar.Position = UDim2.new(0.158292323, 0, 0.278571635, 0)
        searchbar.Size = UDim2.new(0, 150, 0, 20)
        searchbar.Font = Enum.Font.SourceSansBold
        searchbar.PlaceholderText = translateText("search")
        searchbar.Text = ""
        searchbar.TextColor3 = Color3.fromRGB(255, 255, 255)
        searchbar.TextScaled = true
        searchbar.TextSize = 14.000
        searchbar.TextWrapped = true

    creds.Name = "creds"
    creds.Parent = frame
    creds.AnchorPoint = Vector2.new(0.5, 0.5)
    creds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    creds.BackgroundTransparency = 1
    creds.Position = UDim2.new(0.5, 0, 0.189999998, 0)
    creds.Size = UDim2.new(0, 314, 0, 26)
    creds.Font = Enum.Font.LuckiestGuy
    creds.Text = "BY HELLOHELLOHELL012321"
    creds.TextColor3 = Color3.fromRGB(255, 255, 255)
    creds.TextSize = 14
    creds.TextTransparency = 0.320
    creds.ZIndex = 2

    bar.Name = "bar"
    bar.Parent = frame
    bar.Active = true
    bar.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
    bar.BackgroundTransparency = 1.000
    bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    bar.BorderSizePixel = 0
    bar.Position = UDim2.new(1.05001855, -173, 0.20220229, 0)
    bar.Size = UDim2.new(0, 143, 0, 150)
    bar.ZIndex = 0

        songname.Name = "songname"
        songname.Parent = bar
        songname.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
        songname.BorderColor3 = Color3.fromRGB(64, 68, 90)
        songname.BorderSizePixel = 4
        songname.Position = UDim2.new(0.0689100027, 0, 0.0855299979, 0)
        songname.Size = UDim2.new(0, 125, 0, 34)
        songname.ZIndex = -5
        songname.Font = Enum.Font.SourceSansBold
        songname.Text = translateText("songname")
        songname.TextColor3 = Color3.fromRGB(255, 255, 255)
        songname.TextScaled = true
        songname.TextSize = 23.000
        songname.TextWrapped = true
        songname.LayoutOrder = 1

        bpmbox.Name = "bpmbox"
        bpmbox.Parent = bar
        bpmbox.BackgroundColor3 = Color3.fromRGB(96, 102, 121)
        bpmbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
        bpmbox.BorderSizePixel = 0
        bpmbox.Position = UDim2.new(0.163100004, 0, 0.612699986, 0)
        bpmbox.Size = UDim2.new(0, 90, 0, 20)
        bpmbox.Font = Enum.Font.SourceSansBold
        bpmbox.PlaceholderText = "bpm"
        bpmbox.Text = ""
        bpmbox.TextColor3 = Color3.fromRGB(255, 255, 255)
        bpmbox.TextScaled = true
        bpmbox.TextSize = 14.000
        bpmbox.TextWrapped = true
        bpmbox.LayoutOrder = 2

        playsong.Name = "playsong"
        playsong.Parent = bar
        playsong.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
        playsong.BorderColor3 = Color3.fromRGB(64, 68, 90)
        playsong.BorderSizePixel = 4
        playsong.Position = UDim2.new(0.0689100027, 0, 0.38815999, 0)
        playsong.Size = UDim2.new(0, 125, 0, 27)
        playsong.Font = Enum.Font.SourceSansBold
        playsong.Text = translateText("play song")
        playsong.TextColor3 = Color3.fromRGB(255, 255, 255)
        playsong.TextSize = 25.000
        playsong.LayoutOrder = 3
        fitText(playsong)

        barlist.Name = "barlist"
        barlist.Parent = bar
        barlist.SortOrder = Enum.SortOrder.LayoutOrder
        barlist.Padding = UDim.new(0, 10)
        barlist.HorizontalAlignment = Enum.HorizontalAlignment.Center

        barpadding.Name = "categoriesPadding"
        barpadding.Parent = bar
        barpadding.PaddingLeft = UDim.new(0, 5)
        barpadding.PaddingRight = UDim.new(0, 5)
        barpadding.PaddingTop = UDim.new(0, 10)
        barpadding.PaddingBottom = UDim.new(0, 5)

toggle.Name = "toggle"
toggle.Parent = ScreenGui
toggle.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
toggle.BorderColor3 = Color3.fromRGB(64, 68, 90)
toggle.BorderSizePixel = 4
toggle.AnchorPoint = Vector2.new(0, 0.5)
toggle.Position = UDim2.new(0, 0, 0.5, 0)
toggle.Size = UDim2.new(0, 136, 0, 40)
toggle.Font = Enum.Font.SourceSansBold
toggle.Text = translateText("toggle ui")
toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
toggle.TextScaled = true

-- buttons

toggle.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
    if frame.Visible then
        playSound(70452176150315, 0.1)
    else
        playSound(1524549907, 0.1)
    end
end)

closeButton.MouseButton1Click:Connect(
    function()
        ScreenGui:Destroy()
        STOPLOOP = nil
        playingall = false
        playSound("104269922408932", 0.2)
    end
)

infoButton.MouseButton1Click:Connect(
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/info.lua", true)
        )()
    end
)

changeLanguageButton.MouseButton1Click:Connect(
    function()
        translator:requestLang(frame, "change")
        ScreenGui:Destroy()
        STOPLOOP = nil
        playingall = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/MAIN.lua"))()
    end
)

-- drag script (not mine)

local UserInputService = game:GetService("UserInputService")

local gui = toggle

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



local gameId = game.GameId

local spoofMidiPlz = false

if gameId == 3929033413 then

    -- Gui to Lua
    -- Version: 3.2

    -- Instances:

    local spoofMidiInfo = Instance.new("TextButton")
    local spoofMidi = Instance.new("TextButton")
    local underline = Instance.new("TextLabel")

    --Properties:

    spoofMidiInfo.Name = "spoofMidiInfo"
    spoofMidiInfo.Parent = frame
    spoofMidiInfo.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    spoofMidiInfo.BorderColor3 = Color3.fromRGB(64, 68, 90)
    spoofMidiInfo.BorderSizePixel = 2
    spoofMidiInfo.LayoutOrder = 3
    spoofMidiInfo.Position = UDim2.new(0.919436276, 0, 0.884484231, 0)
    spoofMidiInfo.Size = UDim2.new(0, 0, 23)
    spoofMidiInfo.Font = Enum.Font.SourceSansItalic
    spoofMidiInfo.Text = "?"
    spoofMidiInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
    spoofMidiInfo.TextSize = 25.000

    spoofMidiInfo.MouseButton1Click:Connect(
        function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/spooferinfo.lua", true))()
        end
    )

    spoofMidi.Name = "spoofMidi"
    spoofMidi.Parent = frame
    spoofMidi.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    spoofMidi.BackgroundTransparency = 1.000
    spoofMidi.BorderColor3 = Color3.fromRGB(64, 68, 90)
    spoofMidi.BorderSizePixel = 4
    spoofMidi.LayoutOrder = 3
    spoofMidi.Position = UDim2.new(0.68785733, 0, 0.899189472, 0)
    spoofMidi.Size = UDim2.new(0, 103, 0, 15)
    spoofMidi.Font = Enum.Font.SourceSansItalic
    spoofMidi.Text = translateText("spoof midi") .. " [ ]"
    spoofMidi.TextColor3 = Color3.fromRGB(255, 255, 255)
    spoofMidi.TextSize = 23.000
    spoofMidi.TextXAlignment = Enum.TextXAlignment.Left

    spoofMidi.MouseButton1Click:Connect(
        function()
            spoofMidiPlz = not spoofMidiPlz
            if spoofMidiPlz then
                spoofMidi.Text = translateText("spoof midi") .. " [x]"
                playSound(6493287948, 0.1)
                NotificationLibrary:SendNotification("Success", translateText("midispoofon"), 5)
            else
                spoofMidi.Text = translateText("spoof midi") .. " [ ]"
                playSound(6493287948, 0.1) -- replace with actual sound ID for disabling
                NotificationLibrary:SendNotification("Success", translateText("midispoofoff"), 5)
            end
        end
    )

    underline.Name = "underline"
    underline.Parent = spoofMidi
    underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    underline.BackgroundTransparency = 1.000
    underline.BorderColor3 = Color3.fromRGB(0, 0, 0)
    underline.BorderSizePixel = 0
    underline.Position = UDim2.new(-0.121739127, 0, -0.0386352539, 0)
    underline.Size = UDim2.new(0, 102, 0, 22)
    underline.Font = Enum.Font.SourceSans
    underline.Text = "_____________"
    underline.TextColor3 = Color3.fromRGB(255, 255, 255)
    underline.TextSize = 14.000
end

local function filterSongs(query)
    query = query:lower()
    scroll.CanvasPosition = Vector2.new(0, 0)
    for _, child in pairs(scroll:GetChildren()) do
        if child:IsA("TextButton") then
            if child.Text ~= "+" then
                -- Regular song buttons
                local songName = child.Text:lower()
                local alternateNamesStr = child:GetAttribute("AlternateNames") or ""
                local alternateNames = alternateNamesStr:split(",")
                local matchFound = false

                if songName:find(query) then
                    matchFound = true
                else
                    for _, altName in pairs(alternateNames) do
                        if matchFound == false then
                            if altName:lower():find(query) then
                                matchFound = true
                            end
                        end
                    end
                end
                child.Visible = matchFound
            end
        elseif child:IsA("Frame") and child:FindFirstChildOfClass("TextButton") then
            -- Custom song frames
            local button = child:FindFirstChildOfClass("TextButton")
            local songName = button.Text:lower()
            local matchFound = songName:find(query)
            child.Visible = matchFound
        end
    end
end

searchbar:GetPropertyChangedSignal("Text"):Connect(
    function()
        filterSongs(searchbar.Text)
    end
)

filterSongs("")

-- drag script (not mince)

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

local function newSongButton(name, alternateNames)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Parent = scroll
    button.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    button.BorderColor3 = Color3.fromRGB(64, 68, 90)
    button.BorderSizePixel = 4
    button.Size = UDim2.new(0, 175, 0, 35)
    button.Font = Enum.Font.SourceSansBold
    button.Text = name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 27

    button:SetAttribute("AlternateNames", table.concat(alternateNames or {}, ","))

    local favButton = Instance.new("ImageButton") -- star button for favourites

    favButton.Parent = button
    favButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    favButton.BackgroundTransparency = 1.000
    favButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    favButton.BorderSizePixel = 0
    favButton.AnchorPoint = Vector2.new(0, 0.5)
    favButton.Position = UDim2.new(0, 0, 0.5, 0)
    favButton.Size = UDim2.new(0, 0, 25)
    favButton.Image = "rbxassetid://94707254666920" -- unfav icon
    favButton.Visible = false
    favButton.Name = "favButton"

    fitText(button)
    
    return button
end

-- newSongButton("", {})
-- japanese songs sohould be written with their english then japanese anglaphone name, but will translate to japanese characters if japanese language is enabled.

LOOPRANDOM = newSongButton(translateText("shuffle play songs"), {})
PLAYRANDOM = newSongButton(translateText("play random song"), {})

local seperator = Instance.new("Frame")
seperator.Name = "seperator"
seperator.Parent = scroll
seperator.BackgroundColor3 = Color3.fromRGB(64, 68, 90)
seperator.Size = UDim2.new(0, 200, 0, 8)

A505 = newSongButton("505", {"arctic monkeys", "artic monkeys"})
A7_WEEKS_3_DAYS = newSongButton("7 WEEKS & 3 DAYS", {""})
A99DOT9 = newSongButton("99.9", {"mob psycho 100"})
A_CYBERS_WORLD = newSongButton("A CYBER'S WORLD?", {"toby fox"})
A_SKY_FULL = newSongButton("A SKY FULL OF STARS", {"coldplay"})
A_THOUSAND = newSongButton("A THOUSAND MILES", {"popular"})
AFTER_DARK = newSongButton("AFTER DARK", {"mr kitty"})
ALL_GIRLS = newSongButton("ALL GIRLS ARE THE SAME", {"juice wrld"})
ALL_I_WANT_IS_YOU = newSongButton("ALL I WANT IS YOU", {"rebzyyx"})
ALL_MY_FELLAS = newSongButton("ALL MY FELLAS", {})
ALL_THE_STARS = newSongButton("ALL THE STARS", {"kendrick lamar", "sza", "black panther"})
ALONE = newSongButton("ALONE", {"marshmello"})
ALTALE = newSongButton("ALTALE", {""})
ENIGMATIC = newSongButton("AN ENIGMATIC ENCOUNTER", {"undertale last breath"})
ANNIHILATE = newSongButton("ANNIHILATE", {"spider man", "spiderman", "spider-man", "metro boomin"})
ANOTHER_LOVE = newSongButton("ANOTHER LOVE", {"sad, love"})
ANYONE_CAN = newSongButton("ANYONE CAN BE FIND LOVE (except you.)", {"breakcore"})
ARIA_MATH = newSongButton("ARIA MATH", {"c418"})
ARUARIAN = newSongButton("ARUARIAN DANCE", {"nujabes"})
AS_IT_WAS = newSongButton("AS IT WAS", {"harry styles"})
ASGORE = newSongButton("ASGORE", {})
ASSUMPTIONS = newSongButton("ASSUMPTIONS", {""})
ASTRONAMIA = newSongButton("ASTRONAMIA (COFFIN DANCE)", {""})
SPEED_OF = newSongButton("AT THE SPEED OF LIGHT", {"geometry dash", "gd"})
ATTACK_OF_THE_KILLER_QUEEN = newSongButton("ATTACK OF THE KILLER QUEEN", {"toby fox", "mrbeast", "phonk"})
AVENGERS = newSongButton("AVENGERS (EPIC COVER)", {"popular", "movie", "hard"})
BAD_APPLE = newSongButton("BAD APPLE!!", {"popular"})
BAD_HABIT = newSongButton("BAD HABIT", {"steve lacy"})
BAD_PIGGIES = newSongButton("BAD PIGGIES", {"angry birds"})
BATTLE_AGAINST = newSongButton("BATTLE AGAINST A TRUE HERO", {})
BEANIE = newSongButton("BEANIE", {"beanie chezile"})
BEAUTIFUL_THINGS = newSongButton("BEAUTIFUL THINGS", {"benson boone"})
BEETHOVEN_VIRUS = newSongButton("BEETHOVEN VIRUS", {"ludwig van beethoven"})
BELIEVER = newSongButton("BELIEVER", {"imagine dragons"})
BELLA_CIAO = newSongButton("BELLA CIAO", {})
BIG_FISH = newSongButton("BIG FISH (大鱼)", {""})
BIG_SHOT = newSongButton("BIG SHOT", {"toby fox"})
BIRDS_OF_A = newSongButton("BIRDS OF A FEATHER", {"billie eilish"})
BLINDING_LIGHTS = newSongButton("BLINDING LIGHTS", {"the weeknd"})
BLOODY = newSongButton("BLOODY MARY", {"lady gaga", "wednesday"})
BLUE = newSongButton("BLUE (DA BA DEE)", {"im blue", "im good"})
BLUE_YUNG = newSongButton("BLUE (YUNG KAI)", {})
BOHEMIAN_RHAPSODY = newSongButton("BOHEMIAN RHAPSODY", {"queen"})
BREADY = newSongButton("BREADY, SET, GO!", {""})
BY_YOUR_SIDE = newSongButton("BY YOUR SIDE", {""})
CAN_YOU_HEAR = newSongButton("CAN YOU HEAR THE MUSIC", {"oppenheimer", "popular"})
CAN_YOU_HEAR_EPIC = newSongButton("CAN YOU HEAR THE MUSIC (EPIC VER.)", {"hans zimmer", "oppenheimer"})
CANDYLAND = newSongButton("CANDYLAND", {"tobu", "ncs", "no copyright sounds"})
CANON_D = newSongButton("CANON IN D", {""})
CANT_LET = newSongButton("CANT LET GO", {"geometry dash", "gd"})
CARELESS = newSongButton("CARELESS WHISPER", {})
CAROL_OF_THE_BELLS = newSongButton("CAROL OF THE BELLS", {"christmas"})
CAROL_OF_THE_BELLS_EPIC = newSongButton("CAROL OF THE BELLS (EPIC VER.)", {"christmas", "peter buka"})
CENTIMETER = newSongButton("CENTIMETER", {"rent a girlfriend", "rent-a-girlfriend"})
CHAOS_KING = newSongButton("CHAOS KING", {"toby fox"})
CHRISTMAS_KIDS = newSongButton("CHRISTMAS KIDS", {"roar"})
CLAIR_DE_LUNE = newSongButton("CLAIR DE LUNE", {"debussy"})
CLOCKS = newSongButton("CLOCKS", {"coldplay"})
CLOUD_9 = newSongButton("CLOUD 9", {"tobu", "ncs", "no copyright sounds"})
CLUBSTEP = newSongButton("CLUBSTEP", {"geometry dash", "dj nate", "gd"})
COCONUT = newSongButton("COCONUT MALL !!", {"mario kart", "nintendo"})
COMPTINE_DUN_AUTRE_ETE = newSongButton("COMPTINE D'UN AUTRE ÉTÉ", {"yann tiersen", "amelie"})
COUNTING_STARS = newSongButton("COUNTING STARS", {"one republic"})
CRAB_RAVE = newSongButton("CRAB RAVE", {"no copyright sounds", "ncs", "noisestorm"})
CRADLES = newSongButton("CRADLES", {"ncs", "no copyright sounds", "sub urban"})
CREEP = newSongButton("CREEP", {"radiohead"})
CROSSING_FIELD = newSongButton("CROSSING FIELD (SAO)", {"sword art online"})
CUPID = newSongButton("CUPID", {"love"})
DAISY_BELL = newSongButton("DAISY BELL", {})
DAMNED = newSongButton("DAMNED (COD ZOMBIES)", {"cod zombies theme", "call of duty", "creepy"})
DARK_BEACH = newSongButton("DARK BEACH", {"pastel ghost"})
DAWN_OF = newSongButton("DAWN OF THE DOORS", {"doors", "roblox", "lsplash"})
DAYLIGHT = newSongButton("DAYLIGHT", {"david kushner"})
DEADLOCKED = newSongButton("DEADLOCKED", {"geometry dash", "gd"})
DEATH_BED = newSongButton("DEATH BED", {"powfu", "beabadoobee"})
DESPACITO = newSongButton("DESPACITO", {""})
DEXTER_BLOOD_THEME = newSongButton("DEXTER - BLOOD THEME", {})
DETROIT = newSongButton("DETROIT: BECOME HUMAN - OPENING", {""})
DIE_WITH = newSongButton("DIE WITH A SMILE", {"lady gaga", "bruno mars"})
DIES_IRAE = newSongButton("DIES IRAE (MESSA DA REQUIEM)", {"giuseppe verdi"})
DIE_IRAE_III = newSongButton("DIES IRAE (REQUIEM MVT.3)", {"mozart"})
DIES_IRAE_III_2 = newSongButton("DIES IRAE (REQUIEM MVT.3) (EPIC VER.)", {"mozart", "epic"})
DOG_SONG = newSongButton("DOG SONG", {})
DONT_STOP = newSongButton("DONT STOP BELIEVIN'", {"journey"})
DRAMAM = newSongButton("DRAMAMIME", {"flawed mangoes"})
DREAM_FL = newSongButton("DREAM FLOWER", {"klydix"})
DREAM_ON = newSongButton("DREAM ON", {"aerosmith"})
DROWNING_LOVE = newSongButton("DROWNING LOVE", {"chasing kou"})
DRY_HANDS = newSongButton("DRY HANDS", {"c418"})
DUMB_DUMB = newSongButton("DUMB DUMB", {"everyone is dumb"})
DUVET = newSongButton("DUVET", {"boa"})
EASY_ON_ME = newSongButton("EASY ON ME", {"adele"})
ELEVATOR_JAM = newSongButton("ELEVATOR JAM", {"doors", "roblox", "lsplash"})
ELEVATOR_JAM_2 = newSongButton("ELEVATOR JAM x HERE I COME", {"doors", "roblox", "lsplash"})
ENEMY = newSongButton("ENEMY", {"imagine dragons", "arcane"})
ENTRY_OF_THE = newSongButton("ENTRY OF THE GLADIATORS", {"circus", "clown"})
ERIKA = newSongButton("ERIKA", {"nazi", "hitler", "german", "ww2", "world war 2"})
ETHEREAL = newSongButton("ETHEREAL", {"txmy"})
EVERGREEN = newSongButton("EVERGREEN", {""})
EXPERIENCE = newSongButton("EXPERIENCE", {})
EXPERIENCE_FLOWS = newSongButton("EXPERIENCE FLOWS IN YOU", {"tony ann", "river flows in you"})
FADED = newSongButton("FADED", {"ncs", "alan walker", "no copyright sounds"})
FALLEN_DOWN = newSongButton("FALLEN DOWN", {})
FANTAISIE = newSongButton("FANTAISIE IMPROMPTU", {"frederic chopin"})
FIELD_OF_HOPES_AND_DREAMS = newSongButton("FIELD OF HOPES AND DREAMS", {"toby fox"})
FIELD_OF_MEMORIES = newSongButton("FIELD OF MEMORIES", {"waterflame", "stick war"})
FINAL_DUET = newSongButton("FINAL DUET", {"omori"})
FINALE = newSongButton("FINALE", {})
FIVE_NIGHTS_1 = newSongButton("FIVE NIGHTS AT FREDDYS 1", {"fnaf", "five nights at freddys", "the living tombstone"})
FLARE = newSongButton("FLARE", {"hensonn", "sahara", "phonk"})
FLASHING = newSongButton("FLASHING LIGHTS", {"kanye west", "graduation"})
FLY_ME_TO_THE_MOON = newSongButton("FLY ME TO THE MOON", {"frank sinatra", "love", "squid game", "jazz"})
FOR_THE_DAMAGED_CODA = newSongButton("FOR THE DAMAGED CODA", {"evil morty", "rick and morty", "rick & morty"})
FOR_THE_DAMAGED_CODA_2 = newSongButton("FOR THE DAMAGED CODA (EPIC VER.)", {"evil morty", "rick and morty", "rick & morty"})
FREAKS = newSongButton("FREAKS", {"surf curse"})
FREEDOM_DIVE = newSongButton("FREEDOM DIVE", {"xi"})
FRIENDS = newSongButton("FRIENDS", {"marshmello", "anne marie"})
FR = newSongButton("FROM THE START", {"laufey", "love", "popular"})
FUKASHIGI = newSongButton("FUKASHIGI NO CARTE (BUNNY GIRL)", {"senpai"})
FUR_ELISE = newSongButton("FUR ELISE", {"ludwig van beethoven", "classical"})
GANGSTAS_PARADISE = newSongButton("GANGSTA'S PARADISE", {"coolio"})
GEOMETRY_DASH = newSongButton("GEOMETRY DASH THEME (DASH)", {"geometry dash", "gd"})
GIORNO = newSongButton("GIORNO'S THEME", {"popular"})
GLASSY_SKY = newSongButton("GLASSY SKY", {"tokyo ghoul"})
GODS_PLAN = newSongButton("GODS PLAN", {"drake"})
GOLDENHOUR = newSongButton("GOLDEN HOUR", {"jvke", "love, sad", "popular"})
GOOD_MORNING = newSongButton("GOOD MORNING (OMORI)", {"omori"})
GOOFY_AHH = newSongButton("GOOFY AHH NPC MUSIC", {"whistle"})
GRAVITY_FALLS = newSongButton("GRAVITY FALLS", {})
GURENGE = newSongButton("GURENGE (DEMON SLAYER)", {"lisa"})
GYPSY_WOMAN = newSongButton("GYPSY WOMAN", {"crystal waters", "slickback", "slick back"})
HAGGSTORM = newSongButton("HAGGSTORM", {"c418"})
HAPPIER = newSongButton("HAPPIER", {"marshmello", "bastille"})
HATSUNE_MIKU_NO_GEKISHOU = newSongButton("HATSUNE MIKU NO GEKISHOU", {"hatsune miku", "vocaloid", "miku", "colorful stage", "project sekai"})
HAZY_MOON = newSongButton("HAZY MOON", {"minato", "hatsune miku"})
HEART_AFIRE = newSongButton("HEART AFIRE", {"defqwop"})
HEARTACHE = newSongButton("HEARTACHE", {})
HEAT_WAVE = newSongButton("HEAT WAVE", {"glass animals"})
HEATHENS = newSongButton("HEATHENS", {"twenty one pilots", "suicide squad"})
HELLO = newSongButton("HELLO X I LOVE YOU", {"omfg"})
HERE_I_COME = newSongButton("HERE I COME", {"doors", "roblox", "lsplash"})
HERE_WITH = newSongButton("HERE WITH ME", {"d4vd", "romantic homicide"})
HES_A_PIRATE = newSongButton("HES A PIRATE", {"hans zimmer", "pirates of the caribbean"})
HIGH_HOPES = newSongButton("HIGH HOPES", {"panic at the disco", "panic!", "house of memories"})
HIMITSU_KOI_GOKORO = newSongButton("HIMITSU KOI GOKORO", {"rent a girlfriend", "rent-a-girlfriend", "honeyworks"})
LENAI = newSongButton("言えない", {"rent a girlfriend", "rent-a-girlfriend", "lenai"})
HH = newSongButton("HH", {"kanye west", "heil hitler"})
HIS_THEME = newSongButton("HIS THEME", {})
HIT_THE_ROAD = newSongButton("HIT THE ROAD, JACK", {"shake"})
HOPE = newSongButton("HOPE", {"xxxtentacion"})
HOPES_DREAMS = newSongButton("HOPES AND DREAMS", {"asriel"})
HOTLINE_BLING = newSongButton("HOTLINE BLING", {"drake"})
HOUSE_OF = newSongButton("HOUSE OF MEMORIES", {"panic at the disco", "panic!", "high hopes"})
HOWLS_MOVING_CASTLE = newSongButton("HOWLS MOVING CASTLE", {"merry go round of life", "merry-go-round", "ghibli"})
HOWLS_MOVING_CASTLE_2 = newSongButton("HOWLS MOVING CASTLE (EPIC VER.)", {"merry go round of life", "merry-go-round", "ghibli"})
HUNGARIAN = newSongButton("HUNGARIAN DANCE", {})
I_LIKE_THE_WAY_YOU = newSongButton("I LIKE THE WAY YOU KISS ME", {"artemis"})
I_REALLY_WANT_TO_STAY = newSongButton("I REALLY WANT TO STAY AT YOUR HOUSE", {"cyberpunk"})
I_WANT = newSongButton("I WANT IT THAT WAY", {"backstreet boys"})
SURVIVE = newSongButton("I WILL SURVIVE", {""})
ICARUS = newSongButton("ICARUS", {"tony ann"})
IDEA_10 = newSongButton("IDEA 10", {"gibran alcocers"})
IDGAF = newSongButton("IDGAF", {"boywithuke", "blackbear"})
IDOL = newSongButton("IDOL", {"oshi no ko", "yoasobi"})
IDOL_EPIC = newSongButton("IDOL (EPIC VER.)", {"oshi no ko", "yoasobi"})
IF_I_AM_WITH_YOU = newSongButton("IF I AM WITH YOU", {"jjk", "jujitsu kaisen", "hollow purple", "the honored one", "gojo satoru"})
IM_NOT_THE_ONLY_ONE = newSongButton("IM NOT THE ONLY ONE", {"sam smith"})
IM_STILL = newSongButton("IM STILL STANDING", {"sing", "elton john"})
IMMORTAL = newSongButton("IMMORTAL", {"playboi carti"})
IN_THE_NAME = newSongButton("IN THE NAME OF LOVE", {""})
INSANE = newSongButton("INSANE", {"hazbin hotel"})
INTERSTELLAR = newSongButton("INTERSTELLAR", {"hans zimmer", "cinematic", "movie", "popular"})
INVISIBLE = newSongButton("INVISIBLE (EDM)", {"ncs", "no copyright sounds"})
ISABELLA = newSongButton("ISABELLA'S LULLABY", {})
ISOLATION = newSongButton("ISOLATION", {"limbo", "geometry dash", "gd"})
IT_MEANS = newSongButton("IT MEANS EVERYTHING", {})
ITS_BEEN_SO = newSongButton("ITS BEEN SO LONG", {"the living tombstone", "five nights at freddys", "fnaf"})
ITS_JUST_A_BURNING = newSongButton("ITS JUST A BURNING MEMORY", {"the care taker", "the caretaker"})
ITS_RAINING = newSongButton("ITS RAINING TACOS", {})
JOCELYN_FLORES = newSongButton("JOCELYN FLORES", {"xxxtentacion"})
KAWAIKUTEGOMEN = newSongButton("KAWAIKUTEGOMEN", {"honeyworks"})
KEROSENE = newSongButton("KEROSENE", {"popular"})
KEY = newSongButton("KEY", {"c418"})
L = newSongButton("L", {"death note"})
LAVENDER_TOWN = newSongButton("LAVENDER TOWN", {"pokemon"})
LA_CAMPANELLA = newSongButton("LA CAMPANELLA", {"etude", "hard", "franz liszt"})
LACRIMOSA = newSongButton("LACRIMOSA (REQUIEM MVT.8)", {"mozart", "noot noot"})
LALALA = newSongButton("LALALA", {"bbno"})
LET_IT_HAPPEN = newSongButton("LET IT HAPPEN", {"tame impala"})
LET_ME_DOWN_SLOWLY = newSongButton("LET ME DOWN SLOWLY", {"alec benjamin"})
LET_ME_LOVE = newSongButton("LET ME LOVE YOU", {"justin bieber", "dj snake"})
LEVAN_POLKKA = newSongButton("LEVAN POLKKA", {"hatsune miku", "vocaloid", "le van"})
LEVELS = newSongButton("LEVELS", {"avicii"})
LIEBESTRAUM_NO3 = newSongButton("LIEBESTRAUM NO.3", {"franz liszt"})
LIGHT_SWITCH = newSongButton("LIGHT SWITCH", {"charlie puth"})
LIGHTS = newSongButton("LIGHTS THEME", {"death note"})
LIVING_MICE = newSongButton("LIVING MICE", {"c418"})
LOST_LIBRARY = newSongButton("LOST LIBRARY", {"omori"})
LOST_UMB = newSongButton("LOST UMBRELLA", {"cute depressed", "vocaloid"})
LOVE = newSongButton("LOVE (W2E)", {"wave to earth", "love."})
LOVELY_B = newSongButton("LOVELY BASTARDS", {"phonk"})
LUTHER = newSongButton("LUTHER", {"kendrick lamar", "sza", "GNX"})
LUX_AETERNA = newSongButton("LUX AETERNA (REQUIEM FOR A DREAM)", {"clint mansell"})
MA_MEILLEUR = newSongButton("MA MEILLEUR ENEMIE", {"stromae", "arcane"})
MAGICAL_CURE = newSongButton("M@GICAL CURE! LOVE SHOT!", {"miku", "vocaloid", "hatsune miku", "magical cure"})
MARI_BOSS = newSongButton("MARI BOSS FIGHT", {"omori"})
MARRIED = newSongButton("MARRIED LIFE", {"movie", "up"})
MARY_ON = newSongButton("MARY ON A CROSS", {""})
MASTER_OF_PUPPETS = newSongButton("MASTER OF PUPPETS", {"metallica"})
MEGALOVANIA = newSongButton("MEGALOVANIA", {"popular"})
METAMORPH = newSongButton("METAMORPHOSIS", {"phonk"})
MICE_ON = newSongButton("MICE ON VENUS", {"c418"})
MICHAEL_MYERS = newSongButton("MICHAEL MYERS", {"halloween"})
MIDDLE_OF_THE_NIGHT = newSongButton("MIDDLE OF THE NIGHT", {"elley duhe"})
MII = newSongButton("MII CHANNEL THEME", {"wii"})
MIKU = newSongButton("MIKU", {"vocaloid"})
MINECRAFT = newSongButton("MINECRAFT", {"c418"})
MINGLE = newSongButton("MINGLE (ROUND AND ROUND)", {"squid game"})
MONODY = newSongButton("MONODY", {"ncs", "no copyright sounds", "thefatrat"})
MONTAGEM_TOMADA = newSongButton("MONTAGEM TOMADA", {"phonk"})
MOOD = newSongButton("MOOD", {"24kgoldn"})
MOOG_CITY = newSongButton("MOOG CITY", {"c418"})
MOONLIGHT = newSongButton("MOONLIGHT SONATA - FIRST MOVEMENT", {"ludwig van beethoven"})
M3 = newSongButton("MOONLIGHT SONATA - THIRD MOVEMENT", {"ludwig van beethoven"})
MY_CASTLE_TOWN = newSongButton("MY CASTLE TOWN", {"toby fox"})
MY_EYES = newSongButton("MY EYES", {"travis scott", "utopia"})
MY_HEART_WILL_GO_ON = newSongButton("MY HEART WILL GO ON", {"titanic", "celine dion"})
MY_LOVE_ALL_MINE = newSongButton("MY LOVE MINE ALL MINE", {"mitski"})
MY_ORDINARY_LIFE = newSongButton("MY ORDINARY LIFE", {"the living tombstone"})
GIVE_UP = newSongButton("NEVER GONNA GIVE YOU UP", {"rick astley", "rickroll", "rick roll"})
NEVER_MEANT = newSongButton("NEVER MEANT TO BELONG", {"bleach"})
NO_SURPRISES = newSongButton("NO SURPRISES", {"radiohead"})
NOCTURNE = newSongButton("NOCTURNE OP.9 NO.2", {"frederic chopin"})
NOPE_YOUR_TOO_LATE = newSongButton("NOPE YOUR TOO LATE I ALREADY DIED", {"wifiskeleton"})
NOTHING_ELSE_MATTERS = newSongButton("NOTHING ELSE MATTERS", {"metallica"})
NOT_A_SLACKER = newSongButton("NOT A SLACKER ANYMORE", {})
NOT_LIKE_US = newSongButton("NOT LIKE US", {"kendrick lamar", "drake"})
NOTION = newSongButton("NOTION", {"the rare occasions"})
NUMBERS = newSongButton("NUMBERS", {"temporex"})
NYAN_CAT = newSongButton("NYAN CAT", {})
NYEH = newSongButton("NYEH HEH HEH!", {"papyrus"})
OBLIVION = newSongButton("OBLIVION (GRIMES)", {"grimes"})
OLD_DOLL = newSongButton("OLD DOLL", {"mad father"})
OLD_TOWN_ROAD = newSongButton("OLD TOWN ROAD", {"lil nas x"})
ONCE_UPON = newSongButton("ONCE UPON A TIME", {""})
ONE_DANCE = newSongButton("ONE DANCE", {"drake", "wizkid", "kyla"})
ORDER = newSongButton("ORDER (ULTRAKILL)", {"minos prime bossfight"})
ORDINARY = newSongButton("ORDINARY", {"alex warren"})
OVERTAKEN = newSongButton("OVERTAKEN", {"one piece"})
PARADISE = newSongButton("PARADISE", {"coldplay"})
PASSACAGLIA = newSongButton("PASSACAGLIA, SUITE NO.7", {""})
PASSO_BEM_SOLTO = newSongButton("PASSO BEM SOLTO", {"phonk"})
PAST_LIVES = newSongButton("PAST LIVES", {""})
PATHETIQUE = newSongButton("SONATE OP.13 NO.8 (PATHÉTIQUE)", {"ludwig van beethoven", "sonata pathetique"})
PAYPHONE = newSongButton("PAYPHONE", {"maroon 5"})
PEACHES = newSongButton("PEACHES", {"jack black", "bowser", "super mario bros"})
PLANT_VS_ZOMBIES = newSongButton("PLANT VS ZOMBIES", {"pvz"})
PLEAD = newSongButton("PLEAD (FORSAKEN)", {"roblox forsaken", "last man standing", "c00lkidd", "key after key", "007n7"})
POKEMON = newSongButton("POKEMON MAIN THEME", {""})
POKEMON_RED = newSongButton("POKEMON RED AND BLUE", {""})
PRAYER = newSongButton("PRAYER", {"kendrick lamar", "damn"})
PRELUDE_NO2 = newSongButton("BACH - PRELUDE NO.2", {"johann sebastian bach"})
PRELUDE_OP28 = newSongButton("CHOPIN - PRELUDE OP.28 NO.4", {"frederic chopin"})
RACING_INTO = newSongButton("RACING INTO THE NIGHT", {"yoasobi"})
RAIN = newSongButton("RAIN", {"tony ann"})
RATDANCE = newSongButton("RAT DANCE", {"chess"})
READY_OR_NOT = newSongButton("READY OR NOT (FORSAKEN)", {"c00lkidd chase", "roblox forsaken", "key after key"})
RESONANCE = newSongButton("RESONANCE", {"home"})
REVOLUTIONARY = newSongButton("ETUDE OP.10 NO.12 (REVOLUTIONARY)", {"frederic chopin"})
RIGHTEOUS = newSongButton("RIGHTEOUS (MO BEATS)", {""})
RIPTIDE = newSongButton("RIPTIDE", {"vance joy"})
RISE_UP = newSongButton("RISE UP", {"thefatrat", "ncs", "no copyright sounds"})
RISES_THE = newSongButton("RISES THE MOON", {"liana flores"})
RIVER_FLOWS = newSongButton("RIVER FLOWS IN YOU", {""})
ROMANTIC_HOMICIDE = newSongButton("ROMANTIC HOMICIDE", {"dv4d", "here with me"})
RUDE_BUSTER = newSongButton("RUDE BUSTER", {"toby fox"})
RUINS = newSongButton("RUINS", {})
RUNAWAY = newSongButton("RUNAWAY", {"kanye", "popular", "rap", "hip"})
RUNAWAY_AURORA = newSongButton("RUNAWAY (AURORA)", {""})
RUNNING_UP = newSongButton("RUNNING UP THAT HILL", {"stranger things"})
RUSH_C = newSongButton("RUSH C", {"sheet music boss"})
RUSHE = newSongButton("RUSH E", {"sheet music boss"})
RUSH_F = newSongButton("RUSH F", {"sheet music boss"})
RUSH_G = newSongButton("RUSH G", {"sheet music boss"})
RUSH_OF_LIFE = newSongButton("RUSH OF LIFE", {"tony ann"})
SAILOR_SONG = newSongButton("SAILOR SONG", {"gianna perez"})
SANS = newSongButton("SANS.", {"undertale"})
SAVE_YOUR = newSongButton("SAVE YOUR TEARS", {"weeknd"})
SCARLET_FOREST = newSongButton("SCARLET FOREST", {"toby fox"})
SEE_YOU_AGAIN = newSongButton("SEE YOU AGAIN (TYLER THE CREATOR)", {"tyler the creator", "kali urchis", "tyler, the creator", "flower boy"})
SEE_YOU_AGAIN_CHARLIE = newSongButton("SEE YOU AGAIN (CHARLIE PUTH)", {"charlie puth", "wiz khalifa"})
SHAPE_OF = newSongButton("SHAPE OF YOU", {"ed sheeran"})
SHIAWASE = newSongButton("SHIAWASE (VIP)", {"tidal wave", "geometry dash", "gd"})
SHIKAIRO = newSongButton("SHIKAIRO DAYS", {"my dear friend nokotan", "my deer friend nokotan"})
SHOP = newSongButton("SHOP", {})
SICK_OF_U = newSongButton("SICK OF U", {"boywithuke"})
SILHOUETTE = newSongButton("SILHOUETTE (NARUTO)", {"naruto shippuden    "})
SKELETAL_SHENANIGANS = newSongButton("SKELETAL SHENANIGANS", {"geometry dash", "gd"})
SKYFALL = newSongButton("SKYFALL", {"adele"})
SLAY = newSongButton("SLAY", {"eternxlz", "phonk"})
SNOWFALL = newSongButton("SNOWFALL", {"oneheart"})
SNOWY = newSongButton("SNOWY", {})
SOLAS = newSongButton("SOLAS", {"sad"})
SOMEBODY_THAT_I_USED = newSongButton("SOMEBODY THAT I USED TO KNOW", {"gotye"})
SOMETHING_JUST = newSongButton("SOMETHING JUST LIKE THIS", {"the chainsmokers"})
SONG_THAT_MIGHT = newSongButton("SONG THAT MIGHT PLAY WHEN YOU FIGHT SANS", {"undertale"})
SOVIET_UNION_ANTHEM = newSongButton("SOVIET UNION ANTHEM", {})
SPACE_SONG = newSongButton("SPACE SONG", {"beach house"})
SPARKLE = newSongButton("SPARKLE", {"radwimps", "your name", "kimi no na wa"})
SPEAR_OF = newSongButton("SPEAR OF JUSTICE", {})
SPECTRE = newSongButton("SPECTRE", {"alan walker", "ncs", "no copyright sounds", "smurf cat"})
SPIDER_DANCE = newSongButton("SPIDER DANCE", {"muffet"})
STAY = newSongButton("STAY", {"justin bieber", "kid laroi"})
STEREO_HEARTS = newSongButton("STEREO HEARTS", {"gym class heroes", "adam levine"})
STEREO_MADNESS = newSongButton("STEREO MADNESS", {"geometry dash", "gd"})
STRANGER_THINGS = newSongButton("STRANGER THINGS", {})
STRESSED_OUT = newSongButton("STRESSED OUT", {"twenty one pilots", "21 pilots", "heathens"})
STRANGERS = newSongButton("STRANGERS", {"kenya grace"})
SUBWOOFER = newSongButton("SUBWOOFER LULLABY", {"c418"})
SUGAR_PLUM = newSongButton("DANCE OF THE SUGAR PLUM FAIRY", {"christmas", "hard"})
SUNFLOWER = newSongButton("SUNFLOWER", {"spider man", "post malone"})
SUPER_IDOL = newSongButton("SUPER IDOL", {})
SUPER_MARIOS = newSongButton("SUPER MARIO BROS", {""})
SUZUME = newSongButton("SUZUME NO TOJIMARI", {"suzume", "radwimps"})
SWEATER_WEATHER = newSongButton("SWEATER WEATHER", {"the neighbourhood", "love", "popular"})
SWEDEN = newSongButton("SWEDEN", {"c418"})
SWIMMING = newSongButton("SWIMMING", {"flawed mangoes", "dramamime"})
SYMPHONY_NO5 = newSongButton("SYMPHONY NO.5", {"ludwig van beethoven", "5th symphony", "fifth symphony"})
TAKE_FIVE = newSongButton("TAKE FIVE", {"dave brubeck", "jazz"})
TAKE_ON_ME = newSongButton("TAKE ON ME", {"a-ha"})
TEST_DRIVE = newSongButton("TEST DRIVE", {"how to train your dragon", "john powell"})
THATS_WHAT_I_WANT = newSongButton("THATS WHAT I WANT", {"lil nas x"})
AUTUMN = newSongButton("THE 4 SEASONS - AUTUMN", {"the 4 seasons", "vivaldi", "the four seasons"})
SPRING = newSongButton("THE 4 SEASONS - SPRING", {"the 4 seasons", "vivaldi", "the four seasons"})
SUMMER = newSongButton("THE 4 SEASONS - SUMMER", {"the 4 seasons", "vivaldi", "the four seasons"})
WINTER = newSongButton("THE 4 SEASONS - WINTER", {"the 4 seasons", "vivaldi", "the four seasons"})
THE_AMAZING_DIGITAL = newSongButton("THE AMAZING DIGITAL CIRCUS", {"pomni"})
THE_BEN = newSongButton("THE BENONI", {""})
THE_ECSTASY_OF_GOLD = newSongButton("THE ECSTASY OF GOLD", {"the good, the bad and the ugly", "the good the bad and the ugly"})
THE_ENTERTAINER = newSongButton("THE ENTERTAINER", {})
THE_GREAT_FAIRY = newSongButton("THE GREAT FAIRY FOUNTAIN", {"zelda", "the legend of zelda"})
THE_LEGEND = newSongButton("THE LEGEND", {"toby fox"})
THE_NIGHTS = newSongButton("THE NIGHTS", {"avicii"})
THE_SEARCH = newSongButton("THE SEARCH", {"nf"})
THE_SLAUGHTER_CONT = newSongButton("THE SLAUGHTER CONTINUES", {"undertale last breath", "last breath"})
THE_WORLD = newSongButton("THE WORLD", {"death note"})
THE_WORLD_REVOLVING = newSongButton("THE WORLD REVOLVING", {"toby fox"})
THICK_OF_IT = newSongButton("THICK OF IT", {"nigga", "ksi", "shit", "popular"})
THIS_IS_WHAT_HEARTBREAK = newSongButton("THIS IS WHAT HEARTBREAK FEELS LIKE", {"jvke", "golden hour"})
THIS_IS_WHAT_WINTER = newSongButton("THIS IS WHAT WINTER FEELS LIKE", {"jvke", "golden hour"})
TICKING = newSongButton("TICKING", {""})
TIME_BACK = newSongButton("TIME BACK", {""})
TIME_FLOWS_EVER_ONWARD = newSongButton("TIME FLOWS EVER ONWARD", {"frieren", "sousou no frieren"})
TORRENT = newSongButton("ETUDE OP.10 NO.4 (TORRENT)", {"frederic chopin"})
TOXIC = newSongButton("TOXIC (BOYWITHUKE)", {""})
TRAP_R = newSongButton("TRAP ROYALTY", {"fetty wap"})
TURKISH = newSongButton("TURKISH MARCH", {"mozart", "rondo alla turca"})
UNDERSTAND = newSongButton("UNDERSTAND", {"boywithuke"})
UNDERTALE = newSongButton("UNDERTALE", {})
UNDERWATER = newSongButton("UNDERWATER PROM QUEENS", {"omori"})
UNITY = newSongButton("UNITY", {"thefatrat", "ncs", "no copyright sounds"})
UNRAVEL = newSongButton("UNRAVEL", {"tokyo ghoul"})
UNRAVEL_EPIC = newSongButton("UNRAVEL (EPIC VER.)", {"tokyo ghoul", "animenz"})
UNSTOPPABLE = newSongButton("UNSTOPPABLE", {"sia"})
UNTIL_I_FOUND_YOU = newSongButton("UNTIL I FOUND YOU", {"stephen sanchez"})
UNTITLED = newSongButton("UNTITLED", {"oobja main theme", "cooked"})
VAMPIRE = newSongButton("VAMPIRE", {"olivia rodrigo"})
VIVA_LA_VIDA = newSongButton("VIVA LA VIDA", {"coldplay"})
WAITING_FOR = newSongButton("WAITING FOR LOVE", {"avicii"})
WAKE_ME = newSongButton("WAKE ME UP", {"avicii"})
WALTZ_IN_C_MINOR = newSongButton("CHOPIN - WALTZ OP.64 NO.2", {"frederic chopin"})
WASHING = newSongButton("WASHING MACHINE HEART", {"mitski"})
WE_ARE = newSongButton("WE ARE! (ONE PIECE)", {})
WE_DONT = newSongButton("WE DONT TALK ABOUT BRUNO", {"encanto"})
WEDDING_MARCH = newSongButton("WEDDING MARCH", {"wedding"})
WET_HANDS = newSongButton("WET HANDS", {"c418"})
WHERE_WE = newSongButton("WHERE WE PLAYED", {"omori"})
WHY_DID_I_SAY = newSongButton("WHY DID I SAY OKIE-DOKIE", {"doki doki literature club", "ddlc"})
WII_SPORTS_TITLE = newSongButton("WII SPORTS TITLE THEME", {"wii sports", "nintendo"})
WINTER_WIND = newSongButton("ETUDE OP.25 NO.11 (WINTER WIND)", {"frederic chopin"})
WORLDS_END = newSongButton("WORLDS END VALENTINE", {"omori"})
XO_TOUR = newSongButton("XO TOUR LLIF3", {"lil uzi vert"})
YOUNG_GIRL_A = newSongButton("YOUNG GIRL A", {"siinamota", "vocaloid"})
YOUNG_GIRL_A_2 = newSongButton("YOUNG GIRL A (EPIC VER.)", {"siinamota", "vocaloid"})
YOUR_REALITY = newSongButton("YOUR REALITY", {"ddlc", "doki"})
YUUSHA = newSongButton("YUUSHA (THE BRAVE)", {"yoasobi", "frieren"})
ZOMBIE = newSongButton("ZOMBIE", {"the cranberries"})
GIMME_GIMME_GIMME = newSongButton("GIMME! GIMME! GIMME!", {"abba"})
BARBIE_GIRL = newSongButton("BARBIE GIRL", {})
WHAT_IS_LOVE = newSongButton("WHAT IS LOVE", {"haddaway"})
DRAGOSTEA_DIN_TEI = newSongButton("DRAGOSTEA DIN TEI (NUMA NUMA)", {"o-zone", "o zone"})
STAYIN_ALIVE = newSongButton("STAYIN' ALIVE", {"the bee gees", "the bee gess"})
CLOSE_EYES = newSongButton("CLOSE EYES", {"closed eyes", "dvrst", "phonk"})
BOOM_BOOM_BOOM_BOOM = newSongButton("BOOM BOOM BOOM BOOM", {"vengaboys"})
FUNK_ESTRANHO = newSongButton("FUNK ESTRANHO", {"ALXIKE", "phonk"})
GUREN_NO_YUMIYA = newSongButton("GUREN NO YUMIYA (ATTACK ON TITAN)", {"animenz", "aot"})
IDEA_1 = newSongButton("IDEA 1", {"gibran alcocer"})
COMEDY = newSongButton("COMEDY/KIGEKI (SPY X FAMILY)", {})
LET_IT_GO = newSongButton("LET IT GO", {"elsa", "frozen", "disney"})
BETTER_OFF_ALONE = newSongButton("BETTER OFF ALONE", {"a deejay", "deejay"})
MY_WAR = newSongButton("MY WAR (ATTACK ON TITAN)", {"boku no sensou", "aot"})
AFRICA = newSongButton("AFRICA", {"toto"})
KICK_BACK = newSongButton("KICK BACK (CHAINSAW MAN)", {})
REVENGE = newSongButton("REVENGE (CREEPER)", {"creeper awww", "tryhardninja", "captainsparklez"})
SPECIALZ = newSongButton("SPECIALZ (JJK)", {"jujutsu kaisen"})
F1 = newSongButton("F1", {"hans zimmer"})
MONTAGEM_CORAL = newSongButton("MONTAGEM CORAL", {"phonk", "funk"})
RUNNING_IN_THE_90S = newSongButton("RUNNING IN THE 90S", {"max coveri"})
A_CRUEL_ANGELS_THESIS = newSongButton("A CRUEL ANGLES THESIS", {"neon genesis evangelion", "neo genesis"})
BLUEBIRD = newSongButton("BLUEBIRD", {"naruto shippuden"})
IM_INVINCIBLE = newSongButton("IM INVINCIBLE (ONE PIECE)", {"one piece film red"})
LAMOUR_TOUJOURS = newSongButton("L'AMOUR TOUJOURS", {"gigi d'agostino", "gigi dagostino"})
CRAZY_FROG = newSongButton("CRAZY FROG", {"axel f"})
YOUR_GAZE = newSongButton("YOUR GAZE (FRAGRANT FLOWER)", {"the fragrant flower blooms with dignity"})
SHINZOU_WO_SASEGEYO = newSongButton("SHINZOU WO SASEGEYO", {"attack on titan", "aot"})
A2_PHUT_HON = newSongButton("2 PHUT HON FUNK", {"phonk", "salesman"})
I_CANT_HANDLE_CHANGE = newSongButton("I CANT HANDLE CHANGE", {"roar"})
HANA_NI_NATTE = newSongButton("HANA NI NATTE (APOTHECARY DIARIES)", {"the apothecary diaries"})
IDEA_9 = newSongButton("IDEA 9", {"gibran alcocer"})
IDEA_22 = newSongButton("IDEA 22", {"gibran alcocer"})

A90210 = newSongButton("90210", {"travis scott"})
I_BROKE_A_STRING = newSongButton("I BROKE A STRING MAKING THIS PART", {})
THE_BEGINNING = newSongButton("THE BEGINNING", {"flawed mangoes"})
GYMNOPEDIE_NO1 = newSongButton("GYMNOPÉDIE NO.1", {"satie"})
CRY_FOR_ME_MICHITA = newSongButton("CRY FOR ME (feat. 愛海)", {})
DARK_IS_THE_NIGHT = newSongButton("DARK IS THE NIGHT", {"Nikita Bogoslovsky"})
MY_WAY = newSongButton("MY WAY", {"frank sinatra"})
STILL_DRE = newSongButton("STILL D.R.E.", {"snoop dogg"})
THE_BLUE_DANUBE = newSongButton("THE BLUE DANUBE", {"squid game"})
NEVER_BE_ALONE = newSongButton("NEVER BE ALONE", {"fnaf", "five nights at freddy's", "shadrow"})
RUDER_BUSTER = newSongButton("RUDER BUSTER", {"toby fox"})
LOVER_IS_A_DAY = newSongButton("LOVER IS A DAY", {"cuco"})
DANDELIONS = newSongButton("DANDELIONS", {})
MY_KIND_OF_WOMAN = newSongButton("MY KIND OF WOMAN", {"mac demarco"})
WHEN_I_MET_YOU = newSongButton("WHEN I MET YOU", {"apo hiking society"})
SADNESS_AND_SORROW = newSongButton("SADNESS AND SORROW", {"naruto shippuden"})
THIS_IS_WHAT_FALLING_IN_LOVE = newSongButton("THIS IS WHAT FALLING IN LOVE FEELS LIKE", {"jvke"})
CHA_LA_HEAD_CHA_LA = newSongButton("CHHA LA HEAD CHA LA", {"dragon ball z"})
UWA_SO_TEMPERATE = newSongButton("UWA!! SO TEMPERATE♫", {"toby fox"})
WE_WERE_ANGELS = newSongButton("WE WERE ANGELS", {"dragon ball z"})
WIEGE = newSongButton("WIEGE", {"alien stage"})
DEPARTURE = newSongButton("DEPARTURE", {"hunter x hunter"})
RUE_DES_TROIS_FRERES = newSongButton("RUE DES TROIS FRERES", {})
ITS_TV_TIME = newSongButton("IT'S TV TIME!", {"toby fox", "its tv time"})
CONCERTO_OP30_NO3 = newSongButton("RACHMANINOFF - CONCERTO OP.30 NO.3", {"rachmaninoff"})
MORNING_MOOD = newSongButton("PEER GYNT OP.46 NO.1 (MORNING MOOD)", {"grow a garden"})
ETUDE_NO3_UN_SOSPIRO = newSongButton("LISZT - ETUDE NO.3 (UN SOSPIRO)", {"franz liszt"})
SERENADE = newSongButton("SCHUBERT - SERENADE", {"franz liszt"})
POLONAISE = newSongButton("POLONAISE IN F SHARP MINOR OP.44", {"frederic chopin"})
VIENNA = newSongButton("VIENNA", {"billy joel"})
ONE_SUMMERS_DAY = newSongButton("ONE SUMMER'S DAY", {"spirited away", "studio ghibli", "joe hisaishi"})
LE_MONDE = newSongButton("LE MONDE", {})
JUDAS = newSongButton("JUDAS", {"lady gaga"})
GYMONPEDIE_NO2 = newSongButton("GYMNOPÉDIE NO.2", {"satie"})
LIKE_HIM_BEST = newSongButton("LIKE HIM (BEST PART)", {"chromakopia", "tyler the creator"})
WATERFALL = newSongButton("WATERFALL", {"toby fox"})
KISS_THE_RAIN = newSongButton("KISS THE RAIN", {"yiruma"})
KAMADO_TANJIRO_NO_UTA = newSongButton("KAMADO TANJIRO NO UTA", {"demon slayer"})
ON_MY_WAY = newSongButton("ON MY WAY", {"alan walker", "ncs", "no copyright sounds"})
A7_YEARS = newSongButton("7 YEARS", {"lukas graham"})
PIANO_MAN = newSongButton("PIANO MAN", {"billy joel"})
NIGHT_DANCER = newSongButton("NIGHT DANCER", {"imase"})
LET_YOU_BREAK_MY_HEART_AGAIN = newSongButton("LET YOU BREAK MY HEART AGAIN", {"laufey"})
WHAT_WAS_I_MADE_FOR = newSongButton("WHAT WAS I MADE FOR", {"billie eilish"})
SPAWN = newSongButton("SPAWN", {"toby fox"})
ALL_I_WANT_FOR_CHRISTMAS_IS_YOU = newSongButton("ALL I WANT FOR CHRISTMAS IS YOU", {"mariah carey"})
IN_HELL_WE_LIVE = newSongButton("IN HELL WE LIVE, LAMENT", {"mili", "limbus company"})
SPOOKY_SCARY_SKELETONS = newSongButton("SPOOKY SCARY SKELETONS", {"halloween"})
A_HOME_FOR_FLOWERS = newSongButton("A HOME FOR FLOWERS", {})
MONTAGEM_XONADA = newSongButton("MONTAGEM XONADA", {"MXZI", "phonk", "funk"})
BLACK_KNIFE = newSongButton("BLACK KNIFE", {"toby fox"})
RENAI_CIRCULATION = newSongButton("RENAI CIRCULATION", {"bakemonogatari"})
CHIISANA_KOI_NO_UTA = newSongButton("CHIISANA KOI NO UTA", {})
WHERE_OUR_BLUE_IS = newSongButton("WHERE OUR BLUE IS", {"tatsuya kitani", "jjk", "jujutsu kaisen"})
CHAMBER_OF_REFLECTION = newSongButton("CHAMBER OF REFLECTION", {"mac demarco"})
SWAN_LAKE = newSongButton("SWAN LAKE", {"tchaikovsky"})
BUTCHER_VANITY = newSongButton("BUTCHER VANITY", {"vane lily", "forsaken", "roblox"})
THIS_IS_HALLOWEEN = newSongButton("THIS IS HALLOWEEN", {})
CANT_HELP_FALLING_IN_LOVE = newSongButton("CAN'T HELP FALLING IN LOVE", {"elvis presley", "cant help falling in love"})
LIKE_HIM = newSongButton("LIKE HIM", {"tyler the creator", "chromakopia"})
CRUCIFIED = newSongButton("CRUCIFIED", {"army of lovers"})
BLACK_CATCHER = newSongButton("BLACK CATCHER", {"black clover"})
LOVELY = newSongButton("LOVELY", {"billie eilish", "khalid"})
HEY_KIDS = newSongButton("HEY KIDS", {})
SNOWMAN = newSongButton("SNOWMAN", {"christmas", "sia"})
PIXEL_PEEKER_POLKA = newSongButton("PIXEL PEEKER POLKA (DON'T TOUCH MY PIZZA)", {"kevin macleod", "dont touch my pizza"})
FAST = newSongButton("FAST", {"juice wrld"})
GYMNOPEDIE_NO3 = newSongButton("GYMNOPÉDIE NO.3", {"satie"})
REFLECTIONS = newSongButton("REFLECTION", {"toshifumi hinata"})
LOVE_STORY = newSongButton("LOVE STORY", {"indila"})
HELLO_ADELE = newSongButton("HELLO (ADELE)", {"adele"})

local framebuttons = {}

for _, button in ipairs(scroll:GetChildren()) do
    if button:IsA("TextButton") and button ~= LOOPRANDOM and button ~= PLAYRANDOM then
        table.insert(framebuttons, button)
    end
end

table.sort(
    framebuttons,
    function(a, b)
        return a.Name:lower() < b.Name:lower()
    end
)

for index, button in ipairs(framebuttons) do
    button.LayoutOrder = index
end


MANGOMANGOMANGO = newSongButton("MANGO MANGO MANGO", {""})
MANGOMANGOMANGO.LayoutOrder = #framebuttons + 1
DEATH_WALTZ = newSongButton("DEATH WALTZ (WARNING)", {""})
DEATH_WALTZ.LayoutOrder = #framebuttons + 1

local songs = {
    {button = INTERSTELLAR, bpm = "104", var = false, url = "INTERSTELLAR", cat = {"epic", "beautiful", "movies/tv"}},
    {button = RUSHE, bpm = "80", var = false, url = "RUSH_E", cat = {"memes"}},
    {button = GOLDENHOUR, bpm = "94", var = false, url = "GOLDEN_HOUR", cat = {"beautiful", "best"}},
    {button = CUPID, bpm = "120", var = false, url = "CUPID", cat = {"pop/hiphop"}},
    {button = RATDANCE, bpm = "120", var = false, url = "RAT_DANCE", cat = {"memes"}},
    {button = RUNAWAY, bpm = "160", var = false, url = "RUNAWAY", cat = {"pop/hiphop"}},
    {button = YOUR_REALITY, bpm = "105", var = false, url = "YOUR_REALITY", cat = {"video games", "beautiful", "best"}},
    {button = ANOTHER_LOVE, bpm = "123", var = false, url = "ANOTHER_LOVE", cat = {"sad", "best", "epic", "beautiful", "pop/hiphop"}},
    {button = FINAL_DUET, bpm = "84", var = false, url = "FINAL_DUET", cat = {"video games", "omori"}},
    {button = EXPERIENCE, bpm = "92", var = false, url = "EXPERIENCE", cat = {"epic", "best", "beautiful", "peak"}},
    {button = CAN_YOU_HEAR, bpm = "80", var = false, url = "CAN_YOU_HEAR_THE_FUCKING_MUSIC", cat = {"epic", "movies/tv"}},
    {button = HOWLS_MOVING_CASTLE, bpm = "156", var = false, url = "HOWLS_MOVING_CASTLE", cat = {"anime/jpop", "beautiful", "movies/tv"}},
    {button = YOUNG_GIRL_A, bpm = "130", var = false, url = "YOUNG_GIRL_A", cat = {"anime/jpop", "sad", "beautiful", "best"}},
    {button = ARIA_MATH, bpm = "84", var = false, url = "ARIA_MATH", cat = {"video games", "minecraft", "beautiful"}},
    {button = ALL_MY_FELLAS, bpm = "160", var = false, url = "ALL_MY_FELLAS", cat = {"memes"}},
    {button = THICK_OF_IT, bpm = "146", var = false, url = "THICK_OF_IT", cat = {"memes"}},
    {button = ROMANTIC_HOMICIDE, bpm = "132", var = false, url = "ROMANTIC_HOMICIDE", cat = {"sad"}},
    {button = IF_I_AM_WITH_YOU, bpm = "82", var = false, url = "IF_I_AM_WITH_YOU", cat = {"anime/jpop", "best", "beautiful", "peak", "movies/tv"}},
    {button = CRADLES, bpm = "79", var = false, url = "CRADLES", cat = {"electronic"}},
    {button = IDOL, bpm = "166", var = false, url = "IDOL", cat = {"anime/jpop", "best", "movies/tv"}},
    {button = RIVER_FLOWS, bpm = "137", var = false, url = "RIVER_FLOWS_IN_YOU", cat = {"sad"}},
    {button = NOCTURNE, bpm = "62", var = false, url = "NOCTURNE", cat = {"classical", "best"}},
    {button = ISABELLA, bpm = "112", var = false, url = "ISABELLAS_LULLABY", cat = {"video games"}},
    {button = GIORNO, bpm = "135", var = false, url = "GIORNO", cat = {"anime/jpop", "memes", "movies/tv"}},
    {button = GIVE_UP, bpm = "113", var = false, url = "GIVE_UP", cat = {"memes", "pop/hiphop"}},
    {button = UNRAVEL, bpm = "135", var = false, url = "UNRAVEL", cat = {"anime/jpop", "beautiful", "movies/tv"}},
    {button = WINTER_WIND, bpm = "125", var = false, url = "WINTER_WIND", cat = {"classical"}},
    {button = SWEATER_WEATHER, bpm = "124", var = false, url = "SWEATER_WEATHER", cat = {"sad"}},
    {button = VIVA_LA_VIDA, bpm = "138", var = false, url = "VIVA_LA_VIDA", cat = {"epic", "beautiful", "best", "peak"}},
    {button = M3, bpm = "163", var = false, url = "WHAT_THE_FUCKK", cat = {"classical", "best", "peak"}},
    {button = NEVER_MEANT, bpm = "66", var = false, url = "NEVER_MEANT", cat = {"anime/jpop", "movies/tv"}},
    {button = AVENGERS, bpm = "120", var = false, url = "AVENGERS", cat = {"epic", "best", "movies/tv"}},
    {button = BEETHOVEN_VIRUS, bpm = "162", var = false, url = "BEETHOVEN_VIRUS", cat = {"classical", "electronic", "best", "peak"}},
    {button = LA_CAMPANELLA, bpm = "107", var = false, url = "LA_CAMPANELLA", cat = {"classical", "best", "beautiful"}},
    {button = KEROSENE, bpm = "116", var = false, url = "KEROSENE", cat = {"electronic"}},
    {button = RACING_INTO, bpm = "129", var = false, url = "RACING_INTO", cat = {"anime/jpop", "best", "beautiful"}},
    {button = SURVIVE, bpm = "80", var = false, url = "SURVIVE", cat = {"pop/hiphop", "best"}},
    {button = MEGALOVANIA, bpm = "120", var = false, url = "MEGALOVANIA", cat = {"video games", "undertale", "memes"}},
    {button = COCONUT, bpm = "132", var = false, url = "COCONUT", cat = {"video games"}},
    {button = FADED, bpm = "90", var = false, url = "FADED", cat = {"electronic", "sad"}},
    {button = SOLAS, bpm = "120", var = false, url = "SOLAS", cat = {"beautiful"}},
    {button = MARRIED, bpm = "83", var = false, url = "MARRIED", cat = {"sad", "movies/tv"}},
    {button = BAD_PIGGIES, bpm = "156", var = false, url = "BAD_PIGGIES", cat = {"video games"}},
    {button = ASGORE, bpm = "115", var = false, url = "ASGORE", cat = {"video games", "undertale"}},
    {button = CARELESS, bpm = "153", var = false, url = "CARELESS", cat = {"memes"}},
    {button = I_WANT, bpm = "122", var = false, url = "I_WANT", cat = {"pop/hiphop", "rock"}},
    {button = IM_STILL, bpm = "177", var = false, url = "IM_STILL", cat = {"best", "rock", "movies/tv"}},
    {button = HELLO, bpm = "105", var = false, url = "HELLO", cat = {"electronic"}},
    {button = BAD_APPLE, bpm = "138", var = false, url = "BAD_APPLE", cat = {"anime/jpop"}},
    {button = FR, bpm = "82", var = false, url = "FR", cat = {"beautiful"}},
    {button = DIE_WITH, bpm = "152", var = false, url = "DIE_WITH", cat = {"pop/hiphop", "sad", "beautiful", "best", "peak"}},
    {button = FALLEN_DOWN, bpm = "110", var = false, url = "FALLEN_DOWN", cat = {"video games", "undertale", "beautiful"}},
    {button = ENIGMATIC, bpm = "50", var = false, url = "ENIGMATIC", cat = {"video games", "undertale", "best", "peak"}},
    {button = DEATH_WALTZ, bpm = "210", var = false, url = "DEATH_WALTZ", cat = {"all"}},
    {button = MIKU, bpm = "135", var = false, url = "MIKU", cat = {"anime/jpop"}},
    {button = A_THOUSAND, bpm = "100", var = false, url = "A_THOUSAND", cat = {"pop/hiphop"}},
    {button = SUGAR_PLUM, bpm = "70", var = false, url = "SUGAR_PLUM", cat = {"classical"}},
    {button = SPEED_OF, bpm = "162", var = false, url = "SPEED_OF", cat = {"video games", "electronic", "epic", "best", "peak"}},
    {button = WET_HANDS, bpm = "74", var = false, url = "WET_HANDS", cat = {"video games", "minecraft", "beautiful"}},
    {button = SWEDEN, bpm = "44", var = false, url = "SWEDEN", cat = {"video games", "minecraft"}},
    {button = SUBWOOFER, bpm = "76", var = false, url = "SUBWOOFER", cat = {"video games", "minecraft"}},
    {button = MICE_ON, bpm = "56", var = false, url = "MICE_ON", cat = {"video games", "minecraft", "sad"}},
    {button = DRY_HANDS, bpm = "90", var = false, url = "DRY_HANDS", cat = {"video games", "minecraft", "beautiful"}},
    {button = HAGGSTORM, bpm = "102", var = false, url = "HAGGSTORM", cat = {"video games", "minecraft"}},
    {button = LIVING_MICE, bpm = "74", var = false, url = "LIVING_MICE", cat = {"video games", "minecraft"}},
    {button = KEY, bpm = "70", var = false, url = "KEY", cat = {"video games", "minecraft", "beautiful"}},
    {button = MOOG_CITY, bpm = "116", var = false, url = "MOOG_CITY", cat = {"video games", "minecraft", "beautiful", "best"}},
    {button = MINECRAFT, bpm = "106", var = false, url = "MINECRAFT", cat = {"video games", "minecraft"}},
    {button = UNDERTALE, bpm = "100", var = false, url = "UNDERTALE", cat = {"video games", "undertale", "best", "epic"}},
    {button = HOPES_DREAMS, bpm = "170", var = false, url = "HOPES_DREAMS", cat = {"video games", "undertale", "best", "epic", "peak"}},
    {button = NYEH, bpm = "150", var = false, url = "NYEH", cat = {"video games", "undertale", "best"}},
    {button = SPIDER_DANCE, bpm = "115", var = false, url = "SPIDER_DANCE", cat = {"video games", "undertale"}},
    {button = HEARTACHE, bpm = "160", var = false, url = "HEARTACHE", cat = {"video games", "undertale"}},
    {button = BATTLE_AGAINST, bpm = "150", var = false, url = "BATTLE_AGAINST", cat = {"video games", "undertale"}},
    {button = HIS_THEME, bpm = "90", var = false, url = "HIS_THEME", cat = {"video games", "undertale"}},
    {button = SNOWY, bpm = "120", var = false, url = "SNOWY", cat = {"video games", "undertale"}},
    {button = SPEAR_OF, bpm = "130", var = false, url = "SPEAR_OF", cat = {"video games", "undertale", "best"}},
    {button = DOG_SONG, bpm = "230", var = false, url = "DOG_SONG", cat = {"video games", "undertale"}},
    {button = ONCE_UPON, bpm = "65", var = false, url = "ONCE_UPON", cat = {"video games", "undertale"}},
    {button = NOT_A_SLACKER, bpm = "145", var = false, url = "NOT_A_SLACKER", cat = {"video games", "undertale"}},
    {button = SHOP, bpm = "77", var = false, url = "SHOP", cat = {"video games", "undertale"}},
    {button = FINALE, bpm = "190", var = false, url = "FINALE", cat = {"video games", "undertale"}},
    {button = BY_YOUR_SIDE, bpm = "88", var = false, url = "BY_YOUR_SIDE", cat = {"video games", "omori"}},
    {button = WORLDS_END, bpm = "152", var = false, url = "WORLDS_END", cat = {"video games", "omori", "best"}},
    {button = LOST_LIBRARY, bpm = "62", var = false, url = "LOST_LIBRARY", cat = {"video games", "omori"}},
    {button = BREADY, bpm = "160", var = false, url = "BREADY", cat = {"video games", "omori", "best"}},
    {button = IT_MEANS, bpm = "96", var = false, url = "IT_MEANS", cat = {"video games", "omori"}},
    {button = UNDERWATER, bpm = "160", var = false, url = "UNDERWATER", cat = {"video games", "omori"}},
    {button = WHERE_WE, bpm = "96", var = false, url = "WHERE_WE", cat = {"video games", "omori"}},
    {button = MARI_BOSS, bpm = "169", var = false, url = "MARI_BOSS", cat = {"video games", "omori"}},
    {button = GOOD_MORNING, bpm = "90", var = false, url = "GOOD_MORNING", cat = {"video games", "omori"}},
    {button = FUR_ELISE, bpm = "72", var = false, url = "FUR_ELISE", cat = {"classical"}},
    {button = MOONLIGHT, bpm = "51", var = false, url = "MOONLIGHT", cat = {"classical"}},
    {button = FANTAISIE, bpm = "168", var = false, url = "FANTAISIE", cat = {"classical"}},
    {button = DROWNING_LOVE, bpm = "112", var = false, url = "DROWNING_LOVE", cat = {"beautiful", "sad", "best", "peak", "movies/tv"}},
    {button = CANON_D, bpm = "100", var = false, url = "CANON_D", cat = {"classical"}},
    {button = FREEDOM_DIVE, bpm = "220", var = false, url = "FREEDOM_DIVE", cat = {"electronic"}},
    {button = STAY, bpm = "85", var = false, url = "STAY", cat = {"pop/hiphop"}},
    {button = TURKISH, bpm = "92", var = false, url = "TURKISH", cat = {"classical"}},
    {button = SUPER_MARIOS, bpm = "180", var = false, url = "SUPER_MARIOS", cat = {"video games", "memes"}},
    {button = MII, bpm = "114", var = false, url = "MII", cat = {"video games", "memes"}},
    {button = LACRIMOSA, bpm = "64", var = false, url = "LACRIMOSA", cat = {"classical", "memes"}},
    {button = DESPACITO, bpm = "89", var = false, url = "DESPACITO", cat = {"pop/hiphop", "memes"}},
    {button = WE_DONT, bpm = "103", var = false, url = "WE_DONT", cat = {}},
    {button = HUNGARIAN, bpm = "130", var = false, url = "HUNGARIAN", cat = {"classical"}},
    {button = SKYFALL, bpm = "70", var = false, url = "SKYFALL", cat = {"epic", "best"}},
    {button = THE_ENTERTAINER, bpm = "60", var = false, url = "THE_ENTERTAINER", cat = {"memes", "best"}},
    {button = DONT_STOP, bpm = "118", var = false, url = "DONT_STOP", cat = {"rock", "best"}},
    {button = DREAM_ON, bpm = "78", var = false, url = "DREAM_ON", cat = {"rock"}},
    {button = HIT_THE_ROAD, bpm = "60", var = false, url = "HIT_THE_ROAD", cat = {"rock"}},
    {button = TOXIC, bpm = "180", var = false, url = "TOXIC", cat = {"sad", "pop/hiphop"}},
    {button = UNDERSTAND, bpm = "206", var = false, url = "UNDERSTAND", cat = {"sad"}},
    {button = SICK_OF_U, bpm = "185", var = false, url = "SICK_OF_U", cat = {"sad"}},
    {button = IDGAF, bpm = "196", var = false, url = "IDGAF", cat = {"sad"}},
    {button = EASY_ON_ME, bpm = "73", var = false, url = "EASY_ON_ME", cat = {"", "pop/hiphop"}},
    {button = METAMORPH, bpm = "180", var = false, url = "METAMORPH", cat = {"electronic"}},
    {button = SWIMMING, bpm = "165", var = false, url = "SWIMMING", cat = {"beautiful", "best"}},
    {button = DRAMAM, bpm = "224", var = false, url = "DRAMAM", cat = {"beautiful"}},
    {button = LOST_UMB, bpm = "133", var = false, url = "LOST_UMB", cat = {"electronic", "anime/jpop"}},
    {button = LOVELY_B, bpm = "150", var = false, url = "LOVELY_B", cat = {"memes", "best"}},
    {button = TRAP_R, bpm = "151", var = false, url = "TRAP_R", cat = {"memes", "epic", "best", "beautiful"}},
    {button = MANGOMANGOMANGO, bpm = "110", var = false, url = "MANGOMANGOMANGO", cat = {"peak"}},
    {button = DREAM_FL, bpm = "150", var = false, url = "DREAM_FL", cat = {"electronic"}},
    {button = LALALA, bpm = "130", var = false, url = "LALALA", cat = {"pop/hiphop"}},
    {button = THE_BEN, bpm = "180", var = false, url = "THE_BEN", cat = {"classical", "epic", "best"}},
    {button = POKEMON, bpm = "160", var = false, url = "POKEMON", cat = {"video games", "anime/jpop", "movies/tv"}},
    {button = POKEMON_RED, bpm = "180", var = false, url = "POKEMON_RED", cat = {"video games", "anime/jpop", "movies/tv"}},
    {button = FLASHING, bpm = "100", var = false, url = "FLASHING", cat = {"pop/hiphop", "epic", "beautiful"}},
    {button = ALL_GIRLS, bpm = "85", var = false, url = "ALL_GIRLS", cat = {"pop/hiphop", "sad", "best"}},
    {button = SAVE_YOUR, bpm = "120", var = false, url = "SAVE_YOUR", cat = {"pop/hiphop", "sad"}},
    {button = LIGHTS, bpm = "132", var = false, url = "LIGHTS", cat = {"anime/jpop"}},
    {button = THE_WORLD, bpm = "96", var = false, url = "THE_WORLD", cat = {"anime/jpop", "rock", "movies/tv"}},
    {button = L, bpm = "71", var = false, url = "L", cat = {"anime/jpop", "memes", "movies/tv"}},
    {button = BLOODY, bpm = "100", var = false, url = "BLOODY", cat = {"pop/hiphop", "epic", "best"}},
    {button = SPACE_SONG, bpm = "75", var = false, url = "SPACE_SONG", cat = {"sad", "pop/hiphop", "beautiful", "epic", "best"}},
    {button = HEATHENS, bpm = "90", var = false, url = "HEATHENS", cat = {"sad"}},
    {button = VAMPIRE, bpm = "135", var = false, url = "VAMPIRE", cat = {"pop/hiphop", "sad", "best"}},
    {button = MARY_ON, bpm = "130", var = false, url = "MARY_ON", cat = {"rock"}},
    {button = RUNNING_UP, bpm = "108", var = false, url = "RUNNING_UP", cat = {"sad", "pop/hiphop", "movies/tv"}},
    {button = DUMB_DUMB, bpm = "118", var = false, url = "DUMB_DUMB", cat = {"memes"}},
    {button = MA_MEILLEUR, bpm = "178", var = false, url = "MA_MEILLEUR", cat = {"movies/tv"}},
    {button = SUZUME, bpm = "78", var = false, url = "SUZUME", cat = {"anime/jpop", "best", "beautiful", "movies/tv"}},
    {button = CHRISTMAS_KIDS, bpm = "152", var = false, url = "CHRISTMAS_KIDS", cat = {"sad"}},
    {button = DARK_BEACH, bpm = "130", var = false, url = "DARK_BEACH", cat = {"sad", "beautiful"}},
    {button = FUKASHIGI, bpm = "90", var = false, url = "FUKASHIGI", cat = {"anime/jpop", "movies/tv"}},
    {button = SPARKLE, bpm = "192", var = false, url = "SPARKLE", cat = {"anime/jpop", "best", "beautiful", "movies/tv"}},
    {button = SHIKAIRO, bpm = "182", var = false, url = "SHIKAIRO", cat = {"anime/jpop", "memes", "best", "movies/tv"}},
    {button = WASHING, bpm = "114", var = false, url = "WASHING", cat = {"sad", "beautiful", "best"}},
    {button = CAN_YOU_HEAR_EPIC, bpm = "102", var = false, url = "CAN_YOU_HEAR_EPIC", cat = {"epic", "best", "peak", "movies/tv"}},
    {button = UNRAVEL_EPIC, bpm = "132", var = false, url = "UNRAVEL_EPIC", cat = {"epic", "best", "beautiful", "peak", "movies/tv"}},
    {button = A_SKY_FULL, bpm = "120", var = false, url = "A_SKY_FULL", cat = {"epic", "pop/hiphop", "electronic"}},
    {button = THE_NIGHTS, bpm = "128", var = false, url = "THE_NIGHTS", cat = {"pop/hiphop", "electronic", "epic"}},
    {button = BIRDS_OF_A, bpm = "105", var = false, url = "BIRDS_OF_A", cat = {"pop/hiphop", "beautiful"}},
    {button = CANT_LET, bpm = "160", var = false, url = "CANT_LET", cat = {"video games", "electronic"}},
    {button = DEADLOCKED, bpm = "140", var = false, url = "DEADLOCKED", cat = {"video games", "electronic"}},
    {button = DUVET, bpm = "91", var = false, url = "DUVET", cat = {"sad", "beautiful", "best"}},
    {button = FIVE_NIGHTS_1, bpm = "108", var = false, url = "FIVE_NIGHTS_1", cat = {"video games", "electronic", "epic"}},
    {button = ITS_BEEN_SO, bpm = "96", var = false, url = "ITS_BEEN_SO", cat = {"video games", "electronic"}},
    {button = STEREO_MADNESS, bpm = "160", var = false, url = "STEREO_MADNESS", cat = {"video games", "electronic"}},
    {button = SUNFLOWER, bpm = "90", var = false, url = "SUNFLOWER", cat = {"pop/hiphop", "beautiful", "best", "movies/tv"}},
    {button = WAITING_FOR, bpm = "129", var = false, url = "WAITING_FOR", cat = {"pop/hiphop", "electronic", "best", "epic"}},
    {button = WAKE_ME, bpm = "110", var = false, url = "WAKE_ME", cat = {"pop/hiphop", "electronic"}},
    {button = GEOMETRY_DASH, bpm = "128", var = false, url = "GEOMETRY_DASH", cat = {"video games", "electronic"}},
    {button = ARUARIAN, bpm = "80", var = false, url = "ARUARIAN", cat = {"beautiful"}},
    {button = DAYLIGHT, bpm = "130", var = false, url = "DAYLIGHT", cat = {"beautiful", "epic", "best"}},
    {button = SHIAWASE, bpm = "150", var = false, url = "SHIAWASE", cat = {"electronic", "epic", "beautiful", "best"}},
    {button = EVERGREEN, bpm = "120", var = false, url = "EVERGREEN", cat = {"beautiful", "best"}},
    {button = FREAKS, bpm = "175", var = false, url = "FREAKS", cat = {"sad", "rock", "beautiful"}},
    {button = HERE_WITH, bpm = "132", var = false, url = "HERE_WITH", cat = {"sad"}},
    {button = RESONANCE, bpm = "70", var = false, url = "RESONANCE", cat = {"beautiful", "best"}},
    {button = INSANE, bpm = "105", var = false, url = "INSANE", cat = {"electronic"}},
    {button = LEVELS, bpm = "122", var = false, url = "LEVELS", cat = {"electronic", "levels", "best"}},
    {button = MOOD, bpm = "91", var = false, url = "MOOD", cat = {"pop/hiphop", "best"}},
    {button = SOMETHING_JUST, bpm = "103", var = false, url = "SOMETHING_JUST", cat = {"pop/hiphop", "sad", "best", "beautiful"}},
    {button = STRANGERS, bpm = "170", var = false, url = "STRANGERS", cat = {"pop/hiphop", "sad", "best", "beautiful"}},
    {button = TICKING, bpm = "77", var = false, url = "TICKING", cat = {"epic", "best", "beautiful"}},
    {button = AFTER_DARK, bpm = "140", var = false, url = "AFTER_DARK", cat = {"sad", "beautiful"}},
    {button = ANYONE_CAN, bpm = "100", var = false, url = "ANYONE_CAN", cat = {"sad"}},
    {button = BLUE, bpm = "130", var = false, url = "BLUE", cat = {"pop/hiphop"}},
    {button = CLOUD_9, bpm = "128", var = false, url = "CLOUD_9", cat = {"electronic"}},
    {button = DAMNED, bpm = "95", var = false, url = "DAMNED", cat = {"video games"}},
    {button = ASTRONAMIA, bpm = "120", var = false, url = "ASTRONAMIA", cat = {"memes", "electronic"}},
    {button = COUNTING_STARS, bpm = "105", var = false, url = "COUNTING_STARS", cat = {"pop/hiphop", "sad"}},
    {button = SHAPE_OF, bpm = "190", var = false, url = "SHAPE_OF", cat = {"pop/hiphop"}},
    {button = ENEMY, bpm = "77", var = false, url = "ENEMY", cat = {"pop/hiphop"}},
    {button = FLARE, bpm = "150", var = false, url = "FLARE", cat = {"electronic"}},
    {button = THIS_IS_WHAT_WINTER, bpm = "115", var = false, url = "THIS_IS_WHAT_WINTER", cat = {"beautiful", "pop/hiphop", "best"}},
    {button = HEAT_WAVE, bpm = "81", var = false, url = "HEAT_WAVE", cat = {"pop/hiphop"}},
    {button = HIGH_HOPES, bpm = "164", var = false, url = "HIGH_HOPES", cat = {"pop/hiphop", "epic"}},
    {button = HOUSE_OF, bpm = "112", var = false, url = "HOUSE_OF", cat = {"pop/hiphop"}},
    {button = IN_THE_NAME, bpm = "134", var = false, url = "IN_THE_NAME", cat = {"pop/hiphop", "electronic", "best", "epic", "beautiful"}},
    {button = PAST_LIVES, bpm = "110", var = false, url = "PAST_LIVES", cat = {"sad", "beautiful"}},
    {button = SLAY, bpm = "120", var = false, url = "SLAY", cat = {"electronic"}},
    {button = SNOWFALL, bpm = "96", var = false, url = "SNOWFALL", cat = {"beautiful", "sad", "best"}},
    {button = RISE_UP, bpm = "82", var = false, url = "RISE_UP", cat = {"electronic", "epic"}},
    {button = UNITY, bpm = "110", var = false, url = "UNITY", cat = {"electronic", "best"}},
    {button = MONODY, bpm = "107", var = false, url = "MONODY", cat = {"electronic", "epic", "best"}},
    {button = THIS_IS_WHAT_HEARTBREAK, bpm = "50", var = false, url = "THIS_IS_WHAT_HEARTBREAK", cat = {"sad", "pop/hiphop"}},
    {button = CANDYLAND, bpm = "130", var = false, url = "CANDYLAND", cat = {"electronic", "best", "best"}},
    {button = AS_IT_WAS, bpm = "174", var = false, url = "AS_IT_WAS", cat = {"pop/hiphop", "best"}},
    {button = CENTIMETER, bpm = "140", var = false, url = "CENTIMETER", cat = {"anime/jpop", "movies/tv"}},
    {button = DETROIT, bpm = "60", var = false, url = "DETROIT", cat = {"video games", "beautiful"}},
    {button = THE_GREAT_FAIRY, bpm = "80", var = false, url = "THE_GREAT_FAIRY", cat = {"video games"}},
    {button = IMMORTAL, bpm = "60", var = false, url = "IMMORTAL", cat = {"pop/hiphop"}},
    {button = XO_TOUR, bpm = "142", var = false, url = "XO_TOUR", cat = {"pop/hiphop", "sad"}},
    {button = THE_ECSTASY_OF_GOLD, bpm = "85", var = false, url = "THE_ECSTASY_OF_GOLD", cat = {"movies/tv", "epic", "beautiful"}},
    {button = BLUE_YUNG, bpm = "92", var = false, url = "BLUE_YUNG", cat = {"beautiful", "best"}},
    {button = HES_A_PIRATE, bpm = "207", var = false, url = "HES_A_PIRATE", cat = {"epic", "best", "movies/tv"}},
    {button = ITS_RAINING, bpm = "120", var = false, url = "ITS_RAINING", cat = {"memes"}},
    {button = LET_ME_LOVE, bpm = "100", var = false, url = "LET_ME_LOVE", cat = {"pop/hiphop", "best", "beautiful"}},
    {button = HAPPIER, bpm = "100", var = false, url = "HAPPIER", cat = {"pop/hiphop", "sad", "beautiful", "best"}},
    {button = SANS, bpm = "120", var = false, url = "SANS", cat = {"video games", "undertale", "memes"}},
    {button = THE_SLAUGHTER_CONT, bpm = "150", var = false, url = "THE_SLAUGHTER_CONT", cat = {"video games", "undertale"}},
    {button = SONG_THAT_MIGHT, bpm = "120", var = false, url = "SONG_THAT_MIGHT", cat = {"video games", "undertale"}},
    {button = ASSUMPTIONS, bpm = "126", var = false, url = "ASSUMPTIONS", cat = {"pop/hiphop", "memes", "electronic"}},
    {button = DEATH_BED, bpm = "120", var = false, url = "DEATH_BED", cat = {"pop/hiphop", "sad", "beautiful"}},
    {button = DAWN_OF, bpm = "72", var = false, url = "DAWN_OF", cat = {"video games"}},
    {button = ELEVATOR_JAM, bpm = "146", var = false, url = "ELEVATOR_JAM", cat = {"video games"}},
    {button = ELEVATOR_JAM_2, bpm = "146", var = false, url = "ELEVATOR_JAM_2", cat = {"video games", "epic", "best"}},
    {button = HERE_I_COME, bpm = "144", var = false, url = "HERE_I_COME", cat = {"video games"}},
    {button = MONTAGEM_TOMADA, bpm = "120", var = false, url = "MONTAGEM_TOMADA", cat = {"electronic"}},
    {button = NOTION, bpm = "160", var = false, url = "NOTION", cat = {"rock", "sad"}},
    {button = RISES_THE, bpm = "127", var = false, url = "RISES_THE", cat = {"sad", "beautiful"}},
    {button = HIMITSU_KOI_GOKORO, bpm = "165", var = false, url = "HIMITSU_KOI_GOKORO", cat = {"anime/jpop", "movies/tv"}},
    {button = LENAI, bpm = "131", var = false, url = "LENAI", cat = {"anime/jpop", "movies/tv"}},
    {button = IDOL_EPIC, bpm = "166", var = false, url = "IDOL_EPIC", cat = {"anime/jpop", "epic", "best", "movies/tv"}},
    {button = ALL_THE_STARS, bpm = "120", var = false, url = "ALL_THE_STARS", cat = {"pop/hiphop", "beautiful", "best", "movies/tv"}},
    {button = HOPE, bpm = "146", var = false, url = "HOPE", cat = {"pop/hiphop", "sad", "beautiful", "best"}},
    {button = ENTRY_OF_THE, bpm = "220", var = false, url = "ENTRY_OF_THE", cat = {"classical", "memes"}},
    {button = LUTHER, bpm = "128", var = false, url = "LUTHER", cat = {"pop/hiphop"}},
    {button = HOWLS_MOVING_CASTLE_2, bpm = "130", var = false, url = "HOWLS_MOVING_CASTLE_2", cat = {"anime/jpop", "beautiful", "best", "epic", "peak", "movies/tv"}},
    {button = MAGICAL_CURE, bpm = "120", var = false, url = "MAGICAL_CURE", cat = {"anime/jpop"}},
    {button = NOT_LIKE_US, bpm = "101", var = false, url = "NOT_LIKE_US", cat = {"pop/hiphop", "memes"}},
    {button = PEACHES, bpm = "92", var = false, url = "PEACHES", cat = {"video games", "movies/tv"}},
    {button = PRAYER, bpm = "147", var = false, url = "PRAYER", cat = {"beautiful", "pop/hiphop"}},
    {button = SEE_YOU_AGAIN, bpm = "70", var = false, url = "SEE_YOU_AGAIN", cat = {"pop/hiphop", "sad", "beautiful"}},
    {button = GANGSTAS_PARADISE, bpm = "80", var = false, url = "GANGSTAS_PARADISE", cat = {"pop/hiphop", "memes", "beautiful", "best", "epic", "peak"}},
    {button = ERIKA, bpm = "120", var = false, url = "ERIKA", cat = {"memes"}},
    {button = ITS_JUST_A_BURNING, bpm = "74", var = false, url = "ITS_JUST_A_BURNING", cat = {"creepy/weirdcore", "memes", "sad"}},
    {button = ALL_I_WANT_IS_YOU, bpm = "143", var = false, url = "ALL_I_WANT_IS_YOU", cat = {"pop/hiphop", "sad", "best", "electronic"}},
    {button = SOVIET_UNION_ANTHEM, bpm = "80", var = false, url = "SOVIET_UNION_ANTHEM", cat = {"memes"}},
    {button = UNTITLED, bpm = "25", var = false, url = "UNTITLED", cat = {"video games", "memes", "sad", "creepy/weirdcore"}},
    {button = WEDDING_MARCH, bpm = "115", var = false, url = "WEDDING_MARCH", cat = {"memes", "beautiful", "classical"}},
    {button = WHY_DID_I_SAY, bpm = "113", var = false, url = "WHY_DID_I_SAY", cat = {}},
    {button = WII_SPORTS_TITLE, bpm = "115", var = false, url = "WII_SPORTS_TITLE", cat = {"video games", "memes", "epic"}},
    {button = YOUNG_GIRL_A_2, bpm = "130", var = false, url = "YOUNG_GIRL_A_2", cat = {"anime/jpop", "sad", "epic", "best", "beautiful", "peak"}},
    {button = BLINDING_LIGHTS, bpm = "171", var = false, url = "BLINDING_LIGHTS", cat = {"pop/hiphop", "best"}},
    {button = GOOFY_AHH, bpm = "120", var = false, url = "GOOFY_AHH", cat = {"memes", "epic", "best", "beautiful", "peak"}},
    {button = GRAVITY_FALLS, bpm = "120", var = false, url = "GRAVITY_FALLS", cat = {"memes", "best", "movies/tv"}},
    {button = GYPSY_WOMAN, bpm = "120", var = false, url = "GYPSY_WOMAN", cat = {"memes", "pop/hiphop"}},
    {button = I_LIKE_THE_WAY_YOU, bpm = "151", var = false, url = "I_LIKE_THE_WAY_YOU", cat = {"pop/hiphop", "sad", "best", "beautiful"}},
    {button = ISOLATION, bpm = "100", var = false, url = "ISOLATION", cat = {"best", "epic", "video games", "peak"}},
    {button = KAWAIKUTEGOMEN, bpm = "160", var = false, url = "KAWAIKUTEGOMEN", cat = {"anime/jpop", "best"}},
    {button = LIGHT_SWITCH, bpm = "184", var = false, url = "LIGHT_SWITCH", cat = {"pop/hiphop"}},
    {button = SPECTRE, bpm = "128", var = false, url = "SPECTRE", cat = {"electronic", "memes", "beautiful", "best"}},
    {button = SUPER_IDOL, bpm = "136", var = false, url = "SUPER_IDOL", cat = {"memes"}},
    {button = THATS_WHAT_I_WANT, bpm = "85", var = false, url = "THATS_WHAT_I_WANT", cat = {"pop/hiphop"}},
    {button = THE_AMAZING_DIGITAL, bpm = "110", var = false, url = "THE_AMAZING_DIGITAL", cat = {"best", "movies/tv"}},
    {button = JOCELYN_FLORES, bpm = "136", var = false, url = "JOCELYN_FLORES", cat = {"sad", "beautiful"}},
    {button = FLY_ME_TO_THE_MOON, bpm = "140", var = false, url = "FLY_ME_TO_THE_MOON", cat = {"classical", "beautiful"}},
    {button = BAD_HABIT, bpm = "80", var = false, url = "BAD_HABIT", cat = {"pop/hiphop", "sad"}},
    {button = SOMEBODY_THAT_I_USED, bpm = "120", var = false, url = "SOMEBODY_THAT_I_USED", cat = {"pop/hiphop", "sad"}},
    {button = LEVAN_POLKKA, bpm = "135", var = false, url = "LEVAN_POLKKA", cat = {"memes"}},
    {button = MY_ORDINARY_LIFE, bpm = "130", var = false, url = "MY_ORDINARY_LIFE", cat = {"electronic"}},
    {button = RUINS, bpm = "138", var = false, url = "RUINS", cat = {"video games", "undertale"}},
    {button = STEREO_HEARTS, bpm = "96", var = false, url = "STEREO_HEARTS", cat = {"pop/hiphop", "best"}},
    {button = STRANGER_THINGS, bpm = "80", var = false, url = "STRANGER_THINGS", cat = {"movies/tv"}},
    {button = HH, bpm = "150", var = false, url = "HH", cat = {"memes", "peak"}},
    {button = A505, bpm = "140", var = false, url = "505", cat = {"rock", "sad"}},
    {button = BELIEVER, bpm = "188", var = false, url = "BELIEVER", cat = {"rock", "pop/hiphop", "epic"}},
    {button = CLUBSTEP, bpm = "128", var = false, url = "CLUBSTEP", cat = {"video games", "electronic"}},
    {button = EXPERIENCE_FLOWS, bpm = "85", var = false, url = "EXPERIENCE_FLOWS", cat = {"beautiful", "best"}},
    {button = FIELD_OF_MEMORIES, bpm = "130", var = false, url = "FIELD_OF_MEMORIES", cat = {"video games", "electronic", "epic"}},
    {button = SKELETAL_SHENANIGANS, bpm = "158", var = false, url = "SKELETAL_SHENANIGANS", cat = {"video games", "electronic"}},
    {button = GODS_PLAN, bpm = "130", var = false, url = "GODS_PLAN", cat = {"pop/hiphop"}},
    {button = HOTLINE_BLING, bpm = "100", var = false, url = "HOTLINE_BLING", cat = {"pop/hiphop"}},
    {button = I_REALLY_WANT_TO_STAY, bpm = "128", var = false, url = "I_REALLY_WANT_TO_STAY", cat = {"movies/tv", "pop/hiphop", "beautiful", "electronic"}},
    {button = ICARUS, bpm = "100", var = false, url = "ICARUS", cat = {"beautiful"}},
    {button = LAVENDER_TOWN, bpm = "120", var = false, url = "LAVENDER_TOWN", cat = {"video games", "memes", "creepy/weirdcore"}},
    {button = ALONE, bpm = "142", var = false, url = "ALONE", cat = {"electronic"}},
    {button = FRIENDS, bpm = "95", var = false, url = "FRIENDS", cat = {"pop/hiphop", "electronic"}},
    {button = MIDDLE_OF_THE_NIGHT, bpm = "93", var = false, url = "MIDDLE_OF_THE_NIGHT", cat = {"pop/hiphop", "epic", "beautiful", "best"}},
    {button = A99DOT9, bpm = "180", var = false, url = "99DOT9", cat = {"anime/jpop", "movies/tv"}},
    {button = MY_EYES, bpm = "120", var = false, url = "MY_EYES", cat = {"pop/hiphop", "beautiful", "best"}},
    {button = CRAB_RAVE, bpm = "125", var = false, url = "CRAB_RAVE", cat = {"memes", "electronic", "epic"}},
    {button = ONE_DANCE, bpm = "108", var = false, url = "ONE_DANCE", cat = {"pop/hiphop"}},
    {button = RAIN, bpm = "77", var = false, url = "RAIN", cat = {"beautiful", "best", "epic"}},
    {button = RUSH_OF_LIFE, bpm = "122", var = false, url = "RUSH_OF_LIFE", cat = {"beautiful", "epic", "best", "peak"}},
    {button = THE_SEARCH, bpm = "120", var = false, url = "THE_SEARCH", cat = {"pop/hiphop", "epic", "beautiful", "best"}},
    {button = MICHAEL_MYERS, bpm = "144", var = false, url = "MICHAEL_MYERS", cat = {"memes", "creepy/weirdcore"}},
    {button = YUUSHA, bpm = "208", var = false, url = "YUUSHA", cat = {"anime/jpop"}},
    {button = CAROL_OF_THE_BELLS_EPIC, bpm = "135", var = false, url = "CAROL_OF_THE_BELLS_EPIC", cat = {"classical", "epic", "beautiful", "best"}},
    {button = CAROL_OF_THE_BELLS, bpm = "50", var = false, url = "CAROL_OF_THE_BELLS", cat = {"classical", "beautiful", "best"}},
    {button = CLAIR_DE_LUNE, bpm = "48", var = false, url = "CLAIR_DE_LUNE", cat = {"classical", "beautiful"}},
    {button = OLD_TOWN_ROAD, bpm = "69", var = false, url = "OLD_TOWN_ROAD", cat = {"pop/hiphop", "memes"}},
    {button = HATSUNE_MIKU_NO_GEKISHOU, bpm = "200", var = false, url = "HATSUNE_MIKU_NO_GEKISHOU", cat = {"anime/jpop", "best", "epic"}},
    {button = AUTUMN, bpm = "80", var = false, url = "AUTUMN", cat = {"classical"}},
    {button = WINTER, bpm = "136", var = false, url = "WINTER", cat = {"classical", "best", "beautiful", "epic", "peak"}},
    {button = SPRING, bpm = "100", var = false, url = "SPRING", cat = {"classical", "video games", "memes", "best"}},
    {button = SUMMER, bpm = "150", var = false, url = "SUMMER", cat = {"classical", "epic", "best", "beautiful", "peak"}},
    {button = TAKE_ON_ME, bpm = "169", var = false, url = "TAKE_ON_ME", cat = {"pop/hiphop"}},
    {button = BIG_FISH, bpm = "71", var = false, url = "BIG_FISH", cat = {"beautiful"}},
    {button = NOPE_YOUR_TOO_LATE, bpm = "118", var = false, url = "NOPE_YOUR_TOO_LATE", cat = {"rock", "sad"}},
    {button = INVISIBLE, bpm = "82", var = false, url = "INVISIBLE", cat = {"electronic", "beautiful", "best"}},
    {button = PASSACAGLIA, bpm = "130", var = false, url = "PASSACAGLIA", cat = {"classical", "beautiful", "best"}},
    {button = HAZY_MOON, bpm = "120", var = false, url = "HAZY_MOON", cat = {"anime/jpop", "beautiful"}},
    {button = TIME_BACK, bpm = "120", var = false, url = "TIME_BACK", cat = {"movies/tv"}},
    {button = TEST_DRIVE, bpm = "120", var = false, url = "TEST_DRIVE", cat = {"epic", "movies/tv"}},
    {button = TAKE_FIVE, bpm = "166", var = false, url = "TAKE_FIVE", cat = {""}},
    {button = HEART_AFIRE, bpm = "100", var = false, url = "HEART_AFIRE", cat = {"epic", "beautiful", "best"}},
    {button = LIEBESTRAUM_NO3, bpm = "152", var = false, url = "LIEBESTRAUM_NO3", cat = {"classical"}},
    {button = TORRENT, bpm = "190", var = false, url = "TORRENT", cat = {"classical", "epic", "best", "peak"}},
    {button = REVOLUTIONARY, bpm = "140", var = false, url = "REVOLUTIONARY", cat = {"classical", "best"}},
    {button = WALTZ_IN_C_MINOR, bpm = "120", var = false, url = "WALTZ_IN_C_MINOR", cat = {"classical"}},
    {button = PRELUDE_OP28, bpm = "42", var = false, url = "PRELUDE_OP28", cat = {"classical"}},
    {button = DIES_IRAE, bpm = "160", var = false, url = "DIES_IRAE", cat = {"classical", "best", "peak", "epic"}},
    {button = PRELUDE_NO2, bpm = "145", var = false, url = "PRELUDE_NO2", cat = {"classical"}},
    {button = SYMPHONY_NO5, bpm = "120", var = false, url = "SYMPHONY_NO5", cat = {"classical"}},
    {button = PATHETIQUE, bpm = "31", var = false, url = "PATHETIQUE", cat = {"classical"}},
    {button = COMPTINE_DUN_AUTRE_ETE, bpm = "95", var = false, url = "COMPTINE_DUN_AUTRE_ETE", cat = {"classical", "beautiful"}},
    {button = DIE_IRAE_III, bpm = "160", var = false, url = "DIE_IRAE_III", cat = {"classical"}},
    {button = DIES_IRAE_III_2, bpm = "160", var = false, url = "DIES_IRAE_III_2", cat = {"classical", "epic", "best", "peak"}},
    {button = PLANT_VS_ZOMBIES, bpm = "100", var = false, url = "PLANT_VS_ZOMBIES", cat = {"video games", "memes"}},
    {button = LOVE, bpm = "68", var = false, url = "LOVE", cat = {"sad"}},
    {button = STRESSED_OUT, bpm = "170", var = false, url = "STRESSED_OUT", cat = {"pop/hiphop", "best"}},
    {button = CLOCKS, bpm = "132", var = false, url = "CLOCKS", cat = {"rock"}},
    {button = GLASSY_SKY, bpm = "68", var = false, url = "GLASSY_SKY", cat = {"anime/jpop", "sad", "movies/tv"}},
    {button = PAYPHONE, bpm = "110", var = false, url = "PAYPHONE", cat = {"pop/hiphop", "sad", "best", "beautiful"}},
    {button = FOR_THE_DAMAGED_CODA, bpm = "140", var = false, url = "FOR_THE_DAMAGED_CODA", cat = {"sad", "memes", "epic"}},
    {button = PARADISE, bpm = "125", var = false, url = "PARADISE", cat = {"pop/hiphop"}},
    {button = PLEAD, bpm = "120", var = false, url = "PLEAD", cat = {"video games", "electronic"}},
    {button = READY_OR_NOT, bpm = "160", var = false, url = "READY_OR_NOT", cat = {"video games", "electronic"}},
    {button = FOR_THE_DAMAGED_CODA_2, bpm = "150", var = false, url = "FOR_THE_DAMAGED_CODA_2", cat = {"sad", "memes", "epic", "best", "peak"}},
    {button = A7_WEEKS_3_DAYS, bpm = "130", var = false, url = "7_WEEKS_3_DAYS", cat = {"creepy/weirdcore"}},
    {button = SEE_YOU_AGAIN_CHARLIE, bpm = "60", var = false, url = "SEE_YOU_AGAIN_CHARLIE", cat = {"pop/hiphop", "sad", "beautiful"}},
    {button = ANNIHILATE, bpm = "146", var = false, url = "ANNIHILATE", cat = {"pop/hiphop", "movies/tv"}},
    {button = MY_HEART_WILL_GO_ON, bpm = "90", var = false, url = "MY_HEART_WILL_GO_ON", cat = {"sad", "movies/tv", "beautiful", "best"}},
    {button = NUMBERS, bpm = "100", var = false, url = "NUMBERS", cat = {"creepy/weirdcore"}},
    {button = NYAN_CAT, bpm = "140", var = false, url = "NYAN_CAT", cat = {"memes", "best"}},
    {button = OVERTAKEN, bpm = "105", var = false, url = "OVERTAKEN", cat = {"anime/jpop", "movies/tv"}},
    {button = GURENGE, bpm = "135", var = false, url = "GURENGE", cat = {"anime/jpop", "movies/tv", "best", "epic", "beautiful", "peak"}},
    {button = CROSSING_FIELD, bpm = "179", var = false, url = "CROSSING_FIELD", cat = {"anime/jpop", "movies/tv"}},
    {button = UNTIL_I_FOUND_YOU, bpm = "101", var = false, url = "UNTIL_I_FOUND_YOU", cat = {"pop/hiphop", "sad", "beautiful", "best"}},
    {button = OLD_DOLL, bpm = "100", var = false, url = "OLD_DOLL", cat = {"creepy/weirdcore"}},
    {button = WE_ARE, bpm = "168", var = false, url = "WE_ARE", cat = {"anime/jpop", "movies/tv"}},
    {button = RIGHTEOUS, bpm = "160", var = false, url = "RIGHTEOUS", cat = {"electronic"}},
    {button = SILHOUETTE, bpm = "185", var = false, url = "SILHOUETTE", cat = {"anime/jpop", "movies/tv"}},
    {button = LET_IT_HAPPEN, bpm = "120", var = false, url = "LET_IT_HAPPEN", cat = {"rock", "beautiful"}},
    {button = BEANIE, bpm = "135", var = false, url = "BEANIE", cat = {"sad"}},
    {button = ALTALE, bpm = "90", var = false, url = "ALTALE", cat = {"electronic"}},
    {button = LET_ME_DOWN_SLOWLY, bpm = "75", var = false, url = "LET_ME_DOWN_SLOWLY", cat = {"sad"}},
    {button = RUSH_C, bpm = "60", var = false, url = "RUSH_C", cat = {}},
    {button = RUSH_F, bpm = "60", var = false, url = "RUSH_F", cat = {}},
    {button = RUSH_G, bpm = "60", var = false, url = "RUSH_G", cat = {}},
    {button = BEAUTIFUL_THINGS, bpm = "70", var = false, url = "BEAUTIFUL_THINGS", cat = {"rock", "pop/hiphop"}},
    {button = OBLIVION, bpm = "156", var = false, url = "OBLIVION", cat = {"rock", "beautiful"}},
    {button = A_CYBERS_WORLD, bpm = "117", var = false, url = "A_CYBERS_WORLD", cat = {"deltarune", "video games", "best"}},
    {button = DEXTER_BLOOD_THEME, bpm = "82", var = false, url = "DEXTER_BLOOD_THEME", cat = {"movies/tv"}},
    {button = PASSO_BEM_SOLTO, bpm = "120", var = false, url = "PASSO_BEM_SOLTO", cat = {"electronic"}},
    {button = MINGLE, bpm = "105", var = false, url = "MINGLE", cat = {"creepy/weirdcore", "movies/tv"}},
    {button = LUX_AETERNA, bpm = "70", var = false, url = "LUX_AETERNA", cat = {"movies/tv"}},
    {button = FIELD_OF_HOPES_AND_DREAMS, bpm = "125", var = false, url = "FIELD_OF_HOPES_AND_DREAMS", cat = {"deltarune", "video games"}},
    {button = CHAOS_KING, bpm = "148", var = false, url = "CHAOS_KING", cat = {"deltarune", "video games"}},
    {button = BIG_SHOT, bpm = "280", var = false, url = "BIG_SHOT", cat = {"deltarune", "video games"}},
    {button = THE_WORLD_REVOLVING, bpm = "190", var = false, url = "THE_WORLD_REVOLVING", cat = {"deltarune", "video games", "best"}},
    {button = RUDE_BUSTER, bpm = "140", var = false, url = "RUDE_BUSTER", cat = {"deltarune", "video games", "best"}},
    {button = TIME_FLOWS_EVER_ONWARD, bpm = "100", var = false, url = "TIME_FLOWS_EVER_ONWARD", cat = {"movies/tv", "anime/jpop"}},
    {button = IDEA_10, bpm = "170", var = false, url = "IDEA_10", cat = {"beautiful"}},
    {button = CREEP, bpm = "100", var = false, url = "CREEP", cat = {"rock", "sad"}},
    {button = MASTER_OF_PUPPETS, bpm = "220", var = false, url = "MASTER_OF_PUPPETS", cat = {"rock"}},
    {button = NOTHING_ELSE_MATTERS, bpm = "75", var = false, url = "NOTHING_ELSE_MATTERS", cat = {"rock", "sad"}},
    {button = MY_LOVE_ALL_MINE, bpm = "57", var = false, url = "MY_LOVE_ALL_MINE", cat = {"sad", "best"}},
    {button = NO_SURPRISES, bpm = "80", var = false, url = "NO_SURPRISES", cat = {"rock", "sad"}},
    {button = ORDER, bpm = "170", var = false, url = "ORDER", cat = {"video games", "best"}},
    {button = RUNAWAY_AURORA, bpm = "90", var = false, url = "RUNAWAY_AURORA", cat = {"sad", "beautiful", "best"}},
    {button = IM_NOT_THE_ONLY_ONE, bpm = "80", var = false, url = "IM_NOT_THE_ONLY_ONE", cat = {"pop/hiphop", "sad"}},
    {button = UNSTOPPABLE, bpm = "85", var = false, url = "UNSTOPPABLE", cat = {"pop/hiphop", "best"}},
    {button = ZOMBIE, bpm = "164", var = false, url = "ZOMBIE", cat = {"rock"}},
    {button = MY_CASTLE_TOWN, bpm = "136", var = false, url = "MY_CASTLE_TOWN", cat = {"video games", "deltarune"}},
    {button = SCARLET_FOREST, bpm = "122", var = false, url = "SCARLET_FOREST", cat = {"video games", "deltarune"}},
    {button = THE_LEGEND, bpm = "110", var = false, url = "THE_LEGEND", cat = {"video games", "deltarune"}},
    {button = ATTACK_OF_THE_KILLER_QUEEN, bpm = "144", var = false, url = "ATTACK_OF_THE_KILLER_QUEEN", cat = {"video games", "deltarune", "best"}},
    {button = BELLA_CIAO, bpm = "136", var = false, url = "BELLA_CIAO", cat = {"movies/tv", "best"}},
    {button = DAISY_BELL, bpm = "120", var = false, url = "DAISY_BELL", cat = {"creepy/weirdcore"}},
    {button = ORDINARY, bpm = "168", var = false, url = "ORDINARY", cat = {"pop/hiphop", "sad", "beautiful", "best"}},
    {button = ETHEREAL, bpm = "132", var = false, url = "ETHEREAL", cat = {"beautiful", "best", "peak"}},
    {button = BOHEMIAN_RHAPSODY, bpm = "80", var = false, url = "BOHEMIAN_RHAPSODY", cat = {"rock"}},
    {button = RIPTIDE, bpm = "90", var = false, url = "RIPTIDE", cat = {"pop/hiphop"}},
    {button = SAILOR_SONG, bpm = "83", var = false, url = "SAILOR_SONG", cat = {"sad"}},
    {button = GIMME_GIMME_GIMME, bpm = "116", var = false, url = "GIMME_GIMME_GIMME", cat = {"pop/hiphop", "new"}},
    {button = BARBIE_GIRL, bpm = "136", var = false, url = "BARBIE_GIRL", cat = {"movies/tv", "memes", "new"}},
    {button = WHAT_IS_LOVE, bpm = "120", var = false, url = "WHAT_IS_LOVE", cat = {"pop/hiphop", "electronic", "new"}},
    {button = DRAGOSTEA_DIN_TEI, bpm = "130", var = false, url = "DRAGOSTEA_DIN_TEI", cat = {"pop/hiphop", "electronic", "memes", "new"}},
    {button = STAYIN_ALIVE, bpm = "103", var = false, url = "STAYIN_ALIVE", cat = {"pop/hiphop", "rock", "movies/tv", "new"}},
    {button = CLOSE_EYES, bpm = "114", var = false, url = "CLOSE_EYES", cat = {"electronic", "new"}},
    {button = BOOM_BOOM_BOOM_BOOM, bpm = "120", var = false, url = "BOOM_BOOM_BOOM_BOOM", cat = {"pop/hiphop", "memes", "new"}},
    {button = FUNK_ESTRANHO, bpm = "111", var = false, url = "FUNK_ESTRANHO", cat = {"electronic", "new"}},
    {button = GUREN_NO_YUMIYA, bpm = "176", var = false, url = "GUREN_NO_YUMIYA", cat = {"movies/tv", "anime/jpop", "epic", "new"}},
    {button = IDEA_1, bpm = "160", var = false, url = "IDEA_1", cat = {"classical", "new"}},
    {button = COMEDY, bpm = "88", var = false, url = "COMEDY", cat = {"movies/tv", "anime/jpop", "new"}},
    {button = LET_IT_GO, bpm = "74", var = false, url = "LET_IT_GO", cat = {"movies/tv", "memes", "best", "new"}},
    {button = BETTER_OFF_ALONE, bpm = "130", var = false, url = "BETTER_OFF_ALONE", cat = {"electronic", "pop/hiphop", "new"}},
    {button = MY_WAR, bpm = "140", var = false, url = "MY_WAR", cat = {"movies/tv", "anime/jpop", "new"}},
    {button = AFRICA, bpm = "90", var = false, url = "AFRICA", cat = {"electronic", "memes", "new"}},
    {button = KICK_BACK, bpm = "204", var = false, url = "KICK_BACK", cat = {"movies/tv", "anime/jpop", "new"}},
    {button = REVENGE, bpm = "120", var = false, url = "REVENGE", cat = {"video games", "video games", "memes", "best", "new"}},
    {button = SPECIALZ, bpm = "117", var = false, url = "SPECIALZ", cat = {"movies/tv", "anime/jpop", "new"}},
    {button = F1, bpm = "110", var = false, url = "F1", cat = {"movies/tv", "new"}},
    {button = MONTAGEM_CORAL, bpm = "130", var = false, url = "MONTAGEM_CORAL", cat = {"electronic", "new"}},
    {button = RUNNING_IN_THE_90S, bpm = "160", var = false, url = "RUNNING_IN_THE_90S", cat = {"electronic", "memes", "best", "new"}},
    {button = A_CRUEL_ANGELS_THESIS, bpm = "76", var = false, url = "A_CRUEL_ANGELS_THESIS", cat = {"movies/tv", "anime/jpop", "new"}},
    {button = BLUEBIRD, bpm = "145", var = false, url = "BLUEBIRD", cat = {"anime/jpop", "movies/tv", "new"}},
    {button = IM_INVINCIBLE, bpm = "192", var = false, url = "IM_INVINCIBLE", cat = {"anime/jpop", "movies/tv", "new"}},
    {button = LAMOUR_TOUJOURS, bpm = "160", var = false, url = "LAMOUR_TOUJOURS", cat = {"sad", "memes", "new"}},
    {button = CRAZY_FROG, bpm = "130", var = false, url = "CRAZY_FROG", cat = {"memes", "electronic", "new"}},
    {button = YOUR_GAZE, bpm = "144", var = false, url = "YOUR_GAZE", cat = {"anime/jpop", "movies/tv", "beautiful", "best", "new"}},
    {button = SHINZOU_WO_SASEGEYO, bpm = "80", var = false, url = "SHINZOU_WO_SASEGEYO", cat = {"anime/jpop", "movies/tv", "new"}},
    {button = A2_PHUT_HON, bpm = "130", var = false, url = "2_PHUT_HON", cat = {"electronic", "best", "new"}},
    {button = I_CANT_HANDLE_CHANGE, bpm = "120", var = false, url = "I_CANT_HANDLE_CHANGE", cat = {"sad", "rock", "new"}},
    {button = HANA_NI_NATTE, bpm = "200", var = false, url = "HANA_NI_NATTE", cat = {"anime/jpop", "movies/tv", "new"}},
    {button = IDEA_9, bpm = "195", var = false, url = "IDEA_9", cat = {"classical", "new"}},
    {button = IDEA_22, bpm = "120", var = false, url = "IDEA_22", cat = {"classical", "new"}},
    {button = A90210, bpm = "70", var = false, url = "A90210", cat = {"pop/hiphop", "new"}},
    {button = I_BROKE_A_STRING, bpm = "120", var = false, url = "I_BROKE_A_STRING", cat = {"beautiful", "best", "epic", "new"}},
    {button = THE_BEGINNING, bpm = "150", var = false, url = "THE_BEGINNING", cat = {"beautiful", "new"}},
    {button = GYMNOPEDIE_NO1, bpm = "54", var = false, url = "GYMNOPEDIE_NO1", cat = {"classical", "new"}},
    {button = CRY_FOR_ME_MICHITA, bpm = "92", var = false, url = "CRY_FOR_ME_MICHITA", cat = {"beautiful", "sad", "new"}},
    {button = DARK_IS_THE_NIGHT, bpm = "120", var = false, url = "DARK_IS_THE_NIGHT", cat = {"sad", "new"}},
    {button = MY_WAY, bpm = "80", var = false, url = "MY_WAY", cat = {"new"}},
    {button = STILL_DRE, bpm = "92", var = false, url = "STILL_DRE", cat = {"pop/hiphop", "best", "new"}},
    {button = THE_BLUE_DANUBE, bpm = "120", var = false, url = "THE_BLUE_DANUBE", cat = {"classical", "new"}},
    {button = NEVER_BE_ALONE, bpm = "105", var = false, url = "NEVER_BE_ALONE", cat = {"video games", "new"}},
    {button = RUDER_BUSTER, bpm = "130", var = false, url = "RUDER_BUSTER", cat = {"video games", "deltarune", "new"}},
    {button = LOVER_IS_A_DAY, bpm = "90", var = false, url = "LOVER_IS_A_DAY", cat = {"new"}},
    {button = DANDELIONS, bpm = "100", var = false, url = "DANDELIONS", cat = {"new"}},
    {button = MY_KIND_OF_WOMAN, bpm = "90", var = false, url = "MY_KIND_OF_WOMAN", cat = {"new"}},
    {button = WHEN_I_MET_YOU, bpm = "70", var = false, url = "WHEN_I_MET_YOU", cat = {"new"}},
    {button = SADNESS_AND_SORROW, bpm = "75", var = false, url = "SADNESS_AND_SORROW", cat = {"anime/jpop", "movies/tv", "new"}},
    {button = THIS_IS_WHAT_FALLING_IN_LOVE, bpm = "80", var = false, url = "THIS_IS_WHAT_FALLING_IN_LOVE", cat = {"beautiful", "pop/hiphop", "new"}},
    {button = CHA_LA_HEAD_CHA_LA, bpm = "154", var = false, url = "CHA_LA_HEAD_CHA_LA", cat = {"anime/jpop", "movies/tv", "best", "new"}},
    {button = UWA_SO_TEMPERATE, bpm = "130", var = false, url = "UWA_SO_TEMPERATE", cat = {"undertale", "video games", "new"}},
    {button = WE_WERE_ANGELS, bpm = "148", var = false, url = "WE_WERE_ANGELS", cat = {"anime/jpop", "movies/tv", "new"}},
    {button = WIEGE, bpm = "75", var = false, url = "WIEGE", cat = {"movies/tv", "new"}},
    {button = DEPARTURE, bpm = "150", var = false, url = "DEPARTURE", cat = {"movies/tv", "anime/jpop", "new"}},
    {button = RUE_DES_TROIS_FRERES, bpm = "120", var = false, url = "RUE_DES_TROIS_FRERES", cat = {"classical", "new"}},
    {button = ITS_TV_TIME, bpm = "148", var = false, url = "ITS_TV_TIME", cat = {"deltarune", "video games", "new"}},
    {button = CONCERTO_OP30_NO3, bpm = "150", var = false, url = "CONCERTO_OP30_NO3", cat = {"classical", "new"}},
    {button = MORNING_MOOD, bpm = "72", var = false, url = "MORNING_MOOD", cat = {"classical", "memes", "video games", "new"}},
    {button = ETUDE_NO3_UN_SOSPIRO, bpm = "25", var = false, url = "ETUDE_NO3_UN_SOSPIRO", cat = {"classical", "new"}},
    {button = SERENADE, bpm = "58", var = false, url = "SERENADE", cat = {"classical", "new"}},
    {button = POLONAISE, bpm = "100", var = false, url = "POLONAISE", cat = {"classical", "new"}},
    {button = VIENNA, bpm = "120", var = false, url = "VIENNA", cat = {"new"}},
    {button = ONE_SUMMERS_DAY, bpm = "78", var = false, url = "ONE_SUMMERS_DAY", cat = {"beautiful", "movies/tv", "anime/jpop", "new"}},
    {button = LE_MONDE, bpm = "100", var = false, url = "LE_MONDE", cat = {"best", "new"}},
    {button = JUDAS, bpm = "130", var = false, url = "JUDAS", cat = {"pop/hiphop", "new"}},
    {button = GYMONPEDIE_NO2, bpm = "48", var = false, url = "GYMONPEDIE_NO2", cat = {"classical", "new"}},
    {button = LIKE_HIM_BEST, bpm = "94", var = false, url = "LIKE_HIM_BEST", cat = {"beautiful", "best", "peak", "pop/hiphop", "epic", "new"}},
    {button = WATERFALL, bpm = "70", var = false, url = "WATERFALL", cat = {"video games", "undertale", "new"}},
    {button = KISS_THE_RAIN, bpm = "58", var = false, url = "KISS_THE_RAIN", cat = {"new"}},
    {button = KAMADO_TANJIRO_NO_UTA, bpm = "151", var = false, url = "KAMADO_TANJIRO_NO_UTA", cat = {"anime/jpop", "movies/tv", "new"}},
    {button = ON_MY_WAY, bpm = "85", var = false, url = "ON_MY_WAY", cat = {"electronic", "new"}},
    {button = A7_YEARS, bpm = "60", var = false, url = "A7_YEARS", cat = {"pop/hiphop", "sad", "best", "new"}},
    {button = PIANO_MAN, bpm = "80", var = false, url = "PIANO_MAN", cat = {"new"}},
    {button = NIGHT_DANCER, bpm = "118", var = false, url = "NIGHT_DANCER", cat = {"pop/hiphop", "best", "new"}},
    {button = LET_YOU_BREAK_MY_HEART_AGAIN, bpm = "73", var = false, url = "LET_YOU_BREAK_MY_HEART_AGAIN", cat = {"sad", "new"}},
    {button = WHAT_WAS_I_MADE_FOR, bpm = "80", var = false, url = "WHAT_WAS_I_MADE_FOR", cat = {"movies/tv", "pop/hiphop", "new"}},
    {button = SPAWN, bpm = "140", var = false, url = "SPAWN", cat = {"deltarune", "video games", "new"}},
    {button = ALL_I_WANT_FOR_CHRISTMAS_IS_YOU, bpm = "70", var = false, url = "ALL_I_WANT_FOR_CHRISTMAS_IS_YOU", cat = {"pop/hiphop", "new"}},
    {button = IN_HELL_WE_LIVE, bpm = "65", var = false, url = "IN_HELL_WE_LIVE", cat = {"video games", "new"}},
    {button = SPOOKY_SCARY_SKELETONS, bpm = "225", var = false, url = "SPOOKY_SCARY_SKELETONS", cat = {"creepy/weirdcore", "best", "new"}},
    {button = A_HOME_FOR_FLOWERS, bpm = "54", var = false, url = "A_HOME_FOR_FLOWERS", cat = {"omori", "video games", "new"}},
    {button = MONTAGEM_XONADA, bpm = "130", var = false, url = "MONTAGEM_XONADA", cat = {"electronic", "new"}},
    {button = BLACK_KNIFE, bpm = "148", var = false, url = "BLACK_KNIFE", cat = {"deltarune", "video games", "new"}},
    {button = RENAI_CIRCULATION, bpm = "120", var = false, url = "RENAI_CIRCULATION", cat = {"anime/jpop", "memes", "peak", "best", "new"}},
    {button = CHIISANA_KOI_NO_UTA, bpm = "100", var = false, url = "CHIISANA_KOI_NO_UTA", cat = {"anime/jpop", "movies/tv", "best", "new"}},
    {button = WHERE_OUR_BLUE_IS, bpm = "152", var = false, url = "WHERE_OUR_BLUE_IS", cat = {"anime/jpop", "movies/tv", "new"}},
    {button = CHAMBER_OF_REFLECTION, bpm = "128", var = false, url = "CHAMBER_OF_REFLECTION", cat = {"sad", "beautiful", "best", "new"}},
    {button = SWAN_LAKE, bpm = "100", var = false, url = "SWAN_LAKE", cat = {"classical", "new"}},
    {button = BUTCHER_VANITY, bpm = "142", var = false, url = "BUTCHER_VANITY", cat = {"video games", "new"}},
    {button = THIS_IS_HALLOWEEN, bpm = "160", var = false, url = "THIS_IS_HALLOWEEN", cat = {"creepy/weirdcore", "new"}},
    {button = CANT_HELP_FALLING_IN_LOVE, bpm = "120", var = false, url = "CANT_HELP_FALLING_IN_LOVE", cat = {"new"}},
    {button = LIKE_HIM, bpm = "94", var = false, url = "LIKE_HIM", cat = {"pop/hiphop", "beautiful", "best", "new"}},
    {button = CRUCIFIED, bpm = "144", var = false, url = "CRUCIFIED", cat = {"pop/hiphop", "new"}},
    {button = BLACK_CATCHER, bpm = "88", var = false, url = "BLACK_CATCHER", cat = {"anime/jpop", "movies/tv", "new"}},
    {button = LOVELY, bpm = "115", var = false, url = "LOVELY", cat = {"pop/hiphop", "new"}},
    {button = HEY_KIDS, bpm = "87", var = false, url = "HEY_KIDS", cat = {"creepy/weirdcore", "new"}},
    {button = SNOWMAN, bpm = "105", var = false, url = "SNOWMAN", cat = {"pop/hiphop", "new"}},
    {button = PIXEL_PEEKER_POLKA, bpm = "145", var = false, url = "PIXEL_PEEKER_POLKA", cat = {"memes", "new"}},
    {button = FAST, bpm = "86", var = false, url = "FAST", cat = {"pop/hiphop", "sad", "new"}},
    {button = GYMNOPEDIE_NO3, bpm = "48", var = false, url = "GYMNOPEDIE_NO3", cat = {"classical", "new"}},
    {button = REFLECTIONS, bpm = "104", var = false, url = "REFLECTIONS", cat = {"anime/jpop", "best", "new"}},
    {button = LOVE_STORY, bpm = "180", var = false, url = "LOVE_STORY", cat = {"new"}},
    {button = HELLO_ADELE, bpm = "85", var = false, url = "HELLO_ADELE", cat = {"pop/hiphop", "new"}},
}

for _, song in ipairs(songs) do
    print("song loaded: " .. song.button.Name)
end

local categories = {
    "new",
    "peak",
    "best",
    "epic",
    "beautiful",
    "video games",
    "movies/tv",
    "memes",
    "classical",
    "pop/hiphop",
    "anime/jpop",
    "sad",
    "electronic",
    "rock",
    "creepy/weirdcore",
    "undertale",
    "deltarune",
    "minecraft",
    "omori"
} -- The main table for unique categories

local folderexists = false
local customsongbuttons = {}
local favsongbuttons = {}

print("initiating buttons")

print("fetching songs")

local customnotice = Instance.new("TextLabel")
customnotice.Name = "customnotice"
customnotice.Parent = scroll
customnotice.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
customnotice.BorderColor3 = Color3.fromRGB(64, 68, 90)
customnotice.BorderSizePixel = 4
customnotice.Size = UDim2.new(0, 175, 0, 75)
customnotice.Font = Enum.Font.SourceSansBold
customnotice.Text = translateText("unsupported executor")
customnotice.TextColor3 = Color3.fromRGB(255, 255, 255)
customnotice.TextSize = 25.000
customnotice.TextWrapped = true

local function newcategory(name)
    local TextButton = Instance.new("TextButton")
    TextButton.Parent = categoriesFrame
    TextButton.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    TextButton.BorderColor3 = Color3.fromRGB(64, 68, 90)
    TextButton.BorderSizePixel = 2
    TextButton.Size = UDim2.new(0, 100, 0, 25)
    TextButton.Font = Enum.Font.SourceSansBold
    TextButton.Text = name
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 14

    fitText(TextButton)

    return TextButton
end

local function makeAllInvisible()
    for _, song in ipairs(songs) do
        song.button.Visible = false
    end

    for _, song in ipairs(customsongbuttons) do
        song.Visible = false
    end

    for _, song in ipairs(favsongbuttons) do
        song.Visible = false
    end

    PLAYRANDOM.Visible = false
    LOOPRANDOM.Visible = false
    customnotice.Visible = false
end



local customcat = newcategory(translateText("custom songs") .. " (0)")

customcat.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)

        makeAllInvisible()

        for _, song in ipairs(customsongbuttons) do
            song.Visible = true
        end

        customnotice.Visible = true
    end
)

function updatecustomcount()
    customcat.Text = translateText("custom songs") .. " (" .. tostring(#customsongbuttons - 1) .. ")"
end



local favcat = newcategory(translateText("favourites"))

favcat.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)
        makeAllInvisible()

        for _, song in ipairs(favsongbuttons) do
            song.Visible = true
        end

        customnotice.Visible = true
    end
)

function updatefavcount()
    favcat.Text = translateText("favourites") .. " (" .. tostring(#favsongbuttons) .. ")"
end

updatefavcount()



local othercats = newcategory(translateText("other"))

othercats.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)

        makeAllInvisible()

        PLAYRANDOM.Visible = true
        LOOPRANDOM.Visible = true
    end
)

local allcats = newcategory(translateText("all") .. " (" .. tostring(#songs) .. ")")

allcats.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)

        makeAllInvisible()

        for _, song in ipairs(songs) do
            song.button.Visible = true
        end

        PLAYRANDOM.Visible = true
        LOOPRANDOM.Visible = true
    end
)

-- after making all the manual categories, create the rest

for _, categoryName in pairs(categories) do
    local numsongs = {}
    for _, song in ipairs(songs) do
        for _, category in ipairs(song.cat) do
            if category == categoryName then
                table.insert(numsongs, song.button.Name)
            end
        end
    end

    local categoryButton = newcategory(translateText(categoryName) .. " (" .. tostring(#numsongs) .. ")")
    if _G.languages["ar"] then
        if categoryName == "creepy/weirdcore" then
            categoryButton.Text = "\u{200E}" .. " (" .. tostring(#numsongs) .. ")" .. " مخيف/weirdcore"
        elseif categoryName == "anime/jpop" then
            categoryButton.Text =  "\u{200E}" .. " (" .. tostring(#numsongs) .. ")" .. "أنمي/J-pop"
        end
    end
    
    categoryButton.MouseButton1Click:Connect(
        function()
            makeAllInvisible()

            scroll.CanvasPosition = Vector2.new(0, 0)

            for _, song in ipairs(songs) do
                song.button.Visible = false
                for _, category in ipairs(song.cat) do
                    if category == categoryName then
                        song.button.Visible = true
                    end
                end
            end
        end
    )
end

-- end of category stuff

function disable()
    for _, song in ipairs(songs) do
        song.var = false
    end
end

disable()

songisplaying = false

function playbuttonclicked()
    if songisplaying then
        playSound("6493287948", 0.1)
        NotificationLibrary:SendNotification("Error", translateText("songplayingerror"), 1)
        return
    end

    songisplaying = true

    bpm = tonumber(bpmbox.Text)

    if spoofMidiPlz == true then
        -- Spoof MIDI
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/midi_spoof_loader.lua", true)
        )()
    else
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/loader_main.lua", true)
        )()
    end

    -- find which song to play

    local songFound = false
    for _, song in pairs(songs) do
        if songFound == false then
            if song.var == true then
                loadstring(
                    game:HttpGet(
                        "https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/SONGS/" .. song.url,
                        true
                    )
                )()
            songFound = true
            end
        end
    end
end -- close the play song onclick function

playsong.MouseButton1Click:Connect(playbuttonclicked)

for _, song in ipairs(songs) do
    song.button.MouseButton1Click:Connect(
        function()
            disable()
            song.var = true
            songname.Text = song.button.Text
            bpmbox.Text = song.bpm
        end
    )
end

-- play random function

PLAYRANDOM.MouseButton1Click:Connect(
    function()
        local function getRandomSong()
            local ransong = math.random(1, #songs)
            return songs[ransong]
        end

        local randomSong = getRandomSong()

        disable()
        randomSong.var = true
        songname.Text = randomSong.button.Name
        bpmbox.Text = randomSong.bpm

        playbuttonclicked()
    end
)

-- play all function

playingall = false

local function createstopbutton()
    if not STOPLOOP then
        -- StarterGui.ScreenGui.Frame.scrolltab.stoploop
        STOPLOOP = Instance.new("TextButton", bar)
        STOPLOOP["BorderSizePixel"] = 4
        STOPLOOP["TextSize"] = 25
        STOPLOOP["TextColor3"] = Color3.fromRGB(255, 255, 255)
        STOPLOOP["BackgroundColor3"] = Color3.fromRGB(76, 82, 101)
        STOPLOOP["FontFace"] =
            Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        STOPLOOP["AutomaticSize"] = Enum.AutomaticSize.XY
        STOPLOOP["Size"] = UDim2.new(0, 125, 0, 27)
        STOPLOOP["Name"] = [[stoploop]]
        STOPLOOP["BorderColor3"] = Color3.fromRGB(64, 68, 90)
        STOPLOOP["Text"] = translateText("stoploopingsongs")
        STOPLOOP.LayoutOrder = 4

        fitText(STOPLOOP)

        STOPLOOP.MouseButton1Click:Connect(
            function()
                playingall = false
                STOPLOOP:Destroy()
                stopPlayingSongs() -- universal function made from the loader
                STOPLOOP = nil
            end
        )
    end
end

LOOPRANDOM.MouseButton1Click:Connect(
    function()
        if playingall then
            return
        end
        playingall = true
        createstopbutton()

        local playedSongs = {}

        local function getRandomSong()
            if #playedSongs >= #songs then
                playedSongs = {}
            end

            while true do
                local ransong = math.random(1, #songs)
                if not table.find(playedSongs, songs[ransong].button.Name) then
                    table.insert(playedSongs, songs[ransong].button.Name)
                    return songs[ransong]
                end
            end
        end

        while wait(1) do

            local randomSong = getRandomSong()
            if not playingall then
                return
            end

            disable()
            randomSong.var = true
            songname.Text = randomSong.button.Name
            bpmbox.Text = randomSong.bpm
            playbuttonclicked()
        end
    end
)

-- function to make the song buttons

local function newCustomSongButton(name)
    local customsongframe = Instance.new("Frame")
    local test = Instance.new("TextButton")
    local ImageButton = Instance.new("ImageButton")

    customsongframe.Name = "customsongframe"
    customsongframe.Parent = scroll
    customsongframe.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    customsongframe.BorderColor3 = Color3.fromRGB(64, 68, 90)
    customsongframe.BorderSizePixel = 4
    customsongframe.Size = UDim2.new(0, 175, 0, 35)
    customsongframe.SizeConstraint = Enum.SizeConstraint.RelativeYY
    customsongframe.LayoutOrder = #framebuttons + 1
    customsongframe.Visible = false

    test.Name = name
    test.Parent = customsongframe
    test.BackgroundTransparency = 1.000
    test.Size = UDim2.new(0, 135, 0, 35)
    test.Font = Enum.Font.SourceSansBold
    test.Text = name
    test.TextColor3 = Color3.fromRGB(255, 255, 255)
    test.TextScaled = true
    test.TextWrapped = true

    ImageButton.Parent = customsongframe
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.816999972, 0, 0.115000002, 0)
    ImageButton.Size = UDim2.new(0, 0, 27)
    ImageButton.Image = "http://www.roblox.com/asset/?id=6121397347"

    local favButton = Instance.new("ImageButton") -- star button for favourites

    favButton.Parent = test
    favButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    favButton.BackgroundTransparency = 1.000
    favButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    favButton.BorderSizePixel = 0
    favButton.AnchorPoint = Vector2.new(0, 0.5)
    favButton.Position = UDim2.new(0, 0, 0.5, 0)
    favButton.Size = UDim2.new(0, 0, 25)
    favButton.Image = "rbxassetid://94707254666920" -- unfav icon
    favButton.Visible = false
    favButton.Name = "favButton"

    return {button = test, delbutton = ImageButton, frame = customsongframe}
end

-- testing if the executor supports
-- listfiles(""), listfiles([[./TALENTLESS_CUSTOM_SONGS]])

local function test(name, _, func)
    print("Running test: " .. name)
    local success, err = pcall(func)
    if success then
        print(name .. " passed")
        return true
    else
        print(name .. " failed: " .. err)
        return false
    end
end

local function runTests()
    local allPassed = true

    allPassed =
        test(
        "makefolder",
        {},
        function()
            makefolder("TALENTLESS_makefolder")
            assert(isfolder("TALENTLESS_makefolder"), "Did not create the folder")
        end
    ) and allPassed

    allPassed =
        test(
        "listfiles",
        {},
        function()
            assert(#listfiles("") > 0, "Did not return a list of files")
        end
    ) and allPassed

    allPassed =
        test(
        "writefile",
        {},
        function()
            writefile("TALENTLESS_makefolder/writefile.txt", "success")
            testfile = listfiles("./TALENTLESS_makefolder")[1]
            assert(readfile(testfile) == "success", "Did not write the file")
        end
    ) and allPassed

    allPassed =
        test(
        "listfiles2",
        {},
        function()
            assert(#listfiles("./TALENTLESS_makefolder") > 0, "Did not return a list of files")
        end
    ) and allPassed

    allPassed =
        test(
        "delfile",
        {},
        function()
            delfile(testfile)
            assert(not isfile(testfile), "Did not delete the file")
        end
    ) and allPassed

    return allPassed
end

local result = runTests()

if result == true then
    print("this executor supports custom songs")
    customnotice:Destroy()
end



-- CUSTOM SONGS
-- CUSTOM SONGS
-- CUSTOM SONGS



NEWSONGBUTTON = newSongButton("+", {""})
NEWSONGBUTTON.TextSize = 30
NEWSONGBUTTON.Visible = false
print("loaded NEWSONGBUTTON")

NEWSONGBUTTON.MouseButton1Click:Connect(
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/add_song.lua", true)
        )()
    end
)

table.insert(customsongbuttons, NEWSONGBUTTON)
local addedCustoms = {}

function updateSongs() -- universal function so it can be called from the custom song creator gui
    local alreadyAdded

    for _, file in ipairs(listfiles("")) do
        print(tostring(file))
        if folderexists == false then
            if string.find(tostring(file), "TALENTLESS_CUSTOM_SONGS") then
                folderexists = true
                print("custom songs folder found")
            end
        end
    end

    print("searching for custom song files...")

    if folderexists then
        for _, custom in ipairs(listfiles([[./TALENTLESS_CUSTOM_SONGS]])) do
            alreadyAdded = false

            print("song file found: " .. tostring(custom))

            local filepath = tostring(custom) -- converts it into the format /TALENTLESS_CUSTOM_SONGS\example.txt

            if not table.find(addedCustoms, filepath) then
                if filepath:match("%.txt$") then -- if it has .txt at the end
                    print("its a txt file, continuing")

                    table.insert(addedCustoms, filepath) -- add the file to the addedCustoms table
                    local tsongname = filepath:gsub([[\]], "/"):match(".*/([^/]+)%.txt$") or "Error" -- remove the /, \, and .txt
                    print("song name: " .. tsongname)

                    local hello = newCustomSongButton(tsongname) -- make the song button
                    local songbutton = hello.button -- get the button
                    local delsongbutton = hello.delbutton
                    local songframe = hello.frame -- get the frame
                    table.insert(customsongbuttons, songframe)
                    songframe.Visible = false

                    print("created song button for " .. tsongname)

                    local songbpm = readfile(custom):match("bpm%s*=%s*(%d+)") or "Error" -- read the file and look for the string after bpm =
                    print("songbpm found: " .. songbpm)

                    songbutton.Visible = true

                    songbutton.MouseButton1Click:Connect(
                        function()
                            print("clicked!")

                            if songisplaying then
                                playSound("6493287948", 0.1)
                                NotificationLibrary:SendNotification("Error", "A song is already playing.", 1)
                                return
                            else
                                local songcode = readfile(custom) -- define the contents of the song file
                                local func = loadstring(songcode) -- load it

                                if func then
                                    print("running scrip....")
                                    songname.Text = tsongname
                                    bpmbox.Text = songbpm
                                    playSound("6493287948", 0.1)
                                    NotificationLibrary:SendNotification("Success", translateText("beganplayingnotif"), 1)
                                    songisplaying = true
                                    func()
                                else
                                    print("invalid script")
                                    playSound("6493287948", 0.1)
                                    NotificationLibrary:SendNotification(
                                        "Error",
                                        translateText("brokensongscript"),
                                        5
                                    )
                                end
                            end
                        end
                    )

                    -- del song function

                    local clickTime = 0.5
                    local lastClick = 0

                    delsongbutton.MouseButton1Click:Connect(
                        function()
                            local now = tick()
                            if now - lastClick <= clickTime then
                                -- Double-click detected
                                print("Double-click detected. Deleting song...")
                                delfile(filepath) -- Delete the file
                                songframe:Destroy()
                                table.remove(customsongbuttons, table.find(customsongbuttons, songbutton))
                                table.remove(addedCustoms, table.find(addedCustoms, filepath))
                                updatecustomcount()
                                playSound("6493287948", 0.1)
                                NotificationLibrary:SendNotification("Success", translateText("songdeleted"), 5)
                            else
                                -- Single-click detected
                                print("Single-click detected. Showing notification...")
                                playSound("6493287948", 0.1)
                                NotificationLibrary:SendNotification("Info", translateText("doubleclickdelete"), 3)
                            end
                            lastClick = now -- Update the last click time
                        end
                    )

                    updatecustomcount()
                else -- if yes table.find
                    print("song already added, skipping")
                end
            else
                print("its not a txt, skipping")
            end
        end
    else
    end -- ends if folderexists
end -- end updatesongs func

for _, songbutton in ipairs(scroll:GetChildren()) do
    if songbutton:IsA("TextButton") then
        if songbutton.Text == "error" then
            songbutton:Destroy()
        end
    else
    end
end

wait(0.5)
updateSongs()



-- FAVOURITE SONGS
-- FAVOURITE SONGS
-- FAVOURITE SONGS



local addedFavsNames = {}


local function updateFavs()

    local favFileExists
    local favSongsContent

    if isfile("TALENTLESS_FAV_SONGS.txt") then
        favFileExists = true
        favSongsContent = readfile("TALENTLESS_FAV_SONGS.txt")
    else
        favFileExists = false
    end

    if favFileExists then
        local allSongNames = {}

        for _, song in ipairs(songs) do
            table.insert(allSongNames, {button = song.button, name = song.button.Text})
        end

        for _, songFrame in ipairs(customsongbuttons) do
            local btn = songFrame and songFrame:FindFirstChildOfClass("TextButton")
            if btn then
                table.insert(allSongNames, {button = songFrame, name = btn.Text})
            end
        end

        for line in favSongsContent:gmatch("[^\r\n]+") do
            if line ~= "" and not table.find(addedFavsNames, line) then
                for _, entry in ipairs(allSongNames) do
                    if entry.name == line then
                        if entry.button:IsA("Frame") then
                            local btn = entry.button and entry.button:FindFirstChildOfClass("TextButton")
                            btn.favButton.Image = "rbxassetid://95485559387661" -- fav icon
                        else
                            entry.button.favButton.Image = "rbxassetid://95485559387661" -- fav icon
                        end
                        table.insert(favsongbuttons, entry.button)
                    end
                end
                table.insert(addedFavsNames, line)
            end
        end
    end

    updatefavcount()
end

local function favouriteSong(name)
    if not isfile("TALENTLESS_FAV_SONGS.txt") then
        writefile("TALENTLESS_FAV_SONGS.txt", "")
    end

    local currentFavs = readfile("TALENTLESS_FAV_SONGS.txt")
    local alreadyFav = false

    for songName in currentFavs:gmatch("[^\r\n]+") do
        if songName == name then
            alreadyFav = true
            break
        end
    end

    if not alreadyFav then
        writefile("TALENTLESS_FAV_SONGS.txt", currentFavs .. "\n" .. name)
    end

    updateFavs()
end

wait(0.5)
updateFavs()

local function unfavouriteSong(name)
    if not isfile("TALENTLESS_FAV_SONGS.txt") then return end

    local currentFavs = readfile("TALENTLESS_FAV_SONGS.txt")
    local newFavs = {}

    -- add all the favs to newfavs table if its not blank and if its no the song to unfavourite
    for line in currentFavs:gmatch("[^\r\n]+") do
        if line ~= "" and line ~= name then
            table.insert(newFavs, line)
        end
    end

    writefile("TALENTLESS_FAV_SONGS.txt", table.concat(newFavs, "\n"))

    for i, fav in ipairs(addedFavsNames) do
        if fav == name then
            table.remove(addedFavsNames, i)
            break
        end
    end

    for i, button in ipairs(favsongbuttons) do
        if button:IsA("Frame") then
            local btn = button and button:FindFirstChildOfClass("TextButton")
            if btn and btn.Text == name then
                table.remove(favsongbuttons, i)
                btn.favButton.Image = "rbxassetid://94707254666920" -- unfav icon
                break
            end
        end
        
        if button.Text == name then
            table.remove(favsongbuttons, i)
            button.favButton.Image = "rbxassetid://94707254666920" -- unfav icon
            break
        end
    end

    updateFavs()
end

local togglefavs = Instance.new("ImageButton")

togglefavs.Name = "togglefavs"
togglefavs.Parent = frame
togglefavs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
togglefavs.BackgroundTransparency = 1.000
togglefavs.BorderColor3 = Color3.fromRGB(0, 0, 0)
togglefavs.BorderSizePixel = 0
togglefavs.Position = UDim2.new(0.86210525, 0, 0.0294117648, 0)
togglefavs.Size = UDim2.new(0, 0, 25)
togglefavs.ZIndex = 10
togglefavs.Image = "rbxassetid://95485559387661"

togglefavs.MouseButton1Click:Connect(function()
    for _, song in ipairs(songs) do
        song.button.favButton.Visible = not song.button.favButton.Visible
    end

    for i, songFrame in ipairs(customsongbuttons) do
        local btn = songFrame and songFrame:FindFirstChildOfClass("TextButton")
        local fav = btn and btn:FindFirstChild("favButton")
        if fav then
            fav.Visible = not fav.Visible
        end
    end
end)

local unfavDecal = "rbxassetid://94707254666920"
local favDecal = "rbxassetid://95485559387661"

for _, song in ipairs(songs) do
    local favB = song.button.favButton
    favB.MouseButton1Click:Connect(function()
        if favB.Image == unfavDecal then
            favouriteSong(song.button.Text)
            favB.Image = favDecal
            updateFavs()
        else
            favB.Image = unfavDecal
            unfavouriteSong(song.button.Text)
            updateFavs()
        end
    end)
end

for _, songFrame in ipairs(customsongbuttons) do
    local btn = songFrame and songFrame:FindFirstChildOfClass("TextButton")
    local favB = btn and btn:FindFirstChild("favButton")
    if favB then
        favB.MouseButton1Click:Connect(function()
            if favB.Image == unfavDecal then
                favouriteSong(btn.Text)
                favB.Image = favDecal
                updateFavs()
            else
                favB.Image = unfavDecal
                unfavouriteSong(btn.Text)
                updateFavs()
            end
        end)
    end
end

print([[



 __ __|   \     |      ____|   \  | __ __|  |      ____|   ___|   ___|
    |    _ \    |      __|      \ |    |    |      __|   \___ \ \___ \
    |   ___ \   |      |      |\  |    |    |      |           |      |
   _| _/    _\ _____| _____| _| \_|   _|   _____| _____| _____/ _____/



]])

print("Copyright (C) 2025 hellohellohell012321")

loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/logger.lua", true))()
