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

local Farming = Window:MakeTab({
    Name = "Farming",
    Icon = nil,
    PremiumOnly = false
})

local Player = Window:MakeTab({
    Name = "Player",
    Icon = nil,
    PremiumOnly = false
})

local Misc = Window:MakeTab({
    Name = "Miscellaneous",
    Icon = nil,
    PremiumOnly = false
})

local Teleports = Window:MakeTab({
    Name = "Teleports",
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
local AutoTeleportDistance = 500
local autoHarvestRange = 100

local autopickupcoins = false
local autoPickupItems_Enabled = false

local onlyIce = false

local AutoPlant_Enabled = false
local AutoTeleport_Enabled = false
local AutoHarvest_Enabled = false
local onlyBushes = false
local autoGetChest = false

local SelectedFruits = {}
local PlayerFruits = {}

local autohit_players = false
local autohit_resources = false
local autohit_buildings = false
local autohit_critters = false

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
local autohealTo = 100
local autohealAt = 98
local autohealFruit = nil
local autoHealCPS = 50

local webhookSending = false
local webhookInterval = 10
local webhookInSeconds = 600
local fruitToSend = nil
local lastFruitValue = 0
local startFruitValue = 0

local autoPickup = false
local selectedTeamColor = nil
local teamESP = false

local tps = {}
local tpenabled = false
local tptweenspeed = 18.5
local showPoints = false

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

local function canMoveToPosition(startPos, endPos)
    local rayDirection = (endPos - startPos).Unit * (endPos - startPos).Magnitude
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    local raycastResult = workspace:Raycast(startPos, rayDirection, raycastParams)
    return raycastResult == nil, raycastResult
end

local function facePlayerTo(position)
    local character = LocalPlayer.Character
    if not character then return end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end

    local lookAt = CFrame.lookAt(humanoidRootPart.Position, position)
    humanoidRootPart.CFrame = lookAt
end

local function adjustCameraToPosition(position)
    local Camera = workspace.CurrentCamera
    Camera.CFrame = CFrame.lookAt(Camera.CFrame.Position, position)
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

local function ggetTargets(radius)
    local characterPosition = LocalPlayer.Character:GetPivot().Position

    local Parts = {}
    local success, err = pcall(function()
        Parts = workspace:GetPartBoundsInRadius(characterPosition, radius)
    end)

    local targets = {}

    for _, Part in ipairs(Parts) do
        if Part.Parent and Part.Parent:IsA("Model") and (Part.Name == "Gold Node" or Part.Name == "Ice Chunk") then
            local health = Part:FindFirstChild("Health")
            if health and health.Value > 0 then
                table.insert(targets, Part.Parent)
            end
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

local function autoHit(targetName1, targetName2)
    local targets1 = getTargets(15, targetName1)
    local allTargets = {}

    for _, target in ipairs(targets1) do
        table.insert(allTargets, target)
    end

    if targetName2 then
        local targets2 = getTargets(15, targetName2)
        for _, target in ipairs(targets2) do
            table.insert(allTargets, target)
        end
    end

    for _, target in ipairs(allTargets) do
        if target and target:FindFirstChild("Health") and target.Health.Value > 0 then
            while target and target:FindFirstChild("Health") and target.Health.Value > 0 do
                swingTool(target:GetAttribute("EntityID"))
                task.wait(0.1)
            end
        end
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

Farming:AddTextbox({
    Name = "Fruits",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        parseFruitInput(Value)
    end
})

local canPlant = false

Farming:AddToggle({
    Name = "Auto Farm",
    Default = false,
    Callback = function(State)
        AutoTeleport_Enabled = State

        while AutoTeleport_Enabled do
            local target = nil

            if onlyBushes then
                target = GetNearestBush()
            else
                target = getTPBox()

                if target == nil then
                    target = GetNearestBush()
                end
            end

            if target then
                local playerPivot = LocalPlayer.Character:GetPivot()
                local targetPivot = target:GetPivot()
                local distance = (playerPivot.Position - targetPivot.Position).Magnitude
                local speed = distance / FarmingTweenSpeed

                local TI = TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
                local Tween = game:GetService("TweenService"):Create(LocalPlayer.Character.PrimaryPart, TI, {CFrame = targetPivot * CFrame.new(0, 4.2, 0)})

                Tween:Play()
                Tween.Completed:Wait()
            else
                task.wait(1)
            end
        end
    end
})

local test = false

local nodePos = {
    Vector3.new(894.00, -3.00, -1402.68),
    Vector3.new(917.33, -3.00, -1391.92),
    Vector3.new(916.58, -0.86, -1415.16),
    Vector3.new(943.14, -2.26, -1429.11),
    Vector3.new(958.85, -3.00, -1391.93),
    Vector3.new(780.21, -3.00, -1101.09),
    Vector3.new(588.18, -3.00, -772.59),
    Vector3.new(445.04, -7.42, -497.94),
    Vector3.new(483.49, -2.90, -438.02),
    Vector3.new(520.68, -3.03, -388.54),
    Vector3.new(534.86, -0.99, -388.02),
    Vector3.new(544.59, 9.67, -380.94),
    Vector3.new(550.96, 11.12, -393.78),
    Vector3.new(574.51, 6.19, -388.86),
    Vector3.new(598.62, -4.23, -386.41),
    Vector3.new(611.17, -7.02, -384.02),
    Vector3.new(636.21, -7.10, -374.31),
    Vector3.new(621.41, -7.44, -361.21),
    Vector3.new(609.70, -7.42, -355.66),
    Vector3.new(594.32, -7.03, -375.96),
    Vector3.new(584.56, 2.34, -392.14),
    Vector3.new(580.88, 9.37, -399.17),
    Vector3.new(558.62, 12.23, -397.04),
    Vector3.new(575.41, 18.17, -363.37),
    Vector3.new(583.69, 14.04, -344.71),
    Vector3.new(593.46, 31.34, -334.29),
    Vector3.new(604.47, 37.32, -318.92),
    Vector3.new(620.82, 40.19, -311.77),
    Vector3.new(632.16, 37.66, -286.68),
    Vector3.new(637.21, 44.68, -280.20),
    Vector3.new(641.24, 49.50, -269.42),
    Vector3.new(629.15, 57.35, -247.33),
    Vector3.new(625.54, 49.44, -215.04),
    Vector3.new(622.66, 42.97, -200.31),
    Vector3.new(622.13, 31.71, -186.83),
    Vector3.new(641.39, 31.32, -181.11),
    Vector3.new(662.34, 33.34, -187.67),
    Vector3.new(656.50, 27.84, -168.87),
    Vector3.new(660.98, 15.72, -158.18),
    Vector3.new(659.13, -0.44, -144.13),
    Vector3.new(644.40, -3.57, -135.26),
    Vector3.new(625.09, -3.03, -135.85),
    Vector3.new(548.05, -3.00, 147.67),
    Vector3.new(525.42, 3.38, 160.58),
    Vector3.new(517.25, 12.36, 173.69),
    Vector3.new(508.18, 12.58, 187.85),
    Vector3.new(469.19, 16.09, 150.88),
    Vector3.new(492.52, 13.61, 170.42),
    Vector3.new(467.93, 11.58, 231.23),
    Vector3.new(456.22, 10.26, 229.42),
    Vector3.new(445.70, -3.34, 226.41),
    Vector3.new(393.31, -3.00, 174.45),
    Vector3.new(351.81, -3.02, 139.56),
    Vector3.new(263.56, -3.00, 44.97),
    Vector3.new(263.24, -3.00, 34.31),
    Vector3.new(254.15, -2.50, -120.40),
    Vector3.new(263.14, -3.00, -337.51),
    Vector3.new(367.89, -3.00, -748.23),
    Vector3.new(411.89, -3.17, -806.80),
    Vector3.new(508.15, -2.73, -924.08)
}



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
    Name = "Only Go For Bushes",
    Default = false,
    Callback = function(State)
        onlyBushes = State
    end
})

Farming:AddToggle({
    Name = "Auto Plant",
    Default = false,
    Callback = function(State)
        AutoPlant_Enabled = State
        spawn(function()
            local fruitIndex = 1
            while AutoPlant_Enabled do
                task.wait() 
                local Box = getBox()

                if not Box then
                    local Box = GetClosestBush()
                end

                if Box and #SelectedFruits > 0 then
                    canPlant = true
                    local e = Box:GetAttribute("EntityID")
                    local fruit = SelectedFruits[fruitIndex]
                    if ItemIDS[fruit] then
                        Packets.InteractStructure.send({["entityID"] = e, ["itemID"] = ItemIDS[fruit]})
                        fruitIndex = fruitIndex + 1
                        if fruitIndex > #SelectedFruits then
                            fruitIndex = 1
                        end
                    else
                        warn("no plant with the name of " .. fruit .. " was found.")
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


Farming:AddSlider({
    Name = "Tween Speed",
    Min = 0,
    Max = 40,
    Default = 10,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 0.1,
    ValueName = "studs/sec",
    Callback = function(Value)
        FarmingTweenSpeed = Value
    end
})

local Section = Farming:AddSection({
    Name = "Gold Farm"
})

local function TweenToPosition(position)
    local character = Players.LocalPlayer.Character
    if not character then return end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end

    local tweenInfo = TweenInfo.new((humanoidRootPart.Position - position).Magnitude / tptweenspeed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = CFrame.new(position)})
    tween:Play()
    tween.Completed:Wait()
end

local function allResourcesDepleted(resources)
    for _, resource in ipairs(resources) do
        local health = resource:FindFirstChild("Health")
        if health and health.Value > 0 then
            return false
        end
    end
    return true
end

local picka = false

local function test()
    while true do
        task.wait()
        while test do
            for _, pos in ipairs(nodePos) do
                if not test then break end
                TweenToPosition(pos)
                task.wait()
                if not test then break end
                local iceChunks = getClosestResource("Ice Chunk")
                local goldNodes = getClosestResource("Gold Node")


                local allDepleted = false
                while not allDepleted do
                    if not test then break end
                    allDepleted = true
                    for _, resource in ipairs(iceChunks) do
                        if not test then break end
                        local cid = resource:GetAttribute("EntityID")
                        if not test then break end
                        local health = resource:FindFirstChild("Health")
                        if health and health.Value > 0 then
                            swingTool(cid)
                            allDepleted = false
                            break
                        end
                    end

                    for _, resource in ipairs(goldNodes) do
                        if not test then break end
                        local cid = resource:GetAttribute("EntityID")
                        local health = resource:FindFirstChild("Health")
                        
                        if health and health.Value > 0 then
                            swingTool(cid)
                            allDepleted = false
                            break
                        end
                    end

                    task.wait()
                    if not test then break end
                end

            end

            local rawGoldValue = getValue("Raw Gold")

            if rawGoldValue then
                for i = 1, rawGoldValue do
                    picka = not picka

                    task.wait(0.05) 
                    local index = GetIndex("Raw Gold")
                    if index then
                        Packets.DropBagItem.send(index)
                    end
                end
            
                task.wait(10)
                picka = not picka
            end
        end
    end
end

local function goldFarm()
    while true do
        task.wait(0.01)
        while isGoldFarm do
            for _, pos in ipairs(chunkPos) do
                if not isGoldFarm then break end
                TweenToPosition(pos)
                task.wait(0.1)
                if not isGoldFarm then break end
                local iceChunks = getClosestResource("Ice Chunk")
                local goldNodes = getClosestResource("Gold Node")


                local allDepleted = false
                while not allDepleted do
                    if not isGoldFarm then break end
                    allDepleted = true
                    for _, resource in ipairs(iceChunks) do
                        if not isGoldFarm then break end
                        local cid = resource:GetAttribute("EntityID")
                        if not isGoldFarm then break end
                        local health = resource:FindFirstChild("Health")
                        if health and health.Value > 0 then
                            swingTool(cid)
                            allDepleted = false
                            break
                        end
                    end

                    for _, resource in ipairs(goldNodes) do
                        if not isGoldFarm then break end
                        local cid = resource:GetAttribute("EntityID")
                        local health = resource:FindFirstChild("Health")
                        
                        if health and health.Value > 0 then
                            swingTool(cid)
                            allDepleted = false
                            break
                        end
                    end

                    task.wait(0.1)
                    if not isGoldFarm then break end
                end
            end
            task.wait(210)
        end
    end
end

spawn(goldFarm)
spawn(test)

Farming:AddToggle({
    Name = "Gold Farm",
    Default = false,
    Save = true,
    Flag = "campfire",
    Callback = function(State)
        isGoldFarm = State
    end
})

Farming:AddToggle({
    Name = "Gold Farm Test",
    Default = false,
    Save = true,
    Flag = "campfire",
    Callback = function(State)
        test = State
    end
})

local Section = Farming:AddSection({
    Name = "Settings"
})

local function powerCampfires()
    while true do
        task.wait(1)
        while autoCampfire_Enabled do
            local character = LocalPlayer.Character
            if character then
                local characterPosition = character:GetPivot().Position
                local parts = workspace:GetPartBoundsInRadius(characterPosition, 20)

                local campfireIds = {}
                for _, part in ipairs(parts) do
                    if part.Parent and part.Parent:IsA("Model") and part.Parent.Name == "Campfire" then
                        local cid = part.Parent:GetAttribute("EntityID")
                        if cid and not campfireIds[cid] then
                            Packets.InteractStructure.send({["entityID"] = cid, ["itemID"] = ItemIDS["Wood"]})
                            campfireIds[cid] = true
                        end
                    end
                end
            end
            task.wait(20)
        end
    end
end

spawn(powerCampfires)

Farming:AddToggle({
    Name = "Auto Campfire (USES STICKS)",
    Default = false,
    Save = true,
    Flag = "campfire",
    Callback = function(State)
        autoCampfire_Enabled = State
    end
})

Farming:AddToggle({
    Name = "Transport Gold To Chest",
    Default = false,
    Save = true,
    Flag = "tpGold",
    Callback = function(State)
        transportGold = State
        
        spawn(function()
            while transportGold do
                local chest = getClosestChest()
                local item = getClosestItem("Raw Gold")

                if item and chest then
                    local entityID = item:GetAttribute("EntityID")
                    local chestpos = chest:GetPivot().Position + Vector3.new(0, 2, 0)

                    if entityID and item then
                        Packets.ForceInteract.send(entityID)
                        task.wait()
                        item.Position = chestpos
                        task.wait()
                        Packets.ForceInteract.send()
                    end
                end
                task.wait(0.1)
            end
        end)
    end
})

spawn(autoCampfire)

local function autoCoinPressLoop()
    while true do
        if autoCoinPress_Enabled then
            local v = getValue("Gold")
            if v and v > 1 then
                task.wait(0.01) 
                local press = GetClosestPress()
                if press then
                    task.wait(0.01) 
                    local pressid = press:GetAttribute("EntityID")
                    Packets.InteractStructure.send({["entityID"] = pressid, ["itemID"] = ItemIDS["Gold"]})
                end
            end
        end
        task.wait()
    end
end

spawn(autoCoinPressLoop)

Farming:AddToggle({
    Name = "Auto Coin Press",
    Default = false,
    Save = true,
    Flag = "coinPress",
    Callback = function(State)
        autoCoinPress_Enabled = State
    end
})
Farming:AddToggle({
    Name = "Auto Pickup Coins",
    Default = false,
    Callback = function(State)
        autopickupcoins = State
        
        spawn(function()
            while autopickupcoins do
                task.wait()
                local item = GetClosestCoin()
                if item then
                    PickUpItem(item)
                end
            end
        end)
    end
})

local function autoPickupItemsLoop()
    while true do
        if autoPickupItems_Enabled then
            local item = getClosestDroppedGold()
            if item then
                PickUpItem(item)
            end
        end
        task.wait() 
    end
end

Farming:AddToggle({
    Name = "Auto Pickup Gold (from chest)",
    Default = false,
    Save = true,
    Flag = "goldFromChest",
    Callback = function(State)
        autoGetChest = State
        spawn(function()
            while autoGetChest do
                task.wait()
                getClosestChest()
            end
        end)
    end
})

Farming:AddToggle({
    Name = "Pick Up Raw Gold",
    Default = false,
    Callback = function(State)
        picka = State
        if State then
            spawn(function()
                while picka do
                    task.wait(0.1)
                    local item = getClosestItem("Raw Gold")

                    if item then
                       PickUpItem(item)
                    end
                end
            end)
        end
    end
})

local aura = false

Farming:AddToggle({
    Name = "Node Aura",
    Default = false,
    Callback = function(State)
        picka = State
        nodeAura = State
spawn(TogglenodeAura)
    end
})

local function wasteLeavesLoop()
    while true do
        if autoleaves then
            local amt = getValue("Leaves")
            if amt == nil then amt = 1 end
            if amt >= wasteLeavesTo then
                Packets.CraftItem.send(164)
            end
        end
        task.wait(0.05)
    end
end

local wasteSticks = false

local function wasteSticks()
    while true do
        if wasteSticks then
            local amt = getValue("Wood")
            if amt == nil then amt = 1 end
            if amt >= 30 then
                Packets.CraftItem.send(248)
            end
        end
        task.wait(0.05)
    end
end

local wasetMag = false

local function wasetMag()
    while true do
        if wasetMag then
            local amt = getValue("Magnetite")
            if amt == nil then amt = 1 end
            if amt >= 10 then
                Packets.CraftItem.send(229)
            end
        end
        task.wait(0.05)
    end
end


local function wasteFruitLoop()
    while true do
        if wasteFruit then
            local amt = getValue(SelectedFruit)

            if amt == nil then amt = 1 end

            if amt >= wasteFruitTo then
                Packets.UseBagItem.send(GetIndex(SelectedFruit))
            end
        end
        task.wait(0.2) 
    end
end
local wasteMeat = false

local function wasteMeat()
    while true do
        if wasteMeat then
            local amt = getValue("Cooked Meat")

            if amt == nil then amt = 1 end

            if amt and amt ~= 1 then
                Packets.UseBagItem.send(GetIndex("Cooked Meat"))
            end
        end
        task.wait(0.2) 
    end
end
spawn(wasteMeat)
spawn(wasetMag)
spawn(wasteLeavesLoop)
spawn(wasteFruitLoop)
spawn(wasteSticks)

Farming:AddToggle({
    Name = "Waste Leaves",
    Default = false,
    Save = true,
    Flag = "wasteLeaves",
    Callback = function(State)
        autoleaves = State
    end
})
Farming:AddToggle({
    Name = "Waste Sticks",
    Default = false,
    Save = true,
    Flag = "wasteSticks",
    Callback = function(State)
        wasteSticks = State
    end
})

Farming:AddToggle({
    Name = "Waste Fruit",
    Default = false,
    Save = true,
    Flag = "wasteFruit",
    Callback = function(State)
        wasteFruit = State
    end
})
Farming:AddDropdown({
    Name = "Fruit",
    Default = "",
    Options = allowedFruits,
    Callback = function(Value)
        SelectedFruit = Value
    end    
})

Farming:AddSlider({
    Name = "Waste Leaves To: ",
    Min = 2,
    Max = 100,
    Default = 25,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Leaves",
    Callback = function(Value)
        wasteLeavesTo = Value
    end
})

Farming:AddSlider({
    Name = "Waste Fruit To: ",
    Min = 1,
    Max = 100,
    Default = 25,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Amount",
    Callback = function(Value)
        wasteFruitTo = Value
    end
})

local autohit_critters = false
local pickupMeat = false
local pickupEssence = false
local pickupmag = false
local rapeMag = false

Farming:AddToggle({
    Name = "Hit Servants",
    Default = false,
    Save = true,
    Flag = "servants",
    Callback = function(State)
        autohit_critters = State
        if State then
            spawn(function()
                while autohit_critters do
                    task.wait(0.1)
                    local character = LocalPlayer.Character
                    if character then
                        local characterPosition = character:GetPivot().Position
                        local parts = workspace:GetPartBoundsInRadius(characterPosition, 20)
    
                        local entityIDs = {}
                        for _, part in ipairs(parts) do
                            if part.Parent and part.Parent.Name == "Queen Ant's Servant" then
                                local cid = part.Parent:GetAttribute("EntityID")
                                local health = part.Parent:FindFirstChild("Health")
    
                                if cid and health and health.Value > 0 then
                                    table.insert(entityIDs, cid)
                                end
                            end
                        end
    
                        if #entityIDs > 0 then
                            Packets.SwingTool.send(entityIDs)
                        end
                    end
                end
            end)
        end
    end
})

Farming:AddToggle({
    Name = "Hit Queen Ant (To 100hp)",
    Default = false,
    Save = true,
    Flag = "servants",
    Callback = function(State)
        autohit_critters = State
        if State then
            spawn(function()
                while autohit_critters do
                    task.wait(0.1)
                    local character = LocalPlayer.Character
                    if character then
                        local characterPosition = character:GetPivot().Position
                        local parts = workspace:GetPartBoundsInRadius(characterPosition, 20)
    
                        local entityIDs = {}
                        for _, part in ipairs(parts) do
                            if part.Parent and part.Parent.Name == "Queen Ant" then
                                local cid = part.Parent:GetAttribute("EntityID")
                                local health = part.Parent:FindFirstChild("Health")
    
                                if cid and health and health.Value > 99 then
                                    table.insert(entityIDs, cid)
                                end
                            end
                        end
    
                        if #entityIDs > 0 then
                            Packets.SwingTool.send(entityIDs)
                        end
                    end
                end
            end)
        end
    end
})

Farming:AddToggle({
    Name = "Pick Up Essence",
    Default = false,
    Save = true,
    Flag = "essence",
    Callback = function(State)
        pickupEssence = State
        if State then
            spawn(function()
                while true do
                    task.wait()
                while pickupEssence do
                    task.wait(0.01)
                    local item = getClosestItem("Essence")

                    if item then
                    PickUpItem(item)
                    end
                end
            end
            end)
        end
    end
})

Farming:AddToggle({
    Name = "Pick Up Cooked Meat",
    Default = false,
    Save = true,
    Flag = "pickupMeat",
    Callback = function(State)
        pickupMeat = State
        if State then
            spawn(function()
                while true do
                    task.wait()
                while pickupMeat do
                    task.wait(0.01)
                    local item = getClosestItem("Cooked Meat")

                    if item then
                    PickUpItem(item)
                    end
                end
            end
            end)
        end
    end
})

Farming:AddToggle({
    Name = "Eat Cooked Meat",
    Default = false,
    Save = true,
    Flag = "eatMeat",
    Callback = function(State)
        wasteMeat = State
    end
})

Farming:AddToggle({
    Name = "Waste Mag",
    Default = false,
    Save = true,
    Flag = "wasteMag",
    Callback = function(State)
        wasetMag = State
    end
})

Farming:AddToggle({
    Name = "Pick Up Magnetite",
    Default = false,
    Save = true,
    Flag = "pickupMag",
    Callback = function(State)
        pickupmag = State
        if State then
            spawn(function()
                while true do
                    task.wait()
                while pickupmag do
                    task.wait(0.01)
                    local item = getClosestItem("Magnetite")

                    if item then
                    PickUpItem(item)
                    end
                end
            end
            end)
        end
    end
})

local pickupgold

Farming:AddToggle({
    Name = "Pick Up Gold Bar From Floor",
    Default = false,
    Callback = function(State)
        pickupgold = State
        if State then
            spawn(function()
                while pickupgold do
                    task.wait(0.01)
                    local item = getClosestItem("Gold")

                    if item then
                    PickUpItem(item)
                    end
                end
            end)
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

local Section = Visual:AddSection({
    Name = "Specific Team"
})

Visual:AddDropdown({
    Name = "Select Team Color",
    Default = "",
    Options = teamColors,
    Callback = function(selectedColor)
        selectedTeamColor = selectedColor
    end    
})

Visual:AddToggle({
    Name = "Team ESP",
    Default = false,
    Callback = function(Value)
        esp = Value

        local function addHighlightPlayer(player)
            local character = player.Character
            if character and player.TeamColor.Name == selectedTeamColor then
                if not character:FindFirstChildOfClass("Highlight") then
                    local highlight = Instance.new("Highlight", character)
                    highlight.FillColor = espChamColor
                    highlight.FillTransparency = 0.1
                    highlight.OutlineColor = espOutlineColor
                    highlight.OutlineTransparency = 0
                end
            end
        end

        local function removeHighlightPlayer(player)
            local character = player.Character
            if character then
                local highlight = character:FindFirstChildOfClass("Highlight")
                if highlight then
                    highlight:Destroy()
                end
            end
        end

        for _, player in ipairs(Players:GetPlayers()) do
            if esp then
                addHighlightPlayer(player)
            else
                removeHighlightPlayer(player)
            end
        end

        Players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function(character)
                if esp then
                    addHighlightPlayer(player)
                end
            end)
            if player.Character and esp then
                addHighlightPlayer(player)
            end
        end)

        Players.PlayerRemoving:Connect(function(player)
            if player.Character then
                removeHighlightPlayer(player)
            end
        end)
    end
})
--[[

    
$$\      $$\ $$$$$$\  $$$$$$\   $$$$$$\  $$$$$$$$\ $$\       $$\        $$$$$$\  $$\   $$\ $$$$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
$$$\    $$$ |\_$$  _|$$  __$$\ $$  __$$\ $$  _____|$$ |      $$ |      $$  __$$\ $$$\  $$ |$$  _____|$$  __$$\ $$ |  $$ |$$  __$$\ 
$$$$\  $$$$ |  $$ |  $$ /  \__|$$ /  \__|$$ |      $$ |      $$ |      $$ /  $$ |$$$$\ $$ |$$ |      $$ /  $$ |$$ |  $$ |$$ /  \__|
$$\$$\$$ $$ |  $$ |  \$$$$$$\  $$ |      $$$$$\    $$ |      $$ |      $$$$$$$$ |$$ $$\$$ |$$$$$\    $$ |  $$ |$$ |  $$ |\$$$$$$\  
$$ \$$$  $$ |  $$ |   \____$$\ $$ |      $$  __|   $$ |      $$ |      $$  __$$ |$$ \$$$$ |$$  __|   $$ |  $$ |$$ |  $$ | \____$$\ 
$$ |\$  /$$ |  $$ |  $$\   $$ |$$ |  $$\ $$ |      $$ |      $$ |      $$ |  $$ |$$ |\$$$ |$$ |      $$ |  $$ |$$ |  $$ |$$\   $$ |
$$ | \_/ $$ |$$$$$$\ \$$$$$$  |\$$$$$$  |$$$$$$$$\ $$$$$$$$\ $$$$$$$$\ $$ |  $$ |$$ | \$$ |$$$$$$$$\  $$$$$$  |\$$$$$$  |\$$$$$$  |
\__|     \__|\______| \______/  \______/ \________|\________|\________|\__|  \__|\__|  \__|\________| \______/  \______/  \______/ 
                                                                                                                                
                                                                                                                                
                                    
--]]


local Section12 = Misc:AddSection({
    Name = "UI Settings"
})

local function toggleLowDetailMode()
    local ldm = true

    if ldm then
        game.Lighting.FogEnd = 1000

        game.Lighting.GlobalShadows = false

        for _, part in ipairs(workspace:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Material = Enum.Material.Plastic
                if part:FindFirstChildOfClass("Decal") then
                    part:FindFirstChildOfClass("Decal"):Destroy()
                end
            end
        end
    end
end

Misc:AddButton({
    Name = "Unload UI",
    Callback = function()
        AutoPlant_Enabled = false
        AutoTeleport_Enabled = false
        AutoHarvest_Enabled = false

        OrionLib:Destroy()
    end
})

local Section13 = Misc:AddSection({
    Name = "Webhook Settings"
})

Misc:AddToggle({
    Name = "Webhook Sending",
    Default = false,
    Callback = function(Value)
        webhookSending = Value

        if Value then
            startWebhookSending()
        end
    end
})

Misc:AddTextbox({
    Name = "Webhook URL",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        webhookUrl1 = Value
    end
})

Misc:AddDropdown({
    Name = "Fruit",
    Default = "",
    Options = allowedFruits,
    Callback = function(Value)
        fruitToSend = Value
        lastFruitValue = 0
        startFruitValue = 0
    end    
})

Misc:AddSlider({
    Name = "Interval",
    Min = 1,
    Max = 60,
    Default = 10,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "minutes",
    Callback = function(Value)
        webhookInterval = Value
        webhookInSeconds = (webhookInterval * 60)
    end    
})

Misc:AddButton({
    Name = "Test Webhook",
    Callback = function()
        testWebhook()
    end    
})

local Section13 = Misc:AddSection({
    Name = "Preformance"
})

Misc:AddButton({
    Name = "Destroy Items",
    Callback = function()
        local itemsFolder = game.Workspace:FindFirstChild("Items")
        if itemsFolder then
            for i, v in ipairs(itemsFolder:GetChildren()) do
                if v:IsA("BasePart") then
                    v.Transparency = 1
                    v.CanCollide = false
                elseif v:IsA("Model") then
                    for _, part in ipairs(v:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.Transparency = 1
                            part.CanCollide = false
                        end
                    end
                end
            end
        else
            warn("Items folder not found in Workspace")
        end
    end
})

Misc:AddButton({
    Name = "Low Detail Mode",
    Callback = function()
        toggleLowDetailMode()
    end
})

--[[


$$$$$$$$\ $$$$$$$$\ $$\       $$$$$$$$\ $$$$$$$\   $$$$$$\  $$$$$$$\ $$$$$$$$\  $$$$$$\  
\__$$  __|$$  _____|$$ |      $$  _____|$$  __$$\ $$  __$$\ $$  __$$\\__$$  __|$$  __$$\ 
$$ |   $$ |      $$ |      $$ |      $$ |  $$ |$$ /  $$ |$$ |  $$ |  $$ |   $$ /  \__|
$$ |   $$$$$\    $$ |      $$$$$\    $$$$$$$  |$$ |  $$ |$$$$$$$  |  $$ |   \$$$$$$\  
$$ |   $$  __|   $$ |      $$  __|   $$  ____/ $$ |  $$ |$$  __$$<   $$ |    \____$$\ 
$$ |   $$ |      $$ |      $$ |      $$ |      $$ |  $$ |$$ |  $$ |  $$ |   $$\   $$ |
$$ |   $$$$$$$$\ $$$$$$$$\ $$$$$$$$\ $$ |       $$$$$$  |$$ |  $$ |  $$ |   \$$$$$$  |
\__|   \________|\________|\________|\__|       \______/ \__|  \__|  \__|    \______/ 
                                                                                        
                                                                                                                                                                    
--]]



local function TeleportLoop()
    while tpenabled do
        for _, position in ipairs(tps) do
            if tpenabled then
                TweenToPosition(position)
            else
                break
            end
            task.wait(tpinverval)
        end
        task.wait()
    end
end

local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local LocalPlayer = game.Players.LocalPlayer

local function getServers(id)
    local response = request({
        Url = string.format("https://games.roblox.com/v1/games/%s/servers/0?sortOrder=2&excludeFullGames=true&limit=100", id)
    })
    return HttpService:JSONDecode(response.Body)
end

local Section = Teleports:AddSection({
    Name = "Server Teleports"
})

local function teleportToServer(placeId, serverId)
    if serverId then
        TeleportService:TeleportToPlaceInstance(placeId, serverId, LocalPlayer)
    else
        warn("No valid server found for teleportation.")
    end
end

Teleports:AddButton({
    Name = "Big Void Server (More Players)",
    Callback = function()
        local servers = getServers(11879754496).data
        local touse = {}
        for _, v in pairs(servers) do
            if v.playing > 25 then
                table.insert(touse, v.id)
            end
        end
        local bestid = #touse > 0 and touse[math.random(1, #touse)] or servers[1] and servers[1].id
        teleportToServer(11879754496, bestid)
    end    
})

Teleports:AddButton({
    Name = "Small Void Server (Less Players)",
    Callback = function()
        local servers = getServers(11879754496).data
        local touse = {}
        for _, v in pairs(servers) do
            if v.playing < 10 then
                table.insert(touse, v.id)
            end
        end
        local bestid = #touse > 0 and touse[math.random(1, #touse)] or servers[1] and servers[1].id
        teleportToServer(11879754496, bestid)
    end    
})

Teleports:AddButton({
    Name = "Low Latency Void",
    Callback = function()
        local servers = getServers(11879754496).data
        local bestid
        local bestval = 200
        for _, v in pairs(servers) do
            if v.ping < bestval then
                bestval = v.ping
                bestid = v.id
            end
        end
        teleportToServer(11879754496, bestid)
    end    
})

Teleports:AddButton({
    Name = "Small Overworld Server (Less Players)",
    Callback = function()
        local servers = getServers(11729688377).data
        local touse = {}
        for _, v in pairs(servers) do
            if v.playing < 10 then
                table.insert(touse, v.id)
            end
        end
        local bestid = #touse > 0 and touse[math.random(1, #touse)] or servers[1] and servers[1].id
        teleportToServer(11729688377, bestid)
    end    
})

Teleports:AddButton({
    Name = "Big Overworld Server (More Players)",
    Callback = function()
        local servers = getServers(11729688377).data
        local touse = {}
        for _, v in pairs(servers) do
            if v.playing > 25 then
                table.insert(touse, v.id)
            end
        end
        local bestid = #touse > 0 and touse[math.random(1, #touse)] or servers[1] and servers[1].id
        teleportToServer(11729688377, bestid)
    end    
})

Teleports:AddButton({
    Name = "Low Latency Overworld",
    Callback = function()
        local servers = getServers(11729688377).data
        local bestid
        local bestval = 150
        for _, v in pairs(servers) do
            if v.ping < bestval then
                bestval = v.ping
                bestid = v.id
            end
        end
        teleportToServer(11729688377, bestid)
    end    
})

Teleports:AddButton({
    Name = "Random Overworld",
    Callback = function()
        local servers = getServers(11729688377).data
        local bestid = servers[math.random(1, #servers)].id
        while bestid == game.JobId do
            bestid = servers[math.random(1, #servers)].id
        end
        teleportToServer(11729688377, bestid)
    end    
})


local Section = Teleports:AddSection({
    Name = "Teleport Positions"
})


local sphereParts = {}

local function createSphereAtPosition(position)
    local sphere = Instance.new("Part")
    sphere.Transparency = 0.5
    sphere.Shape = Enum.PartType.Ball
    sphere.Color = Color3.new(1, 0, 0) -- Red color
    sphere.Material = Enum.Material.Neon
    sphere.Size = Vector3.new(1.5, 1.5, 1.5)
    sphere.Anchored = true
    sphere.CanCollide = false
    sphere.Position = position.Position + Vector3.new(0, -0.5, 0)
    sphere.Parent = game.Workspace
    table.insert(sphereParts, sphere)
end

local function removeSphere()
    for c, sphere in ipairs(sphereParts) do
        task.wait()
        sphere.Transparency = 1
    end
end

Teleports:AddButton({
    Name = "Set Position",
    Callback = function()
        local playerPos = Players.LocalPlayer.Character.HumanoidRootPart.Position
        table.insert(tps, playerPos)
        createSphereAtPosition(playerPos)
        OrionLib:MakeNotification({
            Name = "Set position " .. #tps .. " to player's position",
            Content = "Completed",
            Image = "rbxassetid://4483345998",
            Time = 2
        })
    end    
})

Teleports:AddButton({
    Name = "Clear Positions",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Successfully cleared all " .. #tps .. " positions.",
            Content = "Completed",
            Image = "rbxassetid://4483345998",
            Time = 2
        })

        removeSphere()
        
        tps = {}
    end    
})

Teleports:AddSlider({
    Name = "Tween Speed",
    Min = 1,
    Max = 40,
    Default = 19,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 0.5,
    ValueName = "studs/sec",
    Callback = function(Value)
        tptweenspeed = Value
    end    
})

Teleports:AddSlider({
    Name = "Tween Interval",
    Min = 0,
    Max = 60,
    Default = 10,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 0.5,
    ValueName = "secs",
    Callback = function(Value)
        tpinverval = Value
    end    
})

Teleports:AddToggle({
    Name = "Teleport Tweening",
    Default = false,
    Callback = function(Value)
        tpenabled = Value
        if tpenabled then
            spawn(TeleportLoop)
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
    Name = "Auto Heal To: ",
    Min = 1,
    Max = 100,
    Default = 100,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Health",
    Callback = function(Value)
        autohealTo = Value
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

local Section = Player:AddSection({
    Name = "Player Settings"
})

Player:AddToggle({
    Name = "Mountain Climber",
    Default = false,
    Callback = function(State)
        if State then
            character = getPlayerCharacter()
            character:WaitForChild("Humanoid").MaxSlopeAngle = 89
        else
            character = getPlayerCharacter()
            character:WaitForChild("Humanoid").MaxSlopeAngle = 46
        end
    end
})

local mt = getrawmetatable(game.Players.LocalPlayer)
setreadonly(mt, false)

local oldIndex = mt.__index
local oldNewIndex = mt.__newindex

mt.__index = function(t, k)
    if k == "WalkSpeed" and wwenabled then
        return wwspeed
    end

    return oldIndex(t, k)
end

mt.__newindex = function(t, k, v)
    if k == "WalkSpeed" and wwenabled then
        v = wwspeed
    end
    oldNewIndex(t, k, v)
end

setreadonly(mt, true)

Player:AddToggle({
    Name = "Water Walker",
    Default = false,
    Callback = function(State)
        wwenabled = State
    end
})

Player:AddSlider({
    Name = "Water Walker Speed",
    Min = 1,
    Max = 50,
    Default = 16,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "WalkSpeed",
    Callback = function(Value)
        wwspeed = Value
    end
})

local Section = Player:AddSection({
    Name = "Auto Pick Up"
})

Player:AddToggle({
    Name = "Auto Pick Up Godsets",
    Default = false,
    Callback = function(State)
        autoPickupGodSets = State
        if State then
            spawn(function()
                while autoPickupGodSets do
                    task.wait(0.01)
                    autoPickupItems(3)
                end
            end)
        end
    end
})

Player:AddToggle({
    Name = "Auto Pick Up Gold",
    Default = false,
    Callback = function(State)
        autoPickupGold = State
        if State then
            spawn(function()
                while autoPickupGold do
                    task.wait(0.01)
                    autoPickupItems(1)
                end
            end)
        end
    end
})

Player:AddToggle({
    Name = "Auto Pick Up Crystal",
    Default = false,
    Callback = function(State)
        autoPickupCrystal = State
        if State then
            spawn(function()
                while autoPickupCrystal do
                    task.wait(0.01)
                    autoPickupItems(2)
                end
            end)
        end
    end
})

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

--[[local Section = Combat:AddSection({
    Name = "Auto Hit"
})--]]

--[[local animationId = "rbxassetid://10761451679"
local animation = Instance.new("Animation")
animation.AnimationId = animationId--]]

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

--[[if game.Workspace:FindFirstChild('Pro') and game.Workspace:FindFirstChild('Pro'):IsA('Folder') then
    game.Players.LocalPlayer:Kick("Executed UI more than 1 time, rejoin please")
else
    local Pro = Instance.new('Folder')
    Pro.Parent = game.Workspace
    Pro.Name = "Pro"
end

spawn(function()
    wait(1)
    warn("Skid Hunter *Enabled* you're about to get caught")
    local CoreGui = game:GetService("CoreGui")

    local function Check()
        for _, v in pairs(CoreGui:GetDescendants()) do
            if v.ClassName == "Frame" and v.Name == "ScriptEditor" then
                spawn(function()
                    wait(0.5)
                    print('Skid Pro got detected')
                    game.Players.LocalPlayer:Kick('Get a life Skid Pro')
                end)
            end
        end
    end
    
    Check()
    
    CoreGui.ChildAdded:Connect(Check)
end)

-- Anti Crash
spawn(function()
    while wait(1) do
        if game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
        end
    end
end)--]]
