local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/luke1for1/zenith/main/orionMobile')))()
local tweenService = game:GetService("TweenService")

-- anti afk

local virtualUser = game:GetService("VirtualUser")

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    virtualUser:CaptureController()
    virtualUser:ClickButton2(Vector2.new())
end)

local TeleportService = game:GetService("TeleportService")


local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

local username = Players.LocalPlayer.Name
local userId = Players.LocalPlayer.UserId


local highlights = {}
local espChamColor = Color3.fromRGB(255, 0, 0)
local espOutlineColor = Color3.fromRGB(255, 0, 0)
local esp = false
local totemESP = false

local Window = OrionLib:MakeWindow({
    Name = "Zenith | V1",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "zv12"
})

OrionLib:MakeNotification({
    Name = "Zenith Productions!",
    Content = "Successfully executed Zenith v1",
    Image = nil,
    Time = 5
})


--[[


$$$$$$$$\  $$$$$$\  $$$$$$$\   $$$$$$\  
\__$$  __|$$  __$$\ $$  __$$\ $$  __$$\ 
$$ |   $$ /  $$ |$$ |  $$ |$$ /  \__|
$$ |   $$$$$$$$ |$$$$$$$\ |\$$$$$$\  
$$ |   $$  __$$ |$$  __$$\  \____$$\ 
$$ |   $$ |  $$ |$$ |  $$ |$$\   $$ |
$$ |   $$ |  $$ |$$$$$$$  |\$$$$$$  |
\__|   \__|  \__|\_______/  \______/ 
                                        
                                                                        
--]]

local Combat = Window:MakeTab({
    Name = "Combat",
    Icon = nil,
    PremiumOnly = false
})

local Visual = Window:MakeTab({
    Name = "Visual",
    Icon = nil,
    PremiumOnly = false
})

local Player = Window:MakeTab({
    Name = "Player",
    Icon = nil,
    PremiumOnly = false
})

local Farming = Window:MakeTab({
    Name = "Farming",
    Icon = nil,
    PremiumOnly = false
})

--[[


$$\    $$\  $$$$$$\  $$$$$$$\  $$$$$$\  $$$$$$\  $$$$$$$\  $$\       $$$$$$$$\  $$$$$$\  
$$ |   $$ |$$  __$$\ $$  __$$\ \_$$  _|$$  __$$\ $$  __$$\ $$ |      $$  _____|$$  __$$\ 
$$ |   $$ |$$ /  $$ |$$ |  $$ |  $$ |  $$ /  $$ |$$ |  $$ |$$ |      $$ |      $$ /  \__|
\$$\  $$  |$$$$$$$$ |$$$$$$$  |  $$ |  $$$$$$$$ |$$$$$$$\ |$$ |      $$$$$\    \$$$$$$\  
\$$\$$  / $$  __$$ |$$  __$$<   $$ |  $$  __$$ |$$  __$$\ $$ |      $$  __|    \____$$\ 
\$$$  /  $$ |  $$ |$$ |  $$ |  $$ |  $$ |  $$ |$$ |  $$ |$$ |      $$ |      $$\   $$ |
\$  /   $$ |  $$ |$$ |  $$ |$$$$$$\ $$ |  $$ |$$$$$$$  |$$$$$$$$\ $$$$$$$$\ \$$$$$$  |
    \_/    \__|  \__|\__|  \__|\______|\__|  \__|\_______/ \________|\________| \______/ 
                                                                                        
                                                                                                                                                                        
--]]

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local pickupEverything = false
local pickupEverythingChest = false
local autoPickupGodSets = false

local function getPlayerCharacter()
    if LocalPlayer.Character then
        return LocalPlayer.Character
    end

    local character
    LocalPlayer.CharacterAdded:Wait()
    character = LocalPlayer.Character

    return character
end

local Packets = require(ReplicatedStorage.Modules.Packets)
local ItemData = require(ReplicatedStorage.Modules.ItemData)
local ItemIDS = require(ReplicatedStorage.Modules.ItemIDS)
local GameUtil = require(ReplicatedStorage.Modules.GameUtil)

local wwenabled = false
local wwspeed = 16
local autoPickupGold = false
local autoPickupCrystal = false

local wasteLeavesTo = 25
local autoleaves = false

local FarmingTweenSpeed = 10
local autoHarvestRange = 100

local autopickupcoins = false
local autoPickupItems_Enabled = false

local AutoPlant_Enabled = false
local AutoTeleport_Enabled = false
local AutoHarvest_Enabled = false
local onlyBushes = false
local autoGetChest = false

local SelectedFruits = {}
local PlayerFruits = {}

local SelectedFruit = nil
local wasteFruit = false
local wasteFruitTo = 10

local webhookSending = false
local fruitToSend = nil
local webhookUrl1 = nil
local webhookInterval = 10
local webhookInSeconds = (webhookInterval * 60)
local nodeAura = false

local autoheal_enabled = false
local autohealAt = 98
local autohealFruit = nil
local autoHealCPS = 50

local webhookSending = false
local webhookUrl1 = ""
local webhookInterval = 10
local webhookInSeconds = 600
local fruitToSend = ""
local lastFruitValue = 0
local startFruitValue = 0

local autoPickup = false
local selectedTeamColor = nil
local teamESP = false

local tps = {}
local tpenabled = false
local tptweenspeed = 19

local transportGold = false

local isGoldFarm = false

local BlacklistedItemsForFruits = {
    "Reinforced Chest",
    "Nest",
    "Fish Trap",
    "Chest",
    "Barley"
}

local goldFarm_Enabled = false
local autoCampfire_Enabled = false
local autoCoinPress_Enabled = false
local autoSmelt_Enabled = false
local autoPickupGold_Enabled = false

local onlyIcePos = {
    CFrame.new(946.4, 6.7, -1433.3),
    CFrame.new(912.2, 6.7, -1417.8),
    CFrame.new(919.9, 6.3, -1386.1),
    CFrame.new(964.4, 6.7, -1391.2),
}

local tpinverval = 10

--[[


$$$$$$$$\ $$\   $$\ $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
$$  _____|$$ |  $$ |$$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\ 
$$ |      $$ |  $$ |$$$$\ $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
$$$$$\    $$ |  $$ |$$ $$\$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\  
$$  __|   $$ |  $$ |$$ \$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\ 
$$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
$$ |      \$$$$$$  |$$ | \$$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
\__|       \______/ \__|  \__| \______/   \__|   \______| \______/ \__|  \__| \______/ 
                                                                                    
                                                                                    
                                                                                    
--]]

local list = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.RightPanel.Inventory.List

local function getValue(item)
    local list = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.RightPanel.Inventory.List
    for i, v in next, list:GetChildren() do
        if v.Name == item and v:FindFirstChild("QuantityImage") and v.QuantityImage:FindFirstChild("QuantityText") then
            local value = tonumber(v.QuantityImage.QuantityText.Text)
            return value
        end
    end
    return nil
end

local function sendWebhook()
    if webhookUrl1 and fruitToSend then
        local fruitValue = getValue(fruitToSend)
        if fruitValue then
            local difference = fruitValue - lastFruitValue
            if lastFruitValue == 0 then
                startFruitValue = fruitValue
                difference = 0
            end
            lastFruitValue = fruitValue

            local data = {
                ["embeds"] = {{
                    ["title"] = "Fruit Value Update",
                    ["description"] = string.format("You have **%d** **%ss**.", fruitValue, fruitToSend),
                    ["color"] = 3426654, 
                    ["fields"] = {
                        {
                            ["name"] = "Starting Amount",
                            ["value"] = tostring(startFruitValue),
                            ["inline"] = true
                        },
                        {
                            ["name"] = "Current Amount",
                            ["value"] = tostring(fruitValue),
                            ["inline"] = true
                        },
                        {
                            ["name"] = "Amount made in the last " .. webhookInterval .. " minutes:",
                            ["value"] = tostring(difference),
                            ["inline"] = true
                        }
                    },
                    ["footer"] = {
                        ["text"] = "Zenith Productions",
                        ["icon_url"] = ""  
                    },
                    ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
                }}
            }

            local response = request({
                Url = webhookUrl1,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = HttpService:JSONEncode(data)
            })

            if response.StatusCode ~= 200 then
                print("Webhook failed with status code: " .. response.StatusCode)
            end
        end
    end
end

local function startWebhookSending()
    spawn(function()
        while webhookSending do
            sendWebhook()
            wait(webhookInSeconds)
        end
    end)
end

local teamColors = {}

for _, team in ipairs(game:GetService("Teams"):GetChildren()) do
    table.insert(teamColors, team.TeamColor.Name)
end

local selectedTeamColor

local function testWebhook()
    if webhookUrl1 then
        local data = {
            ["embeds"] = {{
                ["title"] = "Test Webhook",
                ["description"] = "This is a test notification from Zenith.",
                ["color"] = 3426654, 
                ["fields"] = {
                    {
                        ["name"] = "Fruit",
                        ["value"] = "Fruit Name",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Value",
                        ["value"] = "Fruit Value",
                        ["inline"] = true
                    }
                },
                ["footer"] = {
                    ["text"] = "Zenith Productions",
                    ["icon_url"] = ""  
                },
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
            }}
        }

        local response = request({
            Url = webhookUrl1,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = HttpService:JSONEncode(data)
        })

        if response.StatusCode ~= 200 then
            print("Test webhook failed with status code: " .. response.StatusCode)
        else
            print("Test webhook sent successfully.")
        end
    end
end

local mt = getrawmetatable(game)
local oldIndex = mt.__index
setreadonly(mt, false)

mt.__index = function(t, k)
    if t:IsA("Humanoid") and k == "WalkSpeed" and wwenabled then
        return wwspeed
    end
    return oldIndex(t, k)
end

setreadonly(mt, true)

for Name, Data in next, ItemData do
    if Data.growthTime ~= nil and not table.find(BlacklistedItemsForFruits, Name) then
        table.insert(PlayerFruits, Name)
    end
end

table.sort(PlayerFruits, function(a, b)
    return ItemData[a].nourishment.health > ItemData[b].nourishment.health
end)

local params = RaycastParams.new()
params.FilterType = Enum.RaycastFilterType.Exclude
params.FilterDescendantsInstances = {LocalPlayer.Character}

local isrunning = false
local attackLoop

local function hit(parts)
    if parts and #parts > 0 then
        Packets.SwingTool.send(parts)
    else
    end
end

local allowedFruits = {}

for x, v in next, ItemData do
    if v.grows then
        table.insert(allowedFruits, x)
    end
end

local function PickUpChest(item)
    local eid = item:GetAttribute("EntityID")
    Packets.Pickup.send(eid)
end

local function GetIndex(name)
    for i,v in pairs(GameUtil.Data.inventory) do
        if v.name == name then
            return i
        end
    end
end

local function getHumanoidRootPart()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    return character:WaitForChild("HumanoidRootPart")
end

local function teamcheck(player)
    return (LocalPlayer.Neutral or LocalPlayer.Team.Name == "NoTribe" or LocalPlayer.Team ~= player.Team)
end

local function PickUpItem(item)
    local eid = item:GetAttribute("EntityID")
    if eid then
        Packets.Pickup.send(eid)
    end
end

local function getClosestChest()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 50)
    local nearestChest = nil
    local shortestDistance = math.huge

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == "Chest" then
            local distance = (Part.Position - characterPosition).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestChest = Part.Parent
            end
        end
    end

    if autoGetChest then
        if nearestChest then
        for i, v in ipairs(nearestChest:WaitForChild("Contents"):GetChildren()) do
            if v.Name == "Gold" then
                PickUpChest(v)
            end
        end
    end
    end

    return nearestChest
end


local allowedBushNames = {
    "Berry Bush",
    "Cloudberry Bush",
    "Bloodfruit Bush",
    "Sunfruit Bush",
    "Apple Tree",
    "Orange Tree",
    "Lemon Tree",
    "Banana Tree",
    "Sunfruit Bush",
    "Strawberry Bush",
    "Pear Cacti",
    "Carrot Plant Crop",
    "Bluefruit Bush",
    "Jelly Crop",
    "Oddberry Tree",
    "Strangefruit Tree",
    "Pumpkin Patch Crop"
}

function startAutoHit()
    if isrunning then return end
    isrunning = true
    attackLoop = coroutine.create(function()
        while isrunning do
            RunService.PostSimulation:Wait()
            if not autohit_enabled then
                break
            end
            local root = getHumanoidRootPart()
            if not root then
                continue
            end

            local attackparts = autoHit(root, autohit_range)
            for i, part in ipairs(attackparts) do

            end

            if #attackparts > 0 then
                hit(attackparts)
            else

            end
        end
    end)

    coroutine.resume(attackLoop)
end

function stopAutoHit()
    isrunning = false
    if attackLoop then
        coroutine.close(attackLoop)
        attackLoop = nil
    end
end

local function HasFruit(Box)
    return Box:FindFirstChild("Seed")
end

local function GetClosestBox()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Deployables = workspace:FindFirstChild("Deployables")
    if not Deployables then return nil end

    local Parts = Deployables:GetChildren()
    local Boxes = {}

    for _, Part in next, Parts do
        if Part.Name == "Plant Box" then
            local found = HasFruit(Part)
            
            if not found then
                local entityID = Part.Parent:GetAttribute("EntityID")
                if entityID then
                    table.insert(Boxes, {part = Part, entityID = entityID})
                else
                    table.insert(Boxes, Part)
                end
            end
        end
    end

    local Closest, LastDist = nil, math.huge

    for _, Box in next, Boxes do
        local Dist = (characterPosition - Box.Part:GetPivot().Position).Magnitude
        if Dist < LastDist then
            Closest = Box
            LastDist = Dist
        end
    end

    return Closest
end

local last_cast = 0
local AutoTeleportDistance = 150
local minDistance = 10

local function GetClosestBush()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, autoHarvestRange)
    local Bushes = {}

    for _, Part in next, Parts do
        if Part.Parent and table.find(allowedBushNames, Part.Parent.Name) then
            table.insert(Bushes, Part.Parent)
        end
    end

    local Closest, LastDist = nil, math.huge

    for _, Bush in next, Bushes do
        local Dist = (characterPosition - Bush:GetPivot().Position).Magnitude
        if Dist < LastDist then
            Closest = Bush
            LastDist = Dist
        end
    end

    return Closest
end

local function GetClosestBushes()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 35)
    local Bushes = {}

    for _, Part in ipairs(Parts) do
        if Part.Parent and table.find(allowedBushNames, Part.Parent.Name) then
            table.insert(Bushes, Part.Parent)
        end
    end

    table.sort(Bushes, function(a, b)
        local distA = (characterPosition - a:GetPivot().Position).Magnitude
        local distB = (characterPosition - b:GetPivot().Position).Magnitude
        return distA < distB
    end)

    return Bushes
end

local function GetRandomBush()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 150)
    local Bushes = {}

    task.wait()

    for _, Part in next, Parts do
        if Part.Parent and table.find(allowedBushNames, Part.Parent.Name) then
            table.insert(Bushes, Part.Parent)
        end
    end

    if #Bushes == 0 then
        return nil
    end

    local randomIndex = math.random(1, #Bushes)
    return Bushes[randomIndex]
end

local function swingTool(entityID)
    if entityID then
        Packets.SwingTool.send({entityID})
    end
end

local function getTargets(radius, targetName)
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, radius)
    local targets = {}

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == targetName then
            table.insert(targets, Part.Parent)
        end
    end

    return targets
end

local function GetNearestBush()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 250)
    local Bushes = {}

    for _, Part in next, Parts do
        local parentName = Part.Parent and Part.Parent.Name
        if parentName and table.find(allowedBushNames, parentName) then
            table.insert(Bushes, Part.Parent)
        end
    end

    if #Bushes == 0 then
        return nil
    end

    local nearestBush = nil
    local shortestDistance = math.huge

    for _, Bush in ipairs(Bushes) do
        local distance = (characterPosition - Bush:GetPivot().Position).Magnitude
        if distance < shortestDistance then
            nearestBush = Bush
            shortestDistance = distance
        end
    end

    return nearestBush
end

local function HasSeed(Box)
    return Box:FindFirstChild("Seed") ~= nil
end

local function CanMove(pos)
    local last_cast = 0
    if (os.clock() - last_cast) < 0.2 then
        return false
    end
    last_cast = os.clock()
    local cast = workspace:Raycast(LocalPlayer.Character:GetPivot().Position, (pos - LocalPlayer.Character:GetPivot().Position), params)
    return cast == nil
end

local function GetRandomTeleportBox()
    local Deployables = workspace:FindFirstChild("Deployables")
    if not Deployables then 
        return nil 
    end

    local PlantBoxes = {}
    for _, part in ipairs(Deployables:GetChildren()) do
        if part.Name == "Plant Box" then
            table.insert(PlantBoxes, part)
        end
    end

    if #PlantBoxes == 0 then
        return nil
    end

    local startTime = tick()
    while tick() - startTime < 5 do
        task.wait(0.1)
        for _, selectedBox in ipairs(PlantBoxes) do
            local characterPosition = LocalPlayer.Character:GetPivot().Position
            local boxPosition = selectedBox:GetPivot().Position
            local distance = (characterPosition - boxPosition).Magnitude

            if not HasSeed(selectedBox) and distance > 35 and distance < 180 and CanMove(boxPosition + Vector3.new(0, 4, 0)) then
                return selectedBox
            end
        end
    end

    local randomIndex = math.random(1, #PlantBoxes)
    return PlantBoxes[randomIndex]
end


local AutoFarmFruit = nil
local findPlantBoxNext = true

local function FindTeleportTarget()
    if findPlantBoxNext then
        local plantBox = GetRandomTeleportBox()
        findPlantBoxNext = false
        return plantBox
    else
        local randomBush = GetRandomBush()
        findPlantBoxNext = true 
        return randomBush
    end
end


local function addHighlights()
    local totems = game.Workspace.Totems:GetChildren()
    for _, totem in ipairs(totems) do
        if totem.Name == "Tribe Totem" then
            local colorationPart = totem:FindFirstChild("Coloration")
            if colorationPart and colorationPart:IsA("BasePart") then
                local highlight = Instance.new("Highlight")
                highlight.FillColor = colorationPart.Color
                highlight.FillTransparency = 0.5
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.OutlineTransparency = 0
                highlight.Parent = totem
                highlights[totem] = highlight
            end
        end
    end
end

local function removeHighlights()
    for totem, highlight in pairs(highlights) do
        if highlight then
            highlight:Destroy()
        end
    end
    highlights = {}
end

local function parseFruitInput(input)
    SelectedFruits = {}
    for fruit in string.gmatch(input, "([^,]+)") do
        fruit = fruit:gsub("^%s*(.-)%s*$", "%1")
        table.insert(SelectedFruits, fruit)
    end
end

local function GetClosestCoin()
    local closestCoin
    local minDistance = 15
    local maxDistance = 35
    local RootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local Items = game.Workspace:FindFirstChild("Items")

    if not RootPart or not Items then
        return nil
    end

    local PlayerPosition = RootPart.Position
    for _, item in pairs(Items:GetChildren()) do
        if (item:IsA("Model") or item:IsA("Part") or item:IsA("UnionOperation")) then

            if item.Name == "Coin2" then
            local ItemPosition = item:GetPivot().Position
            local Distance = (PlayerPosition - ItemPosition).Magnitude
            if Distance < maxDistance then
                minDistance = Distance
                closestCoin = item
            end
        end
        end
    end

    return closestCoin
end

local function getClosestResource(name)
    local characterPosition = Players.LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 10)
    local resources = {}

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == name and Part.Parent:FindFirstChild("Health") then
            if Part.Parent.Health ~= 0 then
            table.insert(resources, Part.Parent)
            end
        end
    end

    return resources
end

local function getClosestDroppedItem()
    local closestItem
    local minDistance = 15
    local maxDistance = 35
    local RootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local Items = game.Workspace:FindFirstChild("Items")

    if not RootPart or not Items then
        return nil
    end

    local PlayerPosition = RootPart.Position
    for _, item in pairs(Items:GetChildren()) do
        if (item:IsA("Model") or item:IsA("Part") or item:IsA("UnionOperation")) then

            local ItemPosition = item:GetPivot().Position
            local Distance = (PlayerPosition - ItemPosition).Magnitude
            if Distance < maxDistance then
                minDistance = Distance
                closestItem = item
            end
        end
    end

    return closestItem
end

local function getClosestDroppedGold()
    local closestItem
    local minDistance = 15
    local maxDistance = 35
    local RootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local Items = game.Workspace:FindFirstChild("Items")

    if not RootPart or not Items then
        return nil
    end

    local PlayerPosition = RootPart.Position
    for _, item in pairs(Items:GetChildren()) do
        if (item:IsA("Model") or item:IsA("Part") or item:IsA("UnionOperation")) then

            if item.Name == "Raw Gold" then
            local ItemPosition = item:GetPivot().Position
            local Distance = (PlayerPosition - ItemPosition).Magnitude
            if Distance < maxDistance then
                minDistance = Distance
                closestItem = item
            end
        end
        end
    end

    return closestItem
end

local function getClosestItem(name)
    local closestItem
    local minDistance = 1
    local maxDistance = 35
    local RootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local Items = game.Workspace:FindFirstChild("Items")

    if not RootPart or not Items then
        return nil
    end

    local PlayerPosition = RootPart.Position
    for _, item in pairs(Items:GetChildren()) do
        if (item:IsA("Model") or item:IsA("Part") or item:IsA("UnionOperation") or (item:IsA("MeshPart"))) then

            if item.Name == name then
            local ItemPosition = item:GetPivot().Position
            local Distance = (PlayerPosition - ItemPosition).Magnitude
            if Distance < maxDistance then
                minDistance = Distance
                closestItem = item
            end
        end
        end
    end

    return closestItem
end

local function getclosestdroppeditem()
    local closestItem
    local minDistance = 1
    local maxDistance = 35
    local RootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local Items = game.Workspace:FindFirstChild("Items")

    if not RootPart or not Items then
        return nil
    end

    local PlayerPosition = RootPart.Position
    for _, item in pairs(Items:GetChildren()) do
        if (item:IsA("Model") or item:IsA("Part") or item:IsA("UnionOperation") or (item:IsA("MeshPart"))) then
            local ItemPosition = item:GetPivot().Position
            local Distance = (PlayerPosition - ItemPosition).Magnitude
            if Distance < maxDistance then
                minDistance = Distance
                closestItem = item
            end
        end
    end

    return closestItem
end

local function autoPickupItems(itemType)
    local function getClosestItem(itemName)
        local closestItem = nil
        local minDistance = 15
        local maxDistance = 35
        local RootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local Items = game.Workspace:FindFirstChild("Items")

        if not RootPart or not Items then
            return nil
        end

        local PlayerPosition = RootPart.Position
        for _, item in pairs(Items:GetChildren()) do
            if item.Name == itemName and (item:IsA("Model") or item:IsA("Part") or item:IsA("UnionOperation")) then
                local ItemPosition = item:GetPivot().Position
                local Distance = (PlayerPosition - ItemPosition).Magnitude
                if Distance < maxDistance and Distance < minDistance then
                    minDistance = Distance
                    closestItem = item
                end
            end
        end

        return closestItem
    end

    while true do
        if itemType == 1 then
            local item = getClosestItem("Gold")
            if item then
                PickUpItem(item)
            end
        elseif itemType == 2 then
            local item = getClosestItem("Crystal Chunk")
            if item then
                PickUpItem(item)
            end
        elseif itemType == 3 then
            local item1 = getClosestItem("Gold")
            if item1 then
                PickUpItem(item1)
            end
            local item2 = getClosestItem("Crystal Chunk")
            if item2 then
                PickUpItem(item2)
            end
        end
        task.wait(0.01)
    end
end

local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = character:WaitForChild("HumanoidRootPart")

local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

local function getHumanoidRootPart()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    return character:WaitForChild("HumanoidRootPart")
end

local function GetClosestPress()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 35)
    local nearestPress = nil
    local shortestDistance = math.huge

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == "Coin Press" then
            local distance = (Part.Position - characterPosition).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestPress = Part.Parent
            end
        end
    end

    return nearestPress
end

local function dropGold(index)
    if index then
        Packets.DropBagItem.send(index)
    end
end

local function TogglenodeAura()
    while nodeAura and task.wait() do
        local iceChunks = getTargets(10, "Ice Chunk")
        local goldNodes = getTargets(10, "Gold Node")
        local allTargets = {}

        -- Combine ice chunks and gold nodes into one table
        for _, iceChunk in ipairs(iceChunks) do
            table.insert(allTargets, iceChunk)
        end
        for _, goldNode in ipairs(goldNodes) do
            table.insert(allTargets, goldNode)
        end

        -- Iterate over all targets and hit them
        for _, target in ipairs(allTargets) do
            if target and target:FindFirstChild("Health") then
                if target.Health.Value > 0 then
                    while target and target:FindFirstChild("Health") and target.Health.Value > 0 do
                        swingTool(target:GetAttribute("EntityID"))
                        task.wait(0.05)
                    end
                end
            end
        end
    end
end


local function getClosestCampfire()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 50)
    local nearestCampfire = nil
    local shortestDistance = math.huge

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == "Campfire" then
            local distance = (Part.Position - characterPosition).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestCampfire = Part.Parent
            end
        end
    end

    if nearestCampfire then
        local textLabel = nearestCampfire:FindFirstChild("Board")
            and nearestCampfire.Board:FindFirstChild("Billboard")
            and nearestCampfire.Board.Billboard:FindFirstChild("Backdrop")
            and nearestCampfire.Board.Billboard.Backdrop:FindFirstChild("TextLabel")

        if textLabel then
            local textValue = tonumber(textLabel.Text)
            if textValue and (textValue < 240 or textValue > 250) then
                return nearestCampfire
            end
        else
            return nearestCampfire
        end
    end
    return nil
end

local function getClosestCampfires()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 15)
    local campfires = {}

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == "Campfire" then
            local distance = (Part.Position - characterPosition).Magnitude
            table.insert(campfires, {campfire = Part.Parent, distance = distance})
        end
    end

    -- Sort campfires by distance
    table.sort(campfires, function(a, b)
        return a.distance < b.distance
    end)

    local closestCampfires = {}
    for i = 1, math.min(3, #campfires) do
        local campfire = campfires[i].campfire
        local textLabel = campfire:FindFirstChild("Board")
            and campfire.Board:FindFirstChild("Billboard")
            and campfire.Board.Billboard:FindFirstChild("Backdrop")
            and campfire.Board.Billboard.Backdrop:FindFirstChild("TextLabel")

        if textLabel then
            local textValue = tonumber(textLabel.Text)
            if textValue and (textValue < 240 or textValue > 250) then
                table.insert(closestCampfires, campfire)
            end
        else
            table.insert(closestCampfires, campfire)
        end

        if #closestCampfires >= 3 then
            break
        end
    end

    return closestCampfires
end

local function powerCampfires()
    local campfires = getClosestCampfires()

    for i, campfire in ipairs(campfires) do

        if autoCampfire_Enabled then
            task.wait(0.1)
            local value = getValue("Wood")

            if value == nil then value = 1 end

            if value >= 2 then
                if not campfires then
                    campfires = getClosestCampfires()
                end
            end
            local cid = campfire:GetAttribute("EntityID")

            if cid then

            Packets.InteractStructure.send({["entityID"] = cid, ["itemID"] = ItemIDS["Wood"]})
            end
        end
    end
end

--[[


$$$$$$\   $$$$$$\  $$\       $$$$$$$\        $$$$$$$$\  $$$$$$\  $$$$$$$\  $$\      $$\       $$$$$$$$\ $$\   $$\ $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\ 
$$  __$$\ $$  __$$\ $$ |      $$  __$$\       $$  _____|$$  __$$\ $$  __$$\ $$$\    $$$ |      $$  _____|$$ |  $$ |$$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |
$$ /  \__|$$ /  $$ |$$ |      $$ |  $$ |      $$ |      $$ /  $$ |$$ |  $$ |$$$$\  $$$$ |      $$ |      $$ |  $$ |$$$$\ $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |
$$ |$$$$\ $$ |  $$ |$$ |      $$ |  $$ |      $$$$$\    $$$$$$$$ |$$$$$$$  |$$\$$\$$ $$ |      $$$$$\    $$ |  $$ |$$ $$\$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |
$$ |\_$$ |$$ |  $$ |$$ |      $$ |  $$ |      $$  __|   $$  __$$ |$$  __$$< $$ \$$$  $$ |      $$  __|   $$ |  $$ |$$ \$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ |
$$ |  $$ |$$ |  $$ |$$ |      $$ |  $$ |      $$ |      $$ |  $$ |$$ |  $$ |$$ |\$  /$$ |      $$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |
\$$$$$$  | $$$$$$  |$$$$$$$$\ $$$$$$$  |      $$ |      $$ |  $$ |$$ |  $$ |$$ | \_/ $$ |      $$ |      \$$$$$$  |$$ | \$$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |
\______/  \______/ \________|\_______/       \__|      \__|  \__|\__|  \__|\__|     \__|      \__|       \______/ \__|  \__| \______/   \__|   \______| \______/ \__|  \__|
                                                                                                                                            
                                                                                                                                                                            
]]
local TweenService = game:GetService("TweenService")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local function GetClosestPress()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 50)
    local nearestCampfire = nil
    local shortestDistance = math.huge

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == "Coin Press" then
            local distance = (Part.Position - characterPosition).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestCampfire = Part.Parent
            end
        end
    end

    return nearestCampfire
end

local function getBox()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 35)
    local nearestCampfire = nil
    local shortestDistance = math.huge

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == "Plant Box" then
            local distance = (Part.Position - characterPosition).Magnitude
            local seed = Part.Parent:FindFirstChild("Seed")

            if not seed then
                if distance < shortestDistance then
                    shortestDistance = distance
                    nearestCampfire = Part.Parent
                end
            end
        end
    end

    return nearestCampfire
end

local function getTPBox()
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace:GetPartBoundsInRadius(characterPosition, 500)
    local nearestCampfire = nil
    local shortestDistance = math.huge

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == "Plant Box" then
            local distance = (Part.Position - characterPosition).Magnitude
            local seed = Part.Parent:FindFirstChild("Seed")

            if not seed then
                if distance < shortestDistance then
                    shortestDistance = distance
                    nearestCampfire = Part.Parent
                end
            end
        end
    end

    return nearestCampfire
end

local function getClosestDeployable(name)
    local characterPosition = LocalPlayer.Character:GetPivot().Position
    local Parts = workspace.Deployables:GetPartBoundsInRadius(characterPosition, 50)
    local nearestCampfire = nil
    local shortestDistance = math.huge

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and Part.Parent.Name == name then
            local distance = (Part.Position - characterPosition).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestCampfire = Part.Parent
            end
        end
    end

    return nearestCampfire
end

local findPlantBoxNext = true

local function FindTeleportTarget()
    if findPlantBoxNext then
        local plantBox = GetRandomTeleportBox()
        findPlantBoxNext = false
        return plantBox
    else
        local randomBush = GetRandomBush()
        findPlantBoxNext = true 
        return randomBush
    end
end

--[[


$$$$$$$$\  $$$$$$\  $$$$$$$\  $$\      $$\ $$$$$$\ $$\   $$\  $$$$$$\  
$$  _____|$$  __$$\ $$  __$$\ $$$\    $$$ |\_$$  _|$$$\  $$ |$$  __$$\ 
$$ |      $$ /  $$ |$$ |  $$ |$$$$\  $$$$ |  $$ |  $$$$\ $$ |$$ /  \__|
$$$$$\    $$$$$$$$ |$$$$$$$  |$$\$$\$$ $$ |  $$ |  $$ $$\$$ |$$ |$$$$\ 
$$  __|   $$  __$$ |$$  __$$< $$ \$$$  $$ |  $$ |  $$ \$$$$ |$$ |\_$$ |
$$ |      $$ |  $$ |$$ |  $$ |$$ |\$  /$$ |  $$ |  $$ |\$$$ |$$ |  $$ |
$$ |      $$ |  $$ |$$ |  $$ |$$ | \_/ $$ |$$$$$$\ $$ | \$$ |\$$$$$$  |
\__|      \__|  \__|\__|  \__|\__|     \__|\______|\__|  \__| \______/ 
                                                                    
                                                                                                                        
--]]

local Section = Farming:AddSection({
    Name = "Fruit Farm"
})

Farming:AddDropdown({
    Name = "Fruit",
    Default = "",
    Options = allowedFruits,
    Callback = function(Value)
        AutoFarmFruit = Value
    end    
})

local AutoFarm_Timer_Enabled = false

Farming:AddToggle({
    Name = "Auto Farm",
    Default = false,
    Callback = function(State)
        AutoTeleport_Enabled = State

        while AutoTeleport_Enabled do

            if onlyBushes then
                local target = GetNearestBush()
                task.wait()

                if target == nil then
                    task.wait(1) 
                    continue
                end
    
                local Speed = (LocalPlayer.Character:GetPivot().Position - target:GetPivot().Position).Magnitude / 18
                local TI = TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
                local Tween = game:GetService("TweenService"):Create(LocalPlayer.Character.PrimaryPart, TI, {CFrame = target:GetPivot() * CFrame.new(0, 4, 0)})
    
                Tween:Play()
                Tween.Completed:Wait()
            else
                local target = FindTeleportTarget()

                if target == nil then
                    task.wait(1) 
                    continue
                end
    
                local Speed = (LocalPlayer.Character:GetPivot().Position - target:GetPivot().Position).Magnitude / 18
                local TI = TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
                local Tween = game:GetService("TweenService"):Create(LocalPlayer.Character.PrimaryPart, TI, {CFrame = target:GetPivot() * CFrame.new(0, 4, 0)})
    
                Tween:Play()
                Tween.Completed:Wait()
    
                task.wait(0.1)
            end
        end
    end
})

local chunkPos = {
    Vector3.new(925.89, -3.00, -1392.63),
    Vector3.new(925.89, -3.00, -1392.63),
    Vector3.new(919.27, -0.94, -1416.45),
    Vector3.new(919.27, -0.94, -1416.45),
    Vector3.new(942.15, -2.36, -1426.72),
    Vector3.new(942.15, -2.36, -1426.72),
    Vector3.new(957.14, -3.00, -1393.31),
    Vector3.new(957.14, -3.00, -1393.31)
}

local Section = Farming:AddSection({
    Name = "Auto Farm Settings"
})

Farming:AddToggle({
    Name = "Auto Plant",
    Default = false,
    Callback = function(State)
        AutoPlant_Enabled = State
        spawn(function()
            local fruitIndex = 1
            while AutoPlant_Enabled do
                task.wait(0.1) 
                local Box = getBox()

                if not Box then
                    local Box = GetClosestBush()
                end

                if Box then
                    local e = Box:GetAttribute("EntityID")
                    if AutoFarmFruit then
                        Packets.InteractStructure.send({["entityID"] = e, ["itemID"] = ItemIDS[AutoFarmFruit]})
                    else
                        warn("no plant with the name of " .. AutoFarmFruit .. " was found.")
                    end
                end
            end
        end)
    end
})

Farming:AddToggle({
    Name = "Auto Harvest",
    Default = false,
    Save = true,
    Flag = "harvest",
    Callback = function(State)
        AutoHarvest_Enabled = State
        while AutoHarvest_Enabled do
            task.wait()
            local Bushes = GetClosestBushes()
            task.wait()
            for _, Bush in ipairs(Bushes) do
                if Bush then
                    PickUpItem(Bush)
                end
            end
        end
    end
})

--[[


$$\    $$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  $$\       
$$ |   $$ |\_$$  _|$$  __$$\ $$ |  $$ |$$  __$$\ $$ |      
$$ |   $$ |  $$ |  $$ /  \__|$$ |  $$ |$$ /  $$ |$$ |      
\$$\  $$  |  $$ |  \$$$$$$\  $$ |  $$ |$$$$$$$$ |$$ |      
\$$\$$  /   $$ |   \____$$\ $$ |  $$ |$$  __$$ |$$ |      
\$$$  /    $$ |  $$\   $$ |$$ |  $$ |$$ |  $$ |$$ |      
\$  /   $$$$$$\ \$$$$$$  |\$$$$$$  |$$ |  $$ |$$$$$$$$\ 
    \_/    \______| \______/  \______/ \__|  \__|\________|
                                                        
                                                                                                                
--]]


local Section = Visual:AddSection({
    Name = "Visual Settings"
})

Visual:AddColorpicker({
    Name = "ESP Fill Color",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        espChamColor = Value
    end
})

Visual:AddColorpicker({
    Name = "ESP Outline Color",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        espOutlineColor = Value
    end
})

Visual:AddToggle({
    Name = "Player ESP",
    Default = false,
    Callback = function(Value)
        esp = Value

        local function addHighlightPlayer(character)
            if not character:FindFirstChildOfClass("Highlight") then
                local highlight = Instance.new("Highlight", character)
                highlight.FillColor = espChamColor
                highlight.FillTransparency = 0.1
                highlight.OutlineColor = espOutlineColor
                highlight.OutlineTransparency = 0
            end
        end

        local function removeHighlightPlayer(character)
            local highlight = character:FindFirstChildOfClass("Highlight")
            if highlight then
                highlight:Destroy()
            end
        end

        for _, player in ipairs(Players:GetPlayers()) do
            local character = player.Character
            if character then
                if esp then
                    addHighlightPlayer(character)
                else
                    removeHighlightPlayer(character)
                end
            end
        end

        Players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function(character)
                if esp then
                    addHighlightPlayer(character)
                end
            end)
            if player.Character and esp then
                addHighlightPlayer(player.Character)
            end
        end)

        Players.PlayerRemoving:Connect(function(player)
            if player.Character then
                removeHighlightPlayer(player.Character)
            end
        end)
    end
})

Visual:AddToggle({
    Name = "Totem ESP",
    Default = false,
    Callback = function(Value)
        totemESP = Value
        if totemESP then
            addHighlights()
        else
            removeHighlights()
        end
    end
})

--[[


$$$$$$$\  $$\        $$$$$$\ $$\     $$\ $$$$$$$$\ $$$$$$$\  
$$  __$$\ $$ |      $$  __$$\\$$\   $$  |$$  _____|$$  __$$\ 
$$ |  $$ |$$ |      $$ /  $$ |\$$\ $$  / $$ |      $$ |  $$ |
$$$$$$$  |$$ |      $$$$$$$$ | \$$$$  /  $$$$$\    $$$$$$$  |
$$  ____/ $$ |      $$  __$$ |  \$$  /   $$  __|   $$  __$$< 
$$ |      $$ |      $$ |  $$ |   $$ |    $$ |      $$ |  $$ |
$$ |      $$$$$$$$\ $$ |  $$ |   $$ |    $$$$$$$$\ $$ |  $$ |
\__|      \________|\__|  \__|   \__|    \________|\__|  \__|
                                                            
                                                                                                                        
--]]

local function GetIndex(fruit)
    for i, v in pairs(GameUtil.Data.inventory) do
        if v.name == fruit then
            return i
        end
    end
end

local function startAutoHeal()
    spawn(function()
        while autoheal_enabled do
            local player = game.Players.LocalPlayer
            local health = player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health

            if health and health <= autohealAt then
                local fruitIndex = GetIndex(autohealFruit)
                if fruitIndex then
                    Packets.UseBagItem.send(fruitIndex)
                    task.wait(1 / autoHealCPS)
                end
            end

            task.wait()
        end
    end)
end

local Section = Player:AddSection({
    Name = "Player Settings"
})

Player:AddToggle({
    Name = "Auto Heal",
    Default = false,
    Callback = function(Value)
        autoheal_enabled = Value
        if Value then
            startAutoHeal()
        end
    end    
})

local Section = Player:AddSection({
    Name = "Auto Heal Settings"
})

Player:AddDropdown({
    Name = "Fruit",
    Default = "",
    Options = allowedFruits,
    Callback = function(Value)
        autohealFruit = Value
    end    
})

Player:AddSlider({
    Name = "Auto Heal At: ",
    Min = 1,
    Max = 100,
    Default = 98,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Health",
    Callback = function(Value)
        autohealAt = Value
    end    
})

Player:AddSlider({
    Name = "CPS",
    Min = 1,
    Max = 100,
    Default = 50,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "CPS",
    Callback = function(Value)
        autoHealCPS = Value
    end    
})

--[[Player:AddToggle({
    Name = "Auto Pick Up",
    Default = false,
    Callback = function(Value)
        autoPickup = Value
        spawn(function()
            while autoPickup do
                task.wait()
                local item = getClosestDroppedItem()

                PickUpItem(item)
            end
        end)
    end    
})--]]

--[[


 $$$$$$\   $$$$$$\  $$\      $$\ $$$$$$$\   $$$$$$\ $$$$$$$$\ 
$$  __$$\ $$  __$$\ $$$\    $$$ |$$  __$$\ $$  __$$\\__$$  __|
$$ /  \__|$$ /  $$ |$$$$\  $$$$ |$$ |  $$ |$$ /  $$ |  $$ |   
$$ |      $$ |  $$ |$$\$$\$$ $$ |$$$$$$$\ |$$$$$$$$ |  $$ |   
$$ |      $$ |  $$ |$$ \$$$  $$ |$$  __$$\ $$  __$$ |  $$ |   
$$ |  $$\ $$ |  $$ |$$ |\$  /$$ |$$ |  $$ |$$ |  $$ |  $$ |   
\$$$$$$  | $$$$$$  |$$ | \_/ $$ |$$$$$$$  |$$ |  $$ |  $$ |   
 \______/  \______/ \__|     \__|\_______/ \__|  \__|  \__|   
                                                              
                                                    
]]

local dep = workspace:WaitForChild("Deployables")
local cri = workspace:WaitForChild("Critters")
local res = workspace:WaitForChild("Resources")

local aus = false -- structures
local aur = false -- resoruces
local auc = false -- critters
local aup = false -- players
local legit = false -- animation or nah

local Section = Combat:AddSection({
    Name = "Auto Hit"
})

local animationId = "rbxassetid://10761451679"
local animation = Instance.new("Animation")
animation.AnimationId = animationId

Combat:AddToggle({
    Name = "Auto Hit Critters",
    Default = false,
    Save = true,
    Flag = "AutoHitCritters",
    Callback = function(State)
        auc = State
        if State then
            spawn(function()
                while auc do
                    task.wait(0.5)

                    local character = LocalPlayer.Character
                    if character then
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
                            local animationTrack = animator:LoadAnimation(animation)

                            local characterPosition = character:GetPivot().Position
                            local crittersFolder = workspace:FindFirstChild("Critters")
                            local entityIDs = {}

                            if crittersFolder then
                                for _, critter in ipairs(crittersFolder:GetChildren()) do
                                    if critter:IsA("Model") and (critter:GetPivot().Position - characterPosition).Magnitude <= 20 then
                                        local cid = critter:GetAttribute("EntityID")
                                        local health = critter:FindFirstChild("Health")

                                        if cid and health and health.Value > 0 then
                                            table.insert(entityIDs, cid)
                                        end
                                    end
                                end
                            end

                            if #entityIDs > 0 then
                                if legit then
                                    animationTrack:Play()
                                end
                                Packets.SwingTool.send(entityIDs)
                            end
                        end
                    end
                end
            end)
        end
    end
})

Combat:AddToggle({
    Name = "Auto Hit Structures",
    Default = false,
    Callback = function(State)
        aus = State
        if State then
            spawn(function()
                while aus do
                    task.wait(0.1)

                    local character = LocalPlayer.Character
                    if character then
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
                            local animationTrack = animator:LoadAnimation(animation)

                            local characterPosition = character:GetPivot().Position
                            local deployablesFolder = workspace:FindFirstChild("Deployables")
                            local entityIDs = {}

                            if deployablesFolder then
                                for _, deployable in ipairs(deployablesFolder:GetChildren()) do
                                    if deployable:IsA("Model") and (deployable:GetPivot().Position - characterPosition).Magnitude <= 20 then
                                        local cid = deployable:GetAttribute("EntityID")
                                        local health = deployable:FindFirstChild("Health")

                                        if cid and health and health.Value > 0 then
                                            table.insert(entityIDs, cid)
                                        end
                                    end
                                end
                            end

                            if #entityIDs > 0 then
                                if legit then
                                    animationTrack:Play()
                                end
                                Packets.SwingTool.send(entityIDs)
                            end
                        end
                    end
                end
            end)
        end
    end
})

Combat:AddToggle({
    Name = "Auto Hit Resources",
    Default = false,
    Callback = function(State)
        aur = State
        if State then
            spawn(function()
                while aur do
                    task.wait(0.1)

                    local character = LocalPlayer.Character
                    if character then
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
                            local animationTrack = animator:LoadAnimation(animation)

                            local characterPosition = character:GetPivot().Position
                            local resourcesFolder = workspace:FindFirstChild("Resources")
                            local entityIDs = {}

                            if resourcesFolder then
                                for _, resource in ipairs(resourcesFolder:GetChildren()) do
                                    if resource:IsA("Model") and (resource:GetPivot().Position - characterPosition).Magnitude <= 20 then
                                        local cid = resource:GetAttribute("EntityID")
                                        local health = resource:FindFirstChild("Health")

                                        if cid and health and health.Value > 0 then
                                            table.insert(entityIDs, cid)
                                        end
                                    end
                                end
                            end

                            if #entityIDs > 0 then
                                if legit then
                                    animationTrack:Play()
                                end
                                Packets.SwingTool.send(entityIDs)
                            end
                        end
                    end
                end
            end)
        end
    end
})

--[[Combat:AddToggle({
    Name = "Auto Hit Players",
    Default = false,
    Callback = function(State)
        aup = State
        if State then
            spawn(function()
                while aup do
                    task.wait(0.1)
                    local cids

                    local character = LocalPlayer.Character
                    if character then
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
                            local animationTrack = animator:LoadAnimation(animation)

                            local characterPosition = character:GetPivot().Position
                            local resourcesFolder = workspace:FindFirstChild("Players")
                            local entityIDs = {}

                            if resourcesFolder then
                                for _, resource in ipairs(resourcesFolder:GetChildren()) do
                                    if (resource:GetPivot().Position - characterPosition).Magnitude <= 20 and resource.Name ~= LocalPlayer.Name then
                                        cids = resource:GetAttribute("EntityID")
                                        local health = resource:FindFirstChild("Humanoid").Health

                                        if cid and health and health.Value > 0 then
                                        end
                                    end
                                end
                            end

                            if cids then
                                if legit then
                                    animationTrack:Play()
                                end
                                Packets.SwingTool.send(cids)
                            end
                        end
                    end
                end
            end)
        end
    end
})--]]


Combat:AddToggle({
    Name = "Legit",
    Default = false,
    Callback = function(State)
        legit = State
    end
})
