-- this only sends your username and your game to my private webhook so i can keep track of executions. read the code before accusing me of stealing ips or some shit

repeat wait() until game:IsLoaded()

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer

-- Get the place info (defaults to asset info)
local placeInfo = MarketplaceService:GetProductInfo(game.PlaceId) -- no Enum needed
local gameName = placeInfo.Name

-- Username & quick join
local username = player.Name
local displayName = player.DisplayName
local jobId = game.JobId

local function sendWebhookMessage(gameName, username, joinLink)
    local joinCode = 'game:GetService("TeleportService"):TeleportToPlaceInstance(' .. game.PlaceId .. ', "' .. game.JobId .. '", game.Players.LocalPlayer)'
    local avatarUrl = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"

    local data = {
        content = "",
        embeds = {{
            title = "(＃＞＜) *someone executed our script!*",
            color = 16711935,
            fields = {
                { name = "**(・ω・) username**", value = username .. "(" .. displayName .. ")", inline = true },
                { name = "**(≧◡≦) game**", value = gameName, inline = true },
                { name = "**(=^･ω･^=) executor**", value = identifyexecutor(), inline = true },
                { name = "**(＾• ω •＾) join code**", value = "```lua\n" .. joinCode .. "\n```", inline = false },
            },
            thumbnail = {
                url = avatarUrl
            },
            footer = { text = "stxllar scripts" },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }}
    }

    local jsonData = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["Content-Type"] = "application/json" }
    local request = request or http_request or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request) or HttpPost

    request({
        Url = "https://webhook-api-six.vercel.app/api/webhook",
        Method = "POST",
        Headers = headers,
        Body = jsonData
    })
end


-- Send webhook after a short delay
delay(1, function()
    sendWebhookMessage(gameName, username, joinLink)
    print("(ﾉ◕ヮ◕)ﾉ STXLLAR webhook sent! ヽ(◕ヮ◕ヽ)")
end)
