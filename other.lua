
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

local nodePos = {
    Vector3.new(916.30, -3.00, -1391.05),
    Vector3.new(914.92, -1.76, -1411.50),
    Vector3.new(941.17, -2.51, -1428.51),
    Vector3.new(955.71, -3.00, -1390.46),
    Vector3.new(920.78, -3.00, -1331.88),
    Vector3.new(856.16, -7.00, -1224.48),
    Vector3.new(761.09, -3.00, -1081.66),
    Vector3.new(681.07, -7.67, -961.42),
    Vector3.new(608.27, -5.53, -804.39),
    Vector3.new(602.81, -3.00, -794.60),
    Vector3.new(551.22, -3.00, -688.65),
    Vector3.new(391.80, -7.20, -477.33),
    Vector3.new(500.41, -4.82, -391.28),
    Vector3.new(516.83, -3.08, -389.32),
    Vector3.new(531.07, -3.61, -388.65),
    Vector3.new(537.89, -0.13, -382.53),
    Vector3.new(534.27, 2.38, -394.81),
    Vector3.new(539.79, 8.27, -395.79),
    Vector3.new(552.22, 11.36, -394.01),
    Vector3.new(565.48, 8.42, -393.14),
    Vector3.new(577.87, 3.79, -387.23),
    Vector3.new(587.17, -2.44, -380.92),
    Vector3.new(595.88, -8.21, -371.96),
    Vector3.new(613.49, -7.26, -381.61),
    Vector3.new(635.91, -7.11, -374.28),
    Vector3.new(622.28, -7.45, -361.79),
    Vector3.new(608.49, -7.36, -355.52),
    Vector3.new(599.44, -7.61, -374.59),
    Vector3.new(590.38, -3.67, -386.28),
    Vector3.new(583.38, 0.74, -389.95),
    Vector3.new(576.65, 4.63, -387.26),
    Vector3.new(564.96, 8.48, -392.30),
    Vector3.new(553.36, 13.22, -399.01),
    Vector3.new(550.20, 17.84, -407.81),
    Vector3.new(543.40, 20.22, -414.49),
    Vector3.new(544.08, 24.65, -419.18),
    Vector3.new(544.71, 30.70, -423.50),
    Vector3.new(545.49, 34.01, -428.91),
    Vector3.new(552.18, 35.90, -427.77),
    Vector3.new(560.19, 38.77, -419.47),
    Vector3.new(566.37, 43.81, -420.84),
    Vector3.new(574.22, 44.83, -421.18),
    Vector3.new(580.86, 48.45, -421.47),
    Vector3.new(586.91, 51.16, -421.74),
    Vector3.new(591.85, 50.50, -421.05),
    Vector3.new(610.04, 49.04, -427.43),
    Vector3.new(624.31, 51.63, -416.15),
    Vector3.new(638.84, 56.59, -408.19),
    Vector3.new(642.45, 59.32, -409.98),
    Vector3.new(647.16, 62.86, -412.76),
    Vector3.new(652.63, 67.04, -414.07),
    Vector3.new(659.63, 69.06, -418.76),
    Vector3.new(666.13, 71.10, -423.70),
    Vector3.new(673.88, 73.83, -426.08),
    Vector3.new(675.68, 76.20, -422.34),
    Vector3.new(676.42, 79.69, -418.16),
    Vector3.new(677.42, 81.96, -414.84),
    Vector3.new(672.84, 81.87, -413.62),
    Vector3.new(672.60, 83.98, -408.70),
    Vector3.new(674.15, 83.53, -403.09),
    Vector3.new(675.29, 82.44, -398.99),
    Vector3.new(679.79, 81.12, -392.74),
    Vector3.new(677.00, 77.49, -384.29),
    Vector3.new(673.08, 78.24, -376.14),
    Vector3.new(669.82, 73.98, -372.90),
    Vector3.new(666.21, 70.01, -369.17),
    Vector3.new(664.62, 66.33, -367.22),
    Vector3.new(663.14, 62.78, -364.23),
    Vector3.new(662.12, 59.88, -361.20),
    Vector3.new(661.24, 58.03, -358.51),
    Vector3.new(659.88, 55.04, -354.41),
    Vector3.new(661.10, 53.60, -317.19),
    Vector3.new(661.63, 53.81, -306.43),
    Vector3.new(660.84, 55.48, -297.97),
    Vector3.new(660.96, 59.16, -292.47),
    Vector3.new(661.08, 61.19, -287.09),
    Vector3.new(661.22, 62.61, -280.66),
    Vector3.new(661.35, 62.85, -274.77),
    Vector3.new(660.10, 64.59, -267.65),
    Vector3.new(654.14, 63.61, -263.72),
    Vector3.new(647.57, 62.03, -259.08),
    Vector3.new(640.85, 59.95, -253.70),
    Vector3.new(636.23, 60.55, -247.72),
    Vector3.new(632.08, 60.99, -242.32),
    Vector3.new(631.06, 60.50, -237.58),
    Vector3.new(628.07, 56.63, -233.22),
    Vector3.new(625.03, 51.06, -224.79),
    Vector3.new(623.71, 46.22, -216.35),
    Vector3.new(621.64, 43.32, -208.75),
    Vector3.new(619.96, 41.60, -201.82),
    Vector3.new(621.80, 38.79, -194.87),
    Vector3.new(620.33, 32.52, -188.38),
    Vector3.new(622.90, 30.93, -181.24),
    Vector3.new(627.49, 29.29, -176.21),
    Vector3.new(635.30, 29.65, -173.56),
    Vector3.new(644.22, 27.98, -175.75),
    Vector3.new(650.84, 29.58, -175.23),
    Vector3.new(655.45, 32.12, -177.75),
    Vector3.new(663.71, 32.89, -181.76),
    Vector3.new(662.34, 31.81, -169.89),
    Vector3.new(662.36, 26.17, -163.52),
    Vector3.new(660.87, 16.04, -158.52),
    Vector3.new(656.80, 7.09, -150.81),
    Vector3.new(654.34, -0.97, -143.55),
    Vector3.new(651.95, -3.98, -136.52),
    Vector3.new(644.94, -4.68, -119.66),
    Vector3.new(554.60, -5.67, 110.38),
    Vector3.new(539.92, -3.23, 157.48),
    Vector3.new(539.80, -0.86, 167.28),
    Vector3.new(538.69, 2.04, 173.23),
    Vector3.new(539.98, 4.31, 180.13),
    Vector3.new(536.36, 10.45, 181.76),
    Vector3.new(533.55, 10.96, 183.24),
    Vector3.new(470.90, 13.44, 152.68),
    Vector3.new(495.88, 13.02, 186.44),
    Vector3.new(469.76, 11.47, 230.41),
    Vector3.new(482.84, 12.30, 224.32),
    Vector3.new(488.27, 11.72, 222.30),
    Vector3.new(492.47, 9.65, 221.33),
    Vector3.new(497.28, 7.81, 221.56),
    Vector3.new(502.93, 2.16, 222.54),
    Vector3.new(506.62, -1.62, 225.81),
    Vector3.new(509.19, -3.03, 231.96),
    Vector3.new(509.37, -3.00, 263.13),
    Vector3.new(708.25, -3.00, 294.24),
    Vector3.new(862.61, -7.05, 378.53),
    Vector3.new(942.97, -6.24, 421.56),
    Vector3.new(947.21, -2.15, 424.58),
    Vector3.new(956.64, 1.22, 428.54),
    Vector3.new(965.38, 2.17, 432.27),
    Vector3.new(976.34, -0.10, 437.50),
    Vector3.new(1048.12, -1.19, 482.58),
    Vector3.new(1062.12, 1.60, 496.06),
    Vector3.new(1073.45, 2.62, 510.82),
    Vector3.new(1088.47, 1.86, 527.22),
    Vector3.new(1104.54, -1.83, 544.76),
    Vector3.new(1123.12, -2.38, 563.28),
    Vector3.new(1144.15, -1.54, 585.13),
    Vector3.new(1160.40, -3.22, 576.27),
    Vector3.new(1175.81, -5.34, 559.35),
    Vector3.new(1184.15, -7.24, 551.67),
    Vector3.new(1195.83, -8.68, 541.73),
    Vector3.new(1202.84, -11.17, 535.77),
    Vector3.new(1213.86, -11.85, 526.40),
    Vector3.new(1210.66, -14.14, 516.65),
    Vector3.new(1209.23, -15.00, 512.28),
    Vector3.new(1205.63, -15.00, 502.64),
    Vector3.new(1199.79, -15.01, 491.03),
    Vector3.new(1194.76, -15.30, 481.03),
    Vector3.new(1186.28, -15.37, 464.17),
    Vector3.new(1188.71, -15.00, 477.06),
    Vector3.new(1167.88, -15.05, 482.07),
    Vector3.new(1193.89, -15.22, 480.83),
    Vector3.new(1200.69, -15.00, 494.65),
    Vector3.new(1207.44, -15.00, 507.24),
    Vector3.new(1211.00, -14.87, 514.63),
    Vector3.new(1213.88, -12.47, 520.60),
    Vector3.new(1218.30, -13.21, 529.76),
    Vector3.new(1221.55, -14.34, 536.52),
    Vector3.new(1226.22, -12.36, 540.45),
    Vector3.new(1230.34, -11.41, 546.45),
    Vector3.new(1236.08, -13.00, 551.66),
    Vector3.new(1240.74, -15.07, 559.68),
    Vector3.new(1242.52, -15.70, 570.77),
    Vector3.new(1245.38, -15.89, 578.60),
    Vector3.new(1251.48, -15.57, 587.52),
    Vector3.new(1270.12, -15.44, 603.03),
    Vector3.new(1288.32, -16.27, 625.10),
    Vector3.new(1297.85, -16.76, 636.74),
    Vector3.new(1304.87, -16.29, 643.26),
    Vector3.new(1309.65, -15.63, 653.57),
    Vector3.new(1314.60, -15.89, 662.01),
    Vector3.new(1306.62, -16.30, 668.81),
    Vector3.new(1294.55, -19.00, 679.08),
    Vector3.new(1284.93, -19.00, 685.69),
    Vector3.new(1292.78, -19.00, 680.53),
    Vector3.new(1301.47, -17.18, 674.81),
    Vector3.new(1310.56, -15.64, 668.84),
    Vector3.new(1319.86, -15.72, 667.23),
    Vector3.new(1329.68, -15.53, 668.89),
    Vector3.new(1339.68, -15.89, 672.52),
    Vector3.new(1356.52, -18.99, 677.60),
    Vector3.new(1349.70, -17.34, 675.60),
    Vector3.new(1340.71, -15.91, 672.97),
    Vector3.new(1333.79, -15.79, 667.52),
    Vector3.new(1325.76, -15.51, 663.48),
    Vector3.new(1317.01, -15.83, 659.08),
    Vector3.new(1310.86, -15.72, 648.73),
    Vector3.new(1300.86, -16.63, 638.42),
    Vector3.new(1291.58, -16.59, 628.86),
    Vector3.new(1288.22, -16.33, 623.50),
    Vector3.new(1280.03, -15.74, 615.17),
    Vector3.new(1277.50, -15.53, 610.76),
    Vector3.new(1254.62, -15.44, 589.41),
    Vector3.new(1243.41, -15.77, 573.05),
    Vector3.new(1240.00, -15.38, 557.21),
    Vector3.new(1233.29, -12.59, 552.60),
    Vector3.new(1227.22, -11.39, 545.07),
    Vector3.new(1220.42, -12.81, 539.95),
    Vector3.new(1211.81, -11.39, 536.00),
    Vector3.new(1206.49, -11.53, 537.62),
    Vector3.new(1200.62, -10.36, 539.39),
    Vector3.new(1194.55, -8.50, 543.75),
    Vector3.new(1187.02, -7.33, 552.78),
    Vector3.new(1177.36, -5.72, 561.07),
    Vector3.new(1159.49, -3.20, 576.40),
    Vector3.new(1147.21, -1.50, 587.62),
    Vector3.new(1144.83, 0.33, 593.48),
    Vector3.new(1140.79, 1.43, 603.41),
    Vector3.new(1135.58, 1.21, 616.18),
    Vector3.new(1130.24, -1.08, 629.32),
    Vector3.new(1116.00, -1.87, 664.29),
    Vector3.new(1054.10, -1.32, 663.33),
    Vector3.new(1024.10, 0.20, 662.72),
    Vector3.new(1011.50, 2.56, 662.47),
    Vector3.new(994.57, 0.98, 662.13),
    Vector3.new(973.49, -1.48, 661.71),
    Vector3.new(950.81, -1.01, 661.25),
    Vector3.new(929.24, -1.42, 660.82),
    Vector3.new(911.67, -3.03, 671.21),
    Vector3.new(854.58, -3.76, 704.99),
    Vector3.new(816.60, -0.37, 727.45),
    Vector3.new(803.08, 0.88, 733.40),
    Vector3.new(786.22, -1.35, 734.27),
    Vector3.new(746.91, -3.00, 751.74),
    Vector3.new(703.78, -3.00, 773.06),
    Vector3.new(671.96, -3.10, 802.96),
    Vector3.new(608.99, -7.44, 860.60),
    Vector3.new(334.38, -7.27, 1121.49),
    Vector3.new(325.66, -7.43, 1137.29),
    Vector3.new(302.33, -6.18, 1144.24),
    Vector3.new(309.63, -4.03, 1150.77),
    Vector3.new(312.62, -3.00, 1161.55),
    Vector3.new(307.22, -2.43, 1181.58),
    Vector3.new(311.32, -3.32, 1202.14),
    Vector3.new(309.31, -3.06, 1219.30),
    Vector3.new(302.23, -3.23, 1232.67),
    Vector3.new(289.54, -2.23, 1238.55),
    Vector3.new(278.47, -2.30, 1248.27),
    Vector3.new(269.52, -2.00, 1259.00),
    Vector3.new(259.82, -3.31, 1261.01),
    Vector3.new(250.92, -2.69, 1255.95),
    Vector3.new(241.96, -0.56, 1253.16),
    Vector3.new(230.32, -3.36, 1252.27),
    Vector3.new(216.86, -1.66, 1250.99),
    Vector3.new(207.92, -3.62, 1245.43),
    Vector3.new(198.11, -2.49, 1234.91),
    Vector3.new(188.43, -3.95, 1224.94),
    Vector3.new(187.13, -3.49, 1213.27),
    Vector3.new(185.42, -2.38, 1190.82),
    Vector3.new(184.73, -3.86, 1160.70),
    Vector3.new(161.31, -4.48, 1134.51),
    Vector3.new(156.74, -7.19, 1117.04),
    Vector3.new(115.32, -7.03, 816.58),
    Vector3.new(114.26, -3.35, 808.96),
    Vector3.new(111.65, -3.00, 790.25),
    Vector3.new(108.44, -4.55, 767.23),
    Vector3.new(107.12, -7.00, 757.78),
    Vector3.new(66.46, -7.04, 595.23),
    Vector3.new(-32.83, -7.11, 201.48),
    Vector3.new(-58.83, -7.00, 113.05),
    Vector3.new(-67.79, -5.27, 104.47),
    Vector3.new(-75.47, -3.00, 99.66),
    Vector3.new(-86.71, -3.00, 89.64),
    Vector3.new(-97.61, -3.78, 77.07),
    Vector3.new(-100.20, -7.12, 69.93),
    Vector3.new(-100.82, -8.74, 64.54),
    Vector3.new(-100.94, -13.27, 57.40),
    Vector3.new(-98.50, -15.87, 50.97),
    Vector3.new(-92.27, -15.73, 48.64),
    Vector3.new(-83.52, -15.00, 46.31),
    Vector3.new(-77.83, -15.28, 43.17),
    Vector3.new(-72.34, -17.70, 40.14),
    Vector3.new(-70.93, -20.18, 34.29),
    Vector3.new(-73.33, -22.52, 29.85),
    Vector3.new(-76.85, -24.72, 25.45),
    Vector3.new(-79.82, -26.62, 20.47),
    Vector3.new(-82.90, -30.55, 13.69),
    Vector3.new(-87.37, -32.91, 8.87),
    Vector3.new(-94.04, -35.00, 6.09),
    Vector3.new(-101.00, -35.00, 1.37),
    Vector3.new(-100.05, -35.17, -6.00),
    Vector3.new(-97.61, -36.69, -12.78),
    Vector3.new(-93.99, -38.06, -20.18),
    Vector3.new(-97.35, -40.82, -24.61),
    Vector3.new(-102.19, -44.17, -27.19),
    Vector3.new(-108.47, -46.48, -33.73),
    Vector3.new(-135.59, -47.00, -92.27),
    Vector3.new(-109.21, -47.00, -119.98),
    Vector3.new(-103.28, -45.52, -123.07),
    Vector3.new(-98.50, -43.05, -127.43),
    Vector3.new(-93.56, -39.36, -131.96),
    Vector3.new(-91.36, -36.02, -137.81),
    Vector3.new(-100.62, -35.00, -145.86),
    Vector3.new(-128.05, -35.00, -169.73),
    Vector3.new(-142.56, -34.64, -166.49),
    Vector3.new(-121.29, -35.00, -178.20),
    Vector3.new(-117.88, -34.01, -180.98),
    Vector3.new(-114.42, -32.03, -180.45),
    Vector3.new(-111.89, -27.10, -183.44),
    Vector3.new(-115.87, -26.12, -189.78),
    Vector3.new(-119.46, -25.31, -194.60),
    Vector3.new(-124.26, -20.83, -199.02),
    Vector3.new(-123.29, -16.36, -199.07),
    Vector3.new(-122.73, -14.30, -201.39),
    Vector3.new(-123.96, -9.87, -204.68),
    Vector3.new(-126.22, -6.79, -208.64),
    Vector3.new(-128.69, -3.30, -216.89),
    Vector3.new(-104.83, -3.00, -252.63),
    Vector3.new(-91.51, -7.00, -272.81),
    Vector3.new(14.77, -7.21, -437.70),
    Vector3.new(27.05, -3.00, -456.19),
    Vector3.new(33.47, -3.88, -504.23),
    Vector3.new(90.40, -3.80, -585.25),
    Vector3.new(153.11, -3.00, -679.33),
    Vector3.new(165.26, -7.74, -696.40),
    Vector3.new(332.21, -7.09, -931.02),
    Vector3.new(576.75, -7.16, -1135.20),
    Vector3.new(843.13, -6.19, -1341.65),
    Vector3.new(851.89, -3.00, -1348.39),
    Vector3.new(885.74, -3.00, -1380.81),
    Vector3.new(893.99, -3.00, -1391.70)
}

local function createBodyVelocityProxy(bodyVelocity)
    local originalVelocity = bodyVelocity.Velocity
    local proxy = newproxy(true)
    local meta = getmetatable(proxy)
    meta.__index = function(_, key)
        if key == "Velocity" then
            return originalVelocity
        else
            return bodyVelocity[key]
        end
    end
    meta.__newindex = function(_, key, value)
        if key == "Velocity" then
            originalVelocity = value
            bodyVelocity.Velocity = value
        else
            bodyVelocity[key] = value
        end
    end
    return proxy
end

local function simulateWater(vehicleSeat)
    for _, part in ipairs(vehicleSeat.Parent:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0.3, 0.5, 1, 1)
        end
    end
end

local function restorePhysics(vehicleSeat)
    for _, part in ipairs(vehicleSeat.Parent:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CustomPhysicalProperties = PhysicalProperties.new(Enum.Material.Plastic)
        end
    end
end

local TweenService = game:GetService("TweenService")

local function TweenToPosition(position)
    local character = Players.LocalPlayer.Character
    if not character then return end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end

    local tweenInfo = TweenInfo.new((humanoidRootPart.Position - position).Magnitude / 19.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = CFrame.new(position)})
    tween:Play()
    tween.Completed:Wait()
end


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

local function swingTool(entityID)
    if entityID then
        Packets.SwingTool.send({entityID})
    end
end

local function esp()
    for i, v in ipairs(game.Workspace:FindFirstChild("Resources"):GetChildren()) do
        if v.Name == "Gold Node" then
            local e = Instance.new("Highlight")
            e.Parent = v
        end
    end
end

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
local char
local autoPickupGodSets = false

local Packets = require(ReplicatedStorage.Modules.Packets)
local ItemData = require(ReplicatedStorage.Modules.ItemData)
local ItemIDS = require(ReplicatedStorage.Modules.ItemIDS)
local GameUtil = require(ReplicatedStorage.Modules.GameUtil)

local function GetIndex(fruit)
    for i, v in pairs(GameUtil.Data.inventory) do
        if v.name == fruit then
            return i
        end
    end
end

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
local picka = false

local function test()

    spawn(function()
        while picka do
            task.wait()
            local item = getClosestItem("Raw Gold")

            if item then
               PickUpItem(item)
            end
        end
    end)

    while true do

    task.wait()

    while test do
        picka = true
        
        for i, v in pairs(nodePos) do
            task.wait()
            if not test then return end
            picka = true
            TweenToPosition(v)

            local iceChunks = getClosestResource("Ice Chunk")
            local goldNodes = getClosestResource("Gold Node")

            local allDepleted = false
            while not allDepleted do
                allDepleted = true

                for _, resource in ipairs(iceChunks) do
                    if not test then return end 
                    local cid = resource:GetAttribute("EntityID")
                    local health = resource:FindFirstChild("Health")
                    if health and health.Value > 0 then
                        swingTool(cid)
                        allDepleted = false
                        break
                    end
                end

                for _, resource in ipairs(goldNodes) do
                    if not test then return end 
                    local cid = resource:GetAttribute("EntityID")
                    local health = resource:FindFirstChild("Health")
                    if health and health.Value > 0 then
                        swingTool(cid)
                        allDepleted = false
                        break
                    end
                end

                task.wait()
            end

        end

        local rawGoldValue = getValue("Raw Gold")
        if rawGoldValue then
            picka = false
            for i = 1, rawGoldValue do
                task.wait(0.1)
                local index = GetIndex("Raw Gold")
                if index then
                    Packets.DropBagItem.send(index)
                end
            end
            task.wait(14)
        end

    end
  end
end 

spawn(test)

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

Farming:AddToggle({
    Name = "Four Nodes",
    Default = false,
    Save = true,
    Flag = "campfire",
    Callback = function(State)
        isGoldFarm = State
    end
})

Farming:AddToggle({
    Name = "All Nodes",
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
                    task.wait()
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

local aus = false -- structures
local aur = false -- resoruces
local auc = false -- critters

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
