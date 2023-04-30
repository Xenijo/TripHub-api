local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local services = {
    Workspace = game:GetService("Workspace"),
    ReplicatedStorage = game:GetService("ReplicatedStorage"),
    ServerStorage = game:GetService("ServerStorage"),
    Lighting = game:GetService("Lighting"),
    Players = game:GetService("Players"),
    StarterPlayer = game:GetService("StarterPlayer"),
    StarterPack = game:GetService("StarterPack"),
    SoundService = game:GetService("SoundService"),
    HttpService = game:GetService("HttpService"),
    RunService = game:GetService("RunService"),
    UserInputService = game:GetService("UserInputService"),
    ContextActionService = game:GetService("ContextActionService"),
    MarketplaceService = game:GetService("MarketplaceService"),
    TeleportService = game:GetService("TeleportService"),
    InsertService = game:GetService("InsertService"),
    ContentProvider = game:GetService("ContentProvider"),
    LocalizationService = game:GetService("LocalizationService"),
    PathfindingService = game:GetService("PathfindingService"),
    GroupService = game:GetService("GroupService"),
    AnalyticsService = game:GetService("AnalyticsService"),
    DataStoreService = game:GetService("DataStoreService"),
    MessagingService = game:GetService("MessagingService"),
    PhysicsService = game:GetService("PhysicsService"),
    ReplicatedFirst = game:GetService("ReplicatedFirst"),
    TextService = game:GetService("TextService"),
    TweenService = game:GetService("TweenService"),
}

local Api = {}

for name, service in pairs(services) do
    Api[name] = service
end

function Api:Button(section,string,info,callback)
    section:NewButton(string or "button",info or "nil", function()
    callback or "nil"
end)
    end

return Api
