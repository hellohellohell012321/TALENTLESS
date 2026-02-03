-- Copyright (C) 2025 hellohellohell012321
-- Licensed under the GNU GPL v3. See LICENSE file for details.

--[[

This file is a version of TALENTLESS that includes all of the functionality in the original script except only a few songs are added to the song index.

The goal of this file is to provide an open-source version of talentless for developers and scripters. Other than the number of songs, this script is
completely identical to the real TALENTLESS.

Why did i make this? Simply put, it's so that people don't bypass the keysystem. The main script that has the hundreds of songs is obfuscated so that I can
continue generating revenue while providing you guys a free high quality script.

If you're looking into how TALENTLESS functions etc, this script is for you. Make sure to ask for permission before using/modifying/distributing this code.

NOTES:
- all files loaded (e.g. translator.lua) via their URLs from hellohellohell0.com are identical to the ones found in this github repository under the same file name.

]]

local translator = loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/translator.lua", true))()

local function translateText(text)
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

local NotificationLibrary = loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/notif_lib.lua"))()

local ContentProvider = game:GetService("ContentProvider")

local unfavDecal = "rbxassetid://94707254666920"
local favDecal = "rbxassetid://95485559387661"

local addSongToPlaylistDecal = "rbxassetid://131827423757726"
local removeSongFromPlaylistDecal = "rbxassetid://100154109194536"

local assetsToPreload = {
    unfavDecal,
    favDecal,
    addSongToPlaylistDecal,
    removeSongFromPlaylistDecal,
    "rbxassetid://70452176150315", -- ui open
    "rbxassetid://1524549907", -- ui close
    "rbxassetid://104269922408932", -- bye bye
    "rbxassetid://7383525713", -- notif error
    "rbxassetid://18595195017" -- notif success
}

ContentProvider:PreloadAsync(assetsToPreload)

local function playSound(soundId, loudness)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
    sound.Volume = loudness or 1
    sound:Play()
end

local ScreenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local closeButton = Instance.new("TextButton")
local infoButton = Instance.new("TextButton")
local changeLanguageButton = Instance.new("ImageButton")
local title = Instance.new("TextLabel")
local uic1 = Instance.new("UICorner")
local uic2 = Instance.new("UICorner")
local categoriesFrame = Instance.new("ScrollingFrame")
local categoriesLayout = Instance.new("UIListLayout")
local categoriesPadding = Instance.new("UIPadding")
local scroll = Instance.new("ScrollingFrame")
local listLayout = Instance.new("UIListLayout")
local barlist = Instance.new("UIListLayout")
local barpadding = Instance.new("UIPadding")
local padding = Instance.new("UIPadding")
local creds = Instance.new("TextLabel")
local bar = Instance.new("ScrollingFrame")
local songname = Instance.new("TextLabel")
local bpmbox = Instance.new("TextBox")
local playsong = Instance.new("TextButton")
local toggle = Instance.new("TextButton")
local searchframe = Instance.new("Frame")
local searchbar = Instance.new("TextBox")
local barseperator = Instance.new("Frame")
local songOptionsFrame = Instance.new("Frame")
local favSongButton = Instance.new("ImageButton")
local addSongToPlaylistButton = Instance.new("ImageButton")
local tagsFrame = Instance.new("Frame")
local tagsListLayout = Instance.new("UIListLayout")
local tagsPadding = Instance.new("UIPadding")

local snowpile = Instance.new("ImageLabel")
local xmaslights = Instance.new("ImageLabel")


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

    infoButton.Name = "infoButton"
    infoButton.Parent = frame
    infoButton.BackgroundTransparency = 1.000
    infoButton.LayoutOrder = 2
    infoButton.Position = UDim2.new(0, 5, 0, 4)
    infoButton.Size = UDim2.new(0, 35, 0, 35)
    infoButton.ZIndex = 5
    infoButton.Font = Enum.Font.SourceSansBold
    infoButton.Text = "?"
    infoButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    infoButton.TextScaled = true
    infoButton.TextWrapped = true

    changeLanguageButton.Name = "changeLanguageButton"
    changeLanguageButton.Parent = frame
    changeLanguageButton.BackgroundTransparency = 1.000
    changeLanguageButton.LayoutOrder = 2
    changeLanguageButton.Position = UDim2.new(0, 43, 0, 5)
    changeLanguageButton.Size = UDim2.new(0, 35, 0, 35)
    changeLanguageButton.ZIndex = 5
    changeLanguageButton.Image = "rbxassetid://123593076590814"

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
    creds.ZIndex = 3

    bar.Name = "bar"
    bar.Parent = frame
    bar.Active = true
    bar.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
    bar.BackgroundTransparency = 1.000
    bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    bar.BorderSizePixel = 0
    bar.Position = UDim2.new(1.05001855, -173, 0.20220229, 0)
    bar.Size = UDim2.new(0, 144, 0, 217)
    bar.ScrollBarThickness = 3
    bar.ZIndex = 0
    bar.AutomaticCanvasSize = Enum.AutomaticSize.Y

        barlist.Name = "barlist"
        barlist.Parent = bar
        barlist.SortOrder = Enum.SortOrder.LayoutOrder
        barlist.Padding = UDim.new(0, 10)
        barlist.HorizontalAlignment = Enum.HorizontalAlignment.Center

        barpadding.Name = "barpadding"
        barpadding.Parent = bar
        barpadding.PaddingLeft = UDim.new(0, 5)
        barpadding.PaddingRight = UDim.new(0, 5)
        barpadding.PaddingTop = UDim.new(0, 10)
        barpadding.PaddingBottom = UDim.new(0, 5)

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

        songOptionsFrame.Name = "songOptionsFrame"
        songOptionsFrame.Parent = bar
        songOptionsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        songOptionsFrame.BackgroundTransparency = 1.000
        songOptionsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        songOptionsFrame.BorderSizePixel = 0
        songOptionsFrame.LayoutOrder = 4
        songOptionsFrame.Position = UDim2.new(0.0300751887, 0, 0.822222233, 0)
        songOptionsFrame.Size = UDim2.new(0, 125, 0, 38)

            favSongButton.Parent = songOptionsFrame
            favSongButton.BackgroundTransparency = 1
            favSongButton.Position = UDim2.new(0.7, 0, 0, 0)
            favSongButton.Size = UDim2.new(0, 38, 0, 38)
            favSongButton.Image = unfavDecal

            addSongToPlaylistButton.Parent = songOptionsFrame
            addSongToPlaylistButton.BackgroundTransparency = 1
            addSongToPlaylistButton.BorderSizePixel = 0
            addSongToPlaylistButton.Position = UDim2.new(0, 0, 0, 0)
            addSongToPlaylistButton.Size = UDim2.new(0, 38, 0, 38)
            addSongToPlaylistButton.Image = addSongToPlaylistDecal

        barseperator.Name = "barseperator"
        barseperator.Parent = bar
        barseperator.BackgroundColor3 = Color3.fromRGB(64, 68, 90)
        barseperator.LayoutOrder = 5
        barseperator.Position = UDim2.new(-0.251879692, 0, 1.17777777, 0)
        barseperator.Size = UDim2.new(0, 137, 0, 8)

        tagsFrame.Name = "tagsFrame"
        tagsFrame.Parent = bar
        tagsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tagsFrame.BackgroundTransparency = 1.000
        tagsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        tagsFrame.BorderSizePixel = 0
        tagsFrame.LayoutOrder = 6
        tagsFrame.Position = UDim2.new(-0.195488721, 0, 1.31851852, 0)
        tagsFrame.Size = UDim2.new(0, 137, 0, 157)

            tagsListLayout.Name = "tagsListLayout"
            tagsListLayout.Parent = tagsFrame
            tagsListLayout.FillDirection = Enum.FillDirection.Horizontal
            tagsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            tagsListLayout.Padding = UDim.new(0, 10)
            tagsListLayout.Wraps = true

            tagsPadding.Name = "tagsPadding"
            tagsPadding.Parent = tagsFrame
            tagsPadding.PaddingBottom = UDim.new(0, 5)
            tagsPadding.PaddingLeft = UDim.new(0, 5)
            tagsPadding.PaddingRight = UDim.new(0, 5)

    snowpile.Name = "snowpile"
    snowpile.Parent = frame
    snowpile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    snowpile.BackgroundTransparency = 1.000
    snowpile.BorderColor3 = Color3.fromRGB(0, 0, 0)
    snowpile.BorderSizePixel = 0
    snowpile.Position = UDim2.new(-0.0149999997, 0, 0.716000021, 0)
    snowpile.Size = UDim2.new(0, 202, 0, 192)
    snowpile.Image = "rbxassetid://124461981242866"
    
    xmaslights.Name = "xmaslights"
    xmaslights.Parent = frame
    xmaslights.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    xmaslights.BackgroundTransparency = 1.000
    xmaslights.BorderColor3 = Color3.fromRGB(0, 0, 0)
    xmaslights.BorderSizePixel = 0
    xmaslights.Position = UDim2.new(-0.0484210514, 0, 0.0147058824, 0)
    xmaslights.Size = UDim2.new(0, 520, 0, 100)
    xmaslights.ZIndex = 2
    xmaslights.Image = "rbxassetid://850806532"


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
            game:HttpGet("https://hellohellohell0.com/talentless-raw/info.lua", true)
        )()
    end
)

changeLanguageButton.MouseButton1Click:Connect(
    function()
        translator:requestLang(frame, "change") -- script will pause here until language is chosen
        ScreenGui:Destroy()
        STOPLOOP = nil
        playingall = false
        loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/MAIN.lua", true))()
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

-- midi spoof

local gameId = game.GameId

local spoofMidiPlz = false

if gameId == 3929033413 then

    local spoofMidiInfo = Instance.new("TextButton")
    local spoofMidi = Instance.new("TextButton")
    local underline = Instance.new("TextLabel")

    spoofMidiInfo.Name = "spoofMidiInfo"
    spoofMidiInfo.Parent = frame
    spoofMidiInfo.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    spoofMidiInfo.BorderColor3 = Color3.fromRGB(64, 68, 90)
    spoofMidiInfo.BorderSizePixel = 2
    spoofMidiInfo.LayoutOrder = 3
    spoofMidiInfo.Position = UDim2.new(0.919436276, 0, 0.884484231, 0)
    spoofMidiInfo.Size = UDim2.new(0, 23, 0, 23)
    spoofMidiInfo.Font = Enum.Font.SourceSansItalic
    spoofMidiInfo.Text = "?"
    spoofMidiInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
    spoofMidiInfo.TextSize = 25.000

    spoofMidiInfo.MouseButton1Click:Connect(
        function()
            loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/spooferinfo.lua", true))()
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

    fitText(spoofMidi)

    spoofMidi.MouseButton1Click:Connect(
        function()
            spoofMidiPlz = not spoofMidiPlz
            if spoofMidiPlz then
                spoofMidi.Text = translateText("spoof midi") .. " [x]"
                playSound(18595195017, 1)
                NotificationLibrary:SendNotification("Success", translateText("midispoofon"), 5)
            else
                spoofMidi.Text = translateText("spoof midi") .. " [ ]"
                playSound(18595195017, 1) -- replace with actual sound ID for disabling
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

local dontSearchIndex = {
    "+",

}

local function filterSongs(query)
    query = query:lower()
    scroll.CanvasPosition = Vector2.new(0, 0)
    for _, child in pairs(scroll:GetChildren()) do
        if child:IsA("TextButton") then
            if child.Text ~= "+" and child ~= PLAYRANDOM and child ~= LOOPRANDOM and child ~= PLAYPLAYLISTBUTTON and child ~= SHUFFLEPLAYLISTBUTTON then
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
            else
                child.Visible = false
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
    favButton.Size = UDim2.new(0, 25, 0, 25)
    favButton.Image = unfavDecal
    favButton.Visible = false
    favButton.Name = "favButton"

    fitText(button)
    
    return button
end

-- newSongButton("", {})
-- japanese songs sohould be written with their english then japanese romanji name, but will translate to japanese characters if japanese language is enabled.

LOOPRANDOM = newSongButton(translateText("shuffle play songs"), {})
LOOPRANDOM.LayoutOrder = 1

PLAYRANDOM = newSongButton(translateText("play random song"), {})
PLAYRANDOM.LayoutOrder = 1

local seperator = Instance.new("Frame")
seperator.Name = "seperator"
seperator.Parent = scroll
seperator.BackgroundColor3 = Color3.fromRGB(64, 68, 90)
seperator.Size = UDim2.new(0, 200, 0, 8)
seperator.LayoutOrder = 2

GOLDENHOUR = newSongButton("GOLDEN HOUR", {"jvke", "love, sad", "popular"})
YOUNG_GIRL_A = newSongButton(translateText("YOUNG GIRL A"), {"siinamota", "vocaloid"})
M3 = newSongButton("MOONLIGHT SONATA - THIRD MOVEMENT", {"ludwig van beethoven"})
UNDERTALE = newSongButton("UNDERTALE", {})
TURKISH = newSongButton("TURKISH MARCH", {"mozart", "rondo alla turca"})
UNRAVEL_EPIC = newSongButton("UNRAVEL (ANIMENZ ARR.)", {"tokyo ghoul", "animenz", "unravel epic"})
SNOWFALL = newSongButton("SNOWFALL", {"oneheart"})
BOHEMIAN_RHAPSODY = newSongButton("BOHEMIAN RHAPSODY", {"queen"})
RENAI_CIRCULATION = newSongButton(translateText("RENAI CIRCULATION"), {"bakemonogatari"})
WE_NOT_LIKE_U = newSongButton("WE NOT LIKE YOU", {"nettspend"})

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
    button.LayoutOrder = index + 3 -- so theyre still under seperator and other buttons
end


MANGOMANGOMANGO = newSongButton("MANGO MANGO MANGO", {})
MANGOMANGOMANGO.LayoutOrder = #framebuttons + 1
DEATH_WALTZ = newSongButton("DEATH WALTZ (WARNING)", {})
DEATH_WALTZ.LayoutOrder = #framebuttons + 1

-- hungarian will nto work

local songs = {
    {button = GOLDENHOUR, bpm = "94", var = false, url = "GOLDEN_HOUR", cat = {"beautiful", "best"}},
    {button = YOUNG_GIRL_A, bpm = "130", var = false, url = "YOUNG_GIRL_A", cat = {"anime/jpop", "sad", "beautiful", "best"}},
    {button = M3, bpm = "163", var = false, url = "WHAT_THE_FUCKK", cat = {"classical", "best", "peak"}},
    {button = UNDERTALE, bpm = "100", var = false, url = "UNDERTALE", cat = {"video games", "undertale", "best", "epic"}},
    {button = TURKISH, bpm = "92", var = false, url = "TURKISH", cat = {"classical"}},
    {button = UNRAVEL_EPIC, bpm = "132", var = false, url = "UNRAVEL_EPIC", cat = {"epic", "best", "beautiful", "peak", "movies/tv"}},
    {button = SNOWFALL, bpm = "96", var = false, url = "SNOWFALL", cat = {"beautiful", "sad", "best"}},
    {button = BOHEMIAN_RHAPSODY, bpm = "80", var = false, url = "BOHEMIAN_RHAPSODY", cat = {"rock"}},
    {button = RENAI_CIRCULATION, bpm = "120", var = false, url = "RENAI_CIRCULATION", cat = {"anime/jpop", "memes", "peak", "best"}},
    {button = WE_NOT_LIKE_U, bpm = "155", var = false, url = "WE_NOT_LIKE_U", cat = {"pop/hiphop", "memes", "new"}},
}

for _, song in ipairs(songs) do
    print("song loaded: " .. song.button.Name)
end

-- Store original layout orders for later restoration
for _, song in ipairs(songs) do
    song.button:SetAttribute("OriginalLayoutOrder", song.button.LayoutOrder)
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
    "seasonal",
    "sad",
    "electronic",
    "rock",
    "creepy/weirdcore",
    "undertale",
    "deltarune",
    "geometry dash",
    "minecraft",
    "omori"
} -- The main table for unique categories

-- add the song category as one of its alternate names
for _, songButton in ipairs(songs) do
	for _, category in ipairs(songButton.cat) do
		local current = songButton.button:GetAttribute("AlternateNames") or ""

		local currentList = {}
		if current ~= "" then
			currentList = string.split(current, ",")
		end

		table.insert(currentList, category)

		songButton.button:SetAttribute("AlternateNames", table.concat(currentList, ","))
	end
end


local folderexists = false
local customsongbuttons = {}
-- format {buttonFrame = songframe, var = false, file = custom}

local playlist = {}

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



local categoryButtons = {}
local utilsButtons = {}

local utilsTab = Instance.new("TextButton")
utilsTab.Parent = categoriesFrame
utilsTab.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
utilsTab.BorderColor3 = Color3.fromRGB(64, 68, 90)
utilsTab.BorderSizePixel = 2
utilsTab.Size = UDim2.new(0, 100, 0, 25)
utilsTab.Font = Enum.Font.SourceSansBold
utilsTab.Text = translateText("utilities") .. " ▲"
utilsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
utilsTab.TextSize = 18
utilsTab.LayoutOrder = 1 --- should always be at the top

fitText(utilsTab)

local categoriesTab = Instance.new("TextButton")
categoriesTab.Parent = categoriesFrame
categoriesTab.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
categoriesTab.BorderColor3 = Color3.fromRGB(64, 68, 90)
categoriesTab.BorderSizePixel = 2
categoriesTab.Size = UDim2.new(0, 100, 0, 25)
categoriesTab.Font = Enum.Font.SourceSansBold
categoriesTab.Text = translateText("categories") .. " ▲"
categoriesTab.TextColor3 = Color3.fromRGB(255, 255, 255)
categoriesTab.TextSize = 18
categoriesTab.LayoutOrder = 100 -- so its below the categories when they drop down

fitText(categoriesTab)

local categoriesOpen = false
local utilsOpen = false

utilsTab.MouseButton1Click:Connect(function()
    utilsOpen = not utilsOpen
    for _, button in ipairs(utilsButtons) do
        button.Visible = utilsOpen
    end
    if utilsOpen then
        utilsTab.Text = translateText("utilities") .. " ▼"
    else
        utilsTab.Text = translateText("utilities") .. " ▲"
    end
end)

categoriesTab.MouseButton1Click:Connect(function()
    categoriesOpen = not categoriesOpen
    for _, button in ipairs(categoryButtons) do
        button.Visible = categoriesOpen
    end
    if categoriesOpen then
        categoriesTab.Text = translateText("categories") .. " ▼"
    else
        categoriesTab.Text = translateText("categories") .. " ▲"
    end
end)


local function newcategory(name, type, layoutorder)
    local TextButton = Instance.new("TextButton")
    TextButton.Parent = categoriesFrame
    TextButton.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    TextButton.BorderColor3 = Color3.fromRGB(64, 68, 90)
    TextButton.BorderSizePixel = 2
    TextButton.Size = UDim2.new(0, 100, 0, 25)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = name
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 14
    TextButton.Visible = false

    fitText(TextButton)

    if type == "cat" then 
        table.insert(categoryButtons, TextButton)
        TextButton.LayoutOrder = #categoryButtons + 101
    elseif type == "utils" then
        table.insert(utilsButtons, TextButton)
        TextButton.LayoutOrder = #utilsButtons + 1
    end

    return TextButton
end

local function makeAllInvisible()
    for _, song in ipairs(songs) do
        song.button.Visible = false
        song.button.LayoutOrder = song.button:GetAttribute("OriginalLayoutOrder") or song.button.LayoutOrder
    end

    for _, song in ipairs(customsongbuttons) do
        song.buttonFrame.Visible = false
        song.buttonFrame.LayoutOrder = song.buttonFrame:GetAttribute("OriginalLayoutOrder") or song.buttonFrame.LayoutOrder
    end

    for _, song in ipairs(favsongbuttons) do
        song.Visible = false
    end

    removePlaylistArrows()
    
    PLAYRANDOM.Visible = false
    LOOPRANDOM.Visible = false
    PLAYPLAYLISTBUTTON.Visible = false
    SHUFFLEPLAYLISTBUTTON.Visible = false
    if NEWSONGBUTTON then NEWSONGBUTTON.Visible = false end
    if customnotice then customnotice.Visible = false end
end

local function updateOptionsFrameButtons()
    for _, song in ipairs(songs) do
        if song.var == true then
            if table.find(favsongbuttons, song.button) then
                favSongButton.Image = favDecal
            else
                favSongButton.Image = unfavDecal
            end
            if table.find(playlist, song) then
                addSongToPlaylistButton.Image = removeSongFromPlaylistDecal
            else
                addSongToPlaylistButton.Image = addSongToPlaylistDecal
            end
        end
    end

    for _, song in ipairs(customsongbuttons) do
        if song.var == true then
            if table.find(favsongbuttons, song.buttonFrame) then
                favSongButton.Image = favDecal
            else
                favSongButton.Image = unfavDecal
            end
            if table.find(playlist, song) then
                addSongToPlaylistButton.Image = removeSongFromPlaylistDecal
            else
                addSongToPlaylistButton.Image = addSongToPlaylistDecal
            end
        end
    end
end

local function createstopbutton(ttype)
    if not STOPLOOP then
        -- StarterGui.ScreenGui.Frame.scrolltab.stoploop
        local STOPLOOP = Instance.new("TextButton", bar)
        STOPLOOP["BorderSizePixel"] = 4
        STOPLOOP["TextSize"] = 25
        STOPLOOP["TextColor3"] = Color3.fromRGB(255, 255, 255)
        STOPLOOP["BackgroundColor3"] = Color3.fromRGB(76, 82, 101)
        STOPLOOP["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        STOPLOOP["Size"] = UDim2.new(0, 125, 0, 27)
        STOPLOOP["Name"] = [[stoploop]]
        STOPLOOP["BorderColor3"] = Color3.fromRGB(64, 68, 90)

        local buttonText

        if ttype == "looprandom" then
            buttonText = translateText("stoploopingsongs")
        elseif ttype == "playlist" then
            buttonText = translateText("stopplayingplaylist")
        else -- fallback if it fails somehow
            buttonText = translateText("stoploopingsongs")
        end

        STOPLOOP["Text"] = buttonText
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

local function addTag(tagvalue)
    local tag = Instance.new("TextLabel")
    tag.Parent = tagsFrame
    tag.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    tag.BorderSizePixel = 0
    tag.Size = UDim2.new(0, 0, 0, 21) -- width will be adjusted
    tag.Font = Enum.Font.SourceSans
    tag.TextColor3 = Color3.fromRGB(255, 255, 255)
    tag.TextSize = 14
    tag.Text = tagvalue:lower()
    tag.TextXAlignment = Enum.TextXAlignment.Center

    -- Measure text
    local textSize = TextService:GetTextSize(
        tagvalue,
        tag.TextSize,
        tag.Font,
        Vector2.new(math.huge, 21)
    )

    -- padding so text isn't touching the edges
    local padding = 12

    tag.Size = UDim2.new(0, textSize.X + padding, 0, 21)

    -- rounded corners
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 21)
    UICorner.Parent = tag
end

local function updateFrameTags()
    for _, tag in ipairs(tagsFrame:GetChildren()) do
        if tag:IsA("TextLabel") then
            tag:Destroy()
        end
    end

    for _, songButton in ipairs(songs) do
        if songButton.var == true then
            local alternateNames = songButton.button:GetAttribute("AlternateNames") or ""
            local alternateNames = alternateNames:split(",")
            for _, altName in ipairs(alternateNames) do -- we already added the categories as alt names
                if altName ~= "" then
                    addTag(altName)
                end
            end
        end
    end

    tagsFrame.Size = UDim2.new(
        tagsFrame.Size.X.Scale,
        tagsFrame.Size.X.Offset,
        0,
        tagsListLayout.AbsoluteContentSize.Y
    )
end



local customcat = newcategory(translateText("custom songs") .. " (0)", "utils")

customcat.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)

        makeAllInvisible()

        for _, song in ipairs(customsongbuttons) do
            song.buttonFrame.Visible = true
        end

        NEWSONGBUTTON.Visible = true
        customnotice.Visible = true
    end
)

function updatecustomcount()
    customcat.Text = translateText("custom songs") .. " (" .. tostring(#customsongbuttons) .. ")"
end



local favcat = newcategory(translateText("favourites"), "utils")

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



-- PLAYLIST
-- PLAYLIST
-- PLAYLIST

local function updatePlaylistLayout()
    -- Reset all songs to their normal layout order first
    for _, song in ipairs(songs) do
        song.button.LayoutOrder = song.button:GetAttribute("OriginalLayoutOrder") or song.button.LayoutOrder
    end
    
    for _, song in ipairs(customsongbuttons) do
        song.buttonFrame.LayoutOrder = song.buttonFrame:GetAttribute("OriginalLayoutOrder") or song.buttonFrame.LayoutOrder
    end
    
    -- Now set playlist-specific layout orders
    for index, song in ipairs(playlist) do
        local targetButton = song.button or song.buttonFrame
        if targetButton then
            targetButton.LayoutOrder = index + 3
        end
    end
end

local playlistButtonWrappers = {} -- Track wrappers to clean up

local function createPlaylistArrows(songButton, song, index)
    local isCustomSong = songButton:IsA("Frame")
    local actualButton, deleteButton, wrapper
    
    if isCustomSong then
        -- For custom songs, get the actual button and delete button from the frame
        actualButton = songButton:FindFirstChild("button")
        deleteButton = songButton:FindFirstChild("ImageButton")
        wrapper = songButton -- Use the existing frame as wrapper
        
        -- Hide delete button in playlist view
        if deleteButton then
            deleteButton.Visible = false
        end
        
        -- Adjust button size and position to make room for arrows
        if actualButton then
            actualButton.Position = UDim2.new(0, 0, 0, 0)
            actualButton.Size = UDim2.new(0, 108, 1, 0) -- Takes left 108px
            fitText(actualButton)
        end
    else
        -- For regular songs, create new wrapper
        wrapper = Instance.new("Frame")
        wrapper.Name = "playlistWrapper"
        wrapper.Parent = songButton.Parent
        wrapper.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
        wrapper.BorderColor3 = Color3.fromRGB(64, 68, 90)
        wrapper.BorderSizePixel = 4
        wrapper.Size = UDim2.new(0, 175, 0, 35)
        wrapper.LayoutOrder = songButton.LayoutOrder
        
        actualButton = songButton
        actualButton.Parent = wrapper
        actualButton.Position = UDim2.new(0, 0, 0, 0)
        actualButton.Size = UDim2.new(0, 145, 1, 0)
        actualButton.BorderSizePixel = 0
        
        task.wait()
        fitText(actualButton)
    end
    
    -- Delete button container for custom songs (takes middle 27px)
    local deleteBtnContainer
    if isCustomSong and deleteButton then
        deleteBtnContainer = Instance.new("Frame")
        deleteBtnContainer.Name = "deleteContainer"
        deleteBtnContainer.Parent = wrapper
        deleteBtnContainer.BackgroundTransparency = 1
        deleteBtnContainer.Position = UDim2.new(0, 108, 0, 0)
        deleteBtnContainer.Size = UDim2.new(0, 37, 1, 0) -- Space for delete button
        
        -- Move delete button into container (keep it hidden but structured)
        deleteButton.Parent = deleteBtnContainer
        deleteButton.Position = UDim2.new(0, 5, 0.5, -13.5)
        deleteButton.Size = UDim2.new(0, 27, 0, 27)
    end
    
    -- Arrow container (positioned at the right)
    local arrowFrame = Instance.new("Frame")
    arrowFrame.Name = "arrows"
    arrowFrame.Parent = wrapper
    arrowFrame.BackgroundTransparency = 1
    arrowFrame.Position = UDim2.new(0, isCustomSong and 145 or 145, 0, 0)
    arrowFrame.Size = UDim2.new(0, 30, 1, 0)
    
    -- Up arrow
    local upArrow = Instance.new("TextButton")
    upArrow.Parent = arrowFrame
    upArrow.BackgroundColor3 = Color3.fromRGB(96, 102, 121)
    upArrow.BorderSizePixel = 0
    upArrow.Size = UDim2.new(1, 0, 0.5, -2)
    upArrow.Position = UDim2.new(0, 0, 0, 0)
    upArrow.Text = "▲"
    upArrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    upArrow.TextScaled = true
    upArrow.Font = Enum.Font.SourceSansBold
    
    -- Down arrow
    local downArrow = Instance.new("TextButton")
    downArrow.Parent = arrowFrame
    downArrow.BackgroundColor3 = Color3.fromRGB(96, 102, 121)
    downArrow.BorderSizePixel = 0
    downArrow.Size = UDim2.new(1, 0, 0.5, -2)
    downArrow.Position = UDim2.new(0, 0, 0.5, 2)
    downArrow.Text = "▼"
    downArrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    downArrow.TextScaled = true
    downArrow.Font = Enum.Font.SourceSansBold
    
    table.insert(playlistButtonWrappers, {
        wrapper = wrapper,
        original = isCustomSong and wrapper or actualButton,
        isCustom = isCustomSong,
        deleteButton = deleteButton,
        deleteBtnContainer = deleteBtnContainer
    })
    
    -- Set the wrapper's layout order to match
    wrapper.LayoutOrder = index + 3

    upArrow.MouseButton1Click:Connect(function()
        if index > 1 then
            playlist[index], playlist[index - 1] = playlist[index - 1], playlist[index]
            refreshPlaylistView()
        end
    end)
    
    downArrow.MouseButton1Click:Connect(function()
        if index < #playlist then
            playlist[index], playlist[index + 1] = playlist[index + 1], playlist[index]
            refreshPlaylistView()
        end
    end)
end

function removePlaylistArrows()
    for _, entry in ipairs(playlistButtonWrappers) do
        if entry.wrapper and entry.wrapper.Parent then
            if entry.isCustom then
                -- For custom songs, restore original layout
                local actualButton = entry.wrapper:FindFirstChild("button")
                if actualButton then
                    actualButton.Position = UDim2.new(0, 0, 0, 0)
                    actualButton.Size = UDim2.new(0, 135, 0, 35)
                    actualButton.TextSize = 27
                    fitText(actualButton)
                end
                
                -- Restore delete button to original position
                if entry.deleteButton and entry.wrapper then
                    entry.deleteButton.Parent = entry.wrapper
                    entry.deleteButton.Position = UDim2.new(0.816999972, 0, 0.115000002, 0)
                    entry.deleteButton.Size = UDim2.new(0, 27, 0, 27)
                    entry.deleteButton.Visible = true
                end
                
                -- Remove arrow frame and delete container
                local arrowFrame = entry.wrapper:FindFirstChild("arrows")
                if arrowFrame then
                    arrowFrame:Destroy()
                end
                
                if entry.deleteBtnContainer then
                    entry.deleteBtnContainer:Destroy()
                end
            else
                -- For regular songs, restore to scroll
                entry.original.Parent = scroll
                entry.original.Size = UDim2.new(0, 175, 0, 35)
                entry.original.BorderSizePixel = 4
                entry.original.TextSize = 27
                fitText(entry.original)
                entry.wrapper:Destroy()
            end
        end
    end
    playlistButtonWrappers = {}
end

function refreshPlaylistView() -- universal function cause it gets called earlier

    removePlaylistArrows() -- clean up any existing arrows
    makeAllInvisible()
    updatePlaylistLayout()
    
    for index, song in ipairs(playlist) do
        local songButton = song.button or song.buttonFrame
        if songButton then
            songButton.Visible = true
            createPlaylistArrows(songButton, song, index)
        end
    end

    PLAYPLAYLISTBUTTON.Visible = true
    SHUFFLEPLAYLISTBUTTON.Visible = true
end

local playlistCat = newcategory(translateText("playlist") .. " (0)", "utils")

local function updatePlaylistCat()
    playlistCat.Text = translateText("playlist") .. " (" .. tostring(#playlist) .. ")"
end

PLAYPLAYLISTBUTTON = newSongButton(translateText("playplaylist"))
PLAYPLAYLISTBUTTON.LayoutOrder = 1

SHUFFLEPLAYLISTBUTTON = newSongButton(translateText("shuffleplaylist"))
SHUFFLEPLAYLISTBUTTON.LayoutOrder = 1

SHUFFLEPLAYLISTBUTTON.MouseButton1Click:Connect(
    function()

        if playingall then
            return
        end

        if #playlist <= 1 then
            NotificationLibrary:SendNotification("Error", translateText("playlisttooshort"), 5)
            playSound("7383525713", 0.5)
            return
        end

        playingall = true

        createstopbutton("playlist")

        local playedSongs = {}

        local function getRandomSong()
            if #playedSongs >= #playlist then
                playedSongs = {}
            end

            while true do
                local ransong = math.random(1, #playlist)
                if not table.find(playedSongs, playlist[ransong]) then
                    table.insert(playedSongs, playlist[ransong])
                    return playlist[ransong]
                end
            end
        end

        while wait(0.5) do
            local randomSong = getRandomSong()
            if not playingall then
                return
            end

            disable()
            randomSong.var = true
            local nameOfRansong = nil
            if not randomSong.button then
                nameOfRansong = randomSong.buttonFrame.button.Text
            else
                nameOfRansong = randomSong.button.Text
            end

            updateOptionsFrameButtons()

            songname.Text = nameOfRansong
            bpmbox.Text = tostring(randomSong.bpm)
            updateFrameTags()
            playbuttonclicked()
        end
    end
)

PLAYPLAYLISTBUTTON.MouseButton1Click:Connect(
    function()

        if playingall then
            return
        end

        if #playlist <= 1 then
            NotificationLibrary:SendNotification("Error", translateText("playlisttooshort"), 5) -- to translate
            playSound("7383525713", 0.5)
            return
        end

        playingall = true

        createstopbutton("playlist")

        local playedSongs = {}
        local currentIndex = 1

        local function getSong()
            if currentIndex > #playlist then
                currentIndex = 1
            end

            local song = playlist[currentIndex]
            currentIndex = currentIndex + 1
            return song
        end

        while wait(0.5) do
            local toPlaySong = getSong()
            if not playingall then
                return
            end

            disable()
            toPlaySong.var = true
            local nameOfSong = nil

            if not toPlaySong.button then
                nameOfSong = toPlaySong.buttonFrame.button.Text
            else
                nameOfSong = toPlaySong.button.Text
            end
            
            updateOptionsFrameButtons()
            
            songname.Text = nameOfSong
            bpmbox.Text = tostring(toPlaySong.bpm)
            updateFrameTags()
            playbuttonclicked()
        end
    end
)

playlistCat.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)
        refreshPlaylistView()
    end
)

addSongToPlaylistButton.MouseButton1Click:Connect(
    function()
        local songToAdd = nil
        local songToRemove = nil
        
        -- Check regular songs
        for _, song in ipairs(songs) do
            if song.var == true then
                local indexInPlaylist = table.find(playlist, song)
                if indexInPlaylist then -- if its in the playlist
                    songToRemove = indexInPlaylist
                else
                    songToAdd = song
                    table.insert(playlist, song)
                end
                break -- Exit after finding the active song
            end
        end

        -- Check custom songs only if we didn't find a regular song
        if not songToAdd and not songToRemove then
            for _, song in ipairs(customsongbuttons) do
                if song.var == true then
                    local indexInPlaylist = table.find(playlist, song)
                    if indexInPlaylist then
                        songToRemove = indexInPlaylist
                    else
                        songToAdd = song
                        table.insert(playlist, song)
                    end
                    break -- Exit after finding the active song
                end
            end
        end
        
        -- Remove after the loops to avoid modifying while iterating
        if songToRemove then
            table.remove(playlist, songToRemove)
        end
        
        updatePlaylistCat()
        updateOptionsFrameButtons()
        
        -- If currently viewing playlist, refresh the view
        if PLAYPLAYLISTBUTTON.Visible then
            refreshPlaylistView()
        end
    end
)

-- end of playlist functionality

local othercats = newcategory(translateText("other"), "utils")

othercats.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)

        makeAllInvisible()

        PLAYRANDOM.Visible = true
        LOOPRANDOM.Visible = true
    end
)

local allcats = newcategory(translateText("all") .. " (" .. tostring(#songs) .. ")", "cat")

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

    local categoryButton = newcategory(translateText(categoryName) .. " (" .. tostring(#numsongs) .. ")", "cat")
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

-- song selecting functionality

function disable()
    for _, song in ipairs(songs) do
        song.var = false
    end
    for _, song in ipairs(customsongbuttons) do
        song.var = false
    end
end

disable()

songisplaying = false

function playbuttonclicked()
    if songisplaying then
        NotificationLibrary:SendNotification("Error", translateText("songplayingerror"), 1)
        playSound("7383525713", 0.5)
        return
    end

    songisplaying = true

    bpm = tonumber(bpmbox.Text)
    if bpm == 0 or nil then
        SendNotification("Error", translateText("invalidbpm"), 3)
        playSound("7383525713", 0.5)
        return
    end

    -- find which song to play
    
    local iscustom = false
    
    local songscript = false
    
    task.spawn(function()
        local songFound = false
        
        for _, song in pairs(songs) do
            if songFound == false then
                if song.var == true then
                    songscript = game:HttpGet(
                        "https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS/SONGS/" .. song.url,
                        true
                    )
                songFound = true
                end
            end
        end
        
        if not songFound then -- its a custom song
            for _, song in ipairs(customsongbuttons) do
                if song.var == true then
                    iscustom = true
                    songcode = readfile(song.file)
                    local func = loadstring(songcode)
                    if func then
                        print("script is good")
                        songscript = songcode
                    else
                        print("invalid script")
                        NotificationLibrary:SendNotification("Error", translateText("brokensongscript"), 5)
                        playSound("7383525713", 0.5)
                    end
                end
            end
        end
    end)
    
    if iscustom ~= true then -- if its custom u dont need a loader
        if spoofMidiPlz == true then
            -- Spoof MIDI
            loadstring(
                game:HttpGet("https://hellohellohell0.com/talentless-raw/midi_spoof_loader.lua", true)
            )()
        else
            loadstring(
                game:HttpGet("https://hellohellohell0.com/talentless-raw/loader_main.lua", true)
            )()
        end
    end

    repeat wait() until songscript
    loadstring(songscript)()
    repeat wait() until _G.STOPIT == true 
end -- close the play song onclick function

playsong.MouseButton1Click:Connect(playbuttonclicked)

for _, song in ipairs(songs) do
    song.button.MouseButton1Click:Connect(
        function()
            disable()
            song.var = true
            songname.Text = song.button.Text
            bpmbox.Text = song.bpm
            updateFrameTags()
            bar.CanvasPosition = Vector2.new(0, 0)
            updateOptionsFrameButtons()
        end
    )
end

-- SHUFFLE/RANDOM PLAYING
-- SHUFFLE/RANDOM PLAYING
-- SHUFFLE/RANDOM PLAYING

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
        updateFrameTags()
        updateOptionsFrameButtons()
        playbuttonclicked()
    end
)

-- play all function

playingall = false

LOOPRANDOM.MouseButton1Click:Connect(
    function()
        if playingall then
            return
        end
        playingall = true
        createstopbutton("looprandom")

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
            updateFrameTags()
            updateOptionsFrameButtons()
            playbuttonclicked()
        end
    end
)

-- make it show the all category first

scroll.CanvasPosition = Vector2.new(0, 0)

makeAllInvisible()

for _, song in ipairs(songs) do
    song.button.Visible = true
end

PLAYRANDOM.Visible = true
LOOPRANDOM.Visible = true



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


-- function to make the song buttons

local function newCustomSongButton(name)
    local customsongframe = Instance.new("Frame")
    local songbutton = Instance.new("TextButton")
    local deleteButton = Instance.new("ImageButton")

    customsongframe.Name = "customsongframe"
    customsongframe.Parent = scroll
    customsongframe.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    customsongframe.BorderColor3 = Color3.fromRGB(64, 68, 90)
    customsongframe.BorderSizePixel = 4
    customsongframe.Size = UDim2.new(0, 175, 0, 35)
    customsongframe.SizeConstraint = Enum.SizeConstraint.RelativeYY
    customsongframe.LayoutOrder = #framebuttons + 1
    customsongframe.Visible = false
    
    customsongframe:SetAttribute("OriginalLayoutOrder", #framebuttons + 1)

    songbutton.Name = "button"
    songbutton.Parent = customsongframe
    songbutton.BackgroundTransparency = 1.000
    songbutton.Size = UDim2.new(0, 135, 0, 35)
    songbutton.Font = Enum.Font.SourceSansBold
    songbutton.Text = name
    songbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
    songbutton.TextSize = 27
    songbutton.TextWrapped = true

    fitText(songbutton)

    deleteButton.Parent = customsongframe
    deleteButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    deleteButton.BackgroundTransparency = 1.000
    deleteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    deleteButton.BorderSizePixel = 0
    deleteButton.Position = UDim2.new(0.816999972, 0, 0.115000002, 0)
    deleteButton.Size = UDim2.new(0, 27, 0, 27)
    deleteButton.Image = "http://www.roblox.com/asset/?id=6121397347"

    local favButton = Instance.new("ImageButton") -- star button for favourites

    favButton.Parent = songbutton
    favButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    favButton.BackgroundTransparency = 1.000
    favButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    favButton.BorderSizePixel = 0
    favButton.AnchorPoint = Vector2.new(0, 0.5)
    favButton.Position = UDim2.new(0, 0, 0.5, 0)
    favButton.Size = UDim2.new(0, 25, 0, 25)
    favButton.Image = unfavDecal -- unfav icon
    favButton.Visible = false
    favButton.Name = "favButton"

    return {button = songbutton, delbutton = deleteButton, frame = customsongframe}
end



NEWSONGBUTTON = newSongButton("+", {})
NEWSONGBUTTON.TextSize = 30
NEWSONGBUTTON.Visible = false
print("loaded NEWSONGBUTTON")

NEWSONGBUTTON.MouseButton1Click:Connect(
    function()
        loadstring(
            game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS/add_song.lua", true)
        )()
    end
)

local addedCustoms = {}

local function patchCustomSongScript(code)
    local converted = code
    
    -- Step 1: Convert raw.githubusercontent.com URLs to jsdelivr with @main
    converted = converted:gsub(
      "https://raw%.githubusercontent%.com/([^/]+)/([^/]+)/main/(.+)",
      "https://cdn.jsdelivr.net/gh/%1/%2@main/%3"
    )
    
    -- Step 2: Fix jsdelivr URLs missing @main (only if @ is not already present)
    converted = converted:gsub(
      "https://cdn%.jsdelivr%.net/gh/([^/]+)/([^/]+)/([^/]+)",
      function(user, repo, path)
        local fullMatch = "https://cdn.jsdelivr.net/gh/" .. user .. "/" .. repo .. "/" .. path
        -- If the URL already contains @, don't modify
        if fullMatch:find("@") then
          return fullMatch
        end
        -- Otherwise add @main/
        return "https://cdn.jsdelivr.net/gh/" .. user .. "/" .. repo .. "@main/" .. path
      end
    )
    
    -- Step 3: Convert gist.githubusercontent.com URLs
    converted = converted:gsub(
      "gist%.githubusercontent%.com",
      "gist.githack.com"
    )

    converted = converted:gsub(
      "cdn%.statically%.io/gist",
      "gist.githack.com"
    )

    converted = converted:gsub(
      "cdn%.statically%.io/gh/gist",
      "gist.githack.com"
    )
    
    return converted
end

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

                    local newCustomSongb = newCustomSongButton(tsongname) -- make the song button
                    local songbutton = newCustomSongb.button -- get the button
                    local delsongbutton = newCustomSongb.delbutton
                    local songframe = newCustomSongb.frame -- get the frame

                    local songCode = readfile(custom)

                    -- repair the script
                    if patchCustomSongScript(songCode) then
                        print("patched the song script urls")
                        writefile("TALENTLESS_CUSTOM_SONGS/" .. tsongname .. ".txt", patchCustomSongScript(songCode))
                    end

                    local songbpm = readfile(custom):match("bpm%s*=%s*(%d+)") or "error" -- read the file and look for the string after bpm =
                    print("songbpm found: " .. songbpm)

                    table.insert(customsongbuttons, {buttonFrame = songframe, bpm = songbpm, var = false, file = custom})

                    songframe.Visible = false -- since were not on custom songs tab yet

                    print("created song button for " .. tsongname)

                    songbutton.MouseButton1Click:Connect(
                        function()
                            print("clicked!")
                            
                            disable()
                            for _, entry in ipairs(customsongbuttons) do
                                if entry.buttonFrame == songframe then
                                    entry.var = true
                                end
                            end
                            
                            updateOptionsFrameButtons()

                            songname.Text = tsongname
                            bpmbox.Text = songbpm
                        end
                    )

                    -- del song function

                    local clickTime = 0.5
                    local lastClick = 0

                    delsongbutton.MouseButton1Click:Connect(
                        function()
                            local now = tick()
                            if now - lastClick <= clickTime then
                                -- double-click detected
                                print("double-click detected. deleting song...")
                                delfile(filepath) -- delete the file
                                songframe:Destroy()
                                for _, entry in ipairs(customsongbuttons) do
                                    if entry.buttonFrame == songframe then
                                        customsongbuttons[table.find(customsongbuttons, entry)] = nil
                                        break
                                    end
                                end
                                table.remove(addedCustoms, table.find(addedCustoms, filepath))
                                updatecustomcount()
                                playSound("18595195017", 0.5)
                                NotificationLibrary:SendNotification("Success", translateText("songdeleted"), 5)
                            else
                                -- Single-click detected
                                print("Single-click detected. Showing notification...")
                                playSound("18595195017", 0.5)
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

        for _, entry in ipairs(customsongbuttons) do
            local btn = entry.buttonFrame and entry.buttonFrame:FindFirstChildOfClass("TextButton") -- cust button itself (with text n stuff)
            if btn then
                table.insert(allSongNames, {button = entry.buttonFrame, name = btn.Text})
            end
        end

        for line in favSongsContent:gmatch("[^\r\n]+") do
            if line ~= "" and not table.find(addedFavsNames, line) then -- if its not been already added then
                for _, entry in ipairs(allSongNames) do
                    if entry.name == line then
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
                break
            end
        else
            if button.Text == name then
                table.remove(favsongbuttons, i)
                break
            end
        end
    end

    updateOptionsFrameButtons()
    updateFavs()
end

favSongButton.MouseButton1Click:Connect(function()
    for _, song in ipairs(songs) do
        if song.var == true then
            if not table.find(favsongbuttons, song.button) then
                favouriteSong(song.button.Text)
                updateFavs()
            else
                unfavouriteSong(song.button.Text)
                updateFavs()
            end
        end
    end
    
    for _, song in ipairs(customsongbuttons) do
        if song.var == true then
            if not table.find(favsongbuttons, song.buttonFrame) then
                favouriteSong(song.buttonFrame.button.Text)
                updateFavs()
            else
                unfavouriteSong(song.buttonFrame.button.Text)
                updateFavs()
            end
        end
    end

    updateOptionsFrameButtons()
end)

print([[



 __ __|   \     |      ____|   \  | __ __|  |      ____|   ___|   ___|
    |    _ \    |      __|      \ |    |    |      __|   \___ \ \___ \
    |   ___ \   |      |      |\  |    |    |      |           |      |
   _| _/    _\ _____| _____| _| \_|   _|   _____| _____| _____/ _____/



]])

print("Copyright (C) 2025 hellohellohell012321")

loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS/logger.lua", true))()
