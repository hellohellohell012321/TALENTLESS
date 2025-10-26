-- Copyright (C) 2025 hellohellohell012321
-- Licensed under the GNU GPL v3. See LICENSE file for details.

local NotificationLibrary = loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS@main/notif_lib.lua"))()

local function playSound(soundId, loudness)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
    sound.Volume = loudness or 1  -- Default to full volume if no loudness is provided
    sound:Play()
end

local translator = loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/hellohellohell012321/TALENTLESS@main/translator.lua"))()

local function translateText(text)
    return translator:translateText(text) -- lang shouldve alr been set by main script.
end

-- Gui to Lua
-- Version: 3.2

-- Instances:

local addgui = Instance.new("ScreenGui")
local newsongframe = Instance.new("Frame")
local insertscript = Instance.new("TextBox")
local newsonglabel = Instance.new("TextLabel")
local cancelButton = Instance.new("TextButton")
local insertsongName = Instance.new("TextBox")
local submitSong = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")

--Properties:

addgui.Name = "addgui"
addgui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
addgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

newsongframe.Name = "newsongframe"
newsongframe.Parent = addgui
newsongframe.AnchorPoint = Vector2.new(0.5, 0.5)
newsongframe.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
newsongframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
newsongframe.BorderSizePixel = 0
newsongframe.Position = UDim2.new(0.5, 0, 0.5, 0)
newsongframe.Size = UDim2.new(0, 254, 0, 326)

insertscript.Name = "insertscript"
insertscript.Parent = newsongframe
insertscript.BackgroundColor3 = Color3.fromRGB(96, 102, 121)
insertscript.BorderColor3 = Color3.fromRGB(76, 82, 101)
insertscript.BorderSizePixel = 4
insertscript.LayoutOrder = 2
insertscript.Position = UDim2.new(0.0708699971, 0, 0.257669985, 0)
insertscript.Size = UDim2.new(0, 218, 0, 123)
insertscript.Font = Enum.Font.SourceSans
insertscript.PlaceholderText = translateText("custom song instructions")
insertscript.Text = ""
insertscript.TextColor3 = Color3.fromRGB(255, 255, 255)
insertscript.TextSize = 14.000
insertscript.TextWrapped = true

newsonglabel.Name = "newsonglabel"
newsonglabel.Parent = newsongframe
newsonglabel.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
newsonglabel.BorderColor3 = Color3.fromRGB(64, 68, 90)
newsonglabel.BorderSizePixel = 4
newsonglabel.LayoutOrder = 1
newsonglabel.Position = UDim2.new(0.0708699971, 0, 0.0552100018, 0)
newsonglabel.Size = UDim2.new(0, 218, 0, 50)
newsonglabel.Font = Enum.Font.SourceSansBold
newsonglabel.Text = translateText("insert song script")
newsonglabel.TextColor3 = Color3.fromRGB(255, 255, 255)
newsonglabel.TextScaled = true
newsonglabel.TextWrapped = true

cancelButton.Name = "cancelButton"
cancelButton.Parent = newsonglabel
cancelButton.AnchorPoint = Vector2.new(1, 0)
cancelButton.BackgroundColor3 = Color3.fromRGB(170, 85, 85)
cancelButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
cancelButton.Position = UDim2.new(1.10091746, 10, -0.400000006, -10)
cancelButton.Size = UDim2.new(0, 40, 0, 40)
cancelButton.Font = Enum.Font.SourceSansBold
cancelButton.Text = "X"
cancelButton.TextColor3 = Color3.fromRGB(255, 255, 255)
cancelButton.TextSize = 45.000

insertsongName.Name = "insertsongName"
insertsongName.Parent = newsongframe
insertsongName.BackgroundColor3 = Color3.fromRGB(96, 102, 121)
insertsongName.BorderColor3 = Color3.fromRGB(64, 68, 90)
insertsongName.BorderSizePixel = 4
insertsongName.LayoutOrder = 3
insertsongName.Position = UDim2.new(0.0708699971, 0, 0.69325, 0)
insertsongName.Size = UDim2.new(0, 218, 0, 32)
insertsongName.Font = Enum.Font.SourceSans
insertsongName.PlaceholderText = translateText("song name prompt")
insertsongName.Text = ""
insertsongName.TextColor3 = Color3.fromRGB(255, 255, 255)
insertsongName.TextSize = 20
insertsongName.TextWrapped = true

submitSong.Name = "submitSong"
submitSong.Parent = newsongframe
submitSong.BackgroundColor3 = Color3.fromRGB(85, 170, 85)
submitSong.BorderColor3 = Color3.fromRGB(0, 0, 0)
submitSong.BorderSizePixel = 0
submitSong.LayoutOrder = 4
submitSong.Position = UDim2.new(0.0708699971, 0, 0.834360003, 0)
submitSong.Size = UDim2.new(0, 218, 0, 41)
submitSong.Font = Enum.Font.SourceSansBold
submitSong.Text = translateText("submit")
submitSong.TextColor3 = Color3.fromRGB(255, 255, 255)
submitSong.TextSize = 43.000

UIListLayout.Parent = newsongframe
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 15)

-- drag script (not mince)



local UserInputService = game:GetService("UserInputService")

local gui = newsongframe

local dragging
local dragInput
local dragStart
local startPos
	
local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
	
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
	
gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
	
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
end
end)



-- Function for the cancel button (closes the popup)
cancelButton.MouseButton1Click:Connect(function()
    newsongframe.Visible = false
end)


-- Function for the submit button (gets the script and song name)
submitSong.MouseButton1Click:Connect(function()
    local scriptInput = insertscript.Text
    local songName = insertsongName.Text
    
    local folderExists = false
    
for _, file in ipairs(listfiles("")) do
    if string.match(tostring(file), "TALENTLESS_CUSTOM_SONGS") then folderExists = true
    end
end

if not folderExists then
    print("making custom songs folder")
    makefolder("TALENTLESS_CUSTOM_SONGS")
    print("created custom song folder")
end

songexists = false

for _, file in ipairs(listfiles([[./TALENTLESS_CUSTOM_SONGS]])) do
    print(tostring(file))
	if string.find(tostring(file), songName .. ".txt") then -- if there is already a file with songname.txt in it then
        playSound("6493287948", 0.1) 
        NotificationLibrary:SendNotification("Error", translateText("songnameexists"), 3)
        songexists = true -- song does exist
        print("found a song file with the same name.")
        break
    end
end

if not songexists then
    writefile("TALENTLESS_CUSTOM_SONGS/" .. songName .. ".txt", scriptInput) -- write the file in the song folder as a .txt
    playSound("6493287948", 0.1) 
    NotificationLibrary:SendNotification("Success", string.format(translateText("songadded"), songName), 10)
    insertscript.Text = ""
    insertsongName.Text = ""
end

wait(0.5)

updateSongs()

end)
