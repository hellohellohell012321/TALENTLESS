repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local HttpService = game:GetService("HttpService")

local player = Players.LocalPlayer
local placeInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local gameName = placeInfo.Name

local username = player.Name
local displayName = player.DisplayName
local joinCode = 'game:GetService("TeleportService"):TeleportToPlaceInstance(' .. game.PlaceId .. ', "' .. game.JobId .. '", game.Players.LocalPlayer)'

-- Get avatar headshot from Roblox Thumbnails API
local thumbApi = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. player.UserId .. "&size=420x420&format=Png&isCircular=false"
local thumbRes = request({
    Url = thumbApi,
    Method = "GET"
})
local avatarUrl = HttpService:JSONDecode(thumbRes.Body).data[1].imageUrl

-- Build Discord embed
local data = {
    content = "",
    embeds = {{
        title = "(＃＞＜) *someone executed our script!*",
        color = 16711935,
        fields = {
            { name = "**(・ω・) username**", value = username .. " (" .. displayName .. ")", inline = true },
            { name = "**(≧◡≦) game**", value = gameName, inline = true },
            { name = "**(=^･ω･^=) executor**", value = identifyexecutor(), inline = true },
            { name = "**(＾• ω •＾) join code**", value = "```lua\n" .. joinCode .. "\n```", inline = false },
        },
        thumbnail = { url = avatarUrl },
        footer = { text = "stxllar scripts" },
        timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
    }}
}

local jsonData = HttpService:JSONEncode(data)

-- Send webhook
request({
    Url = "https://webhook-api-six.vercel.app/api/webhook",
    Method = "POST",
    Headers = { ["Content-Type"] = "application/json" },
    Body = jsonData
})

