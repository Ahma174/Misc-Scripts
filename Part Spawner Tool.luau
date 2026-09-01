local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

local Spawner = Instance.new("Tool") -- Mob Spawner fr
Spawner.Name = "Part Spawner"
Spawner.RequiresHandle = false
Spawner.Parent = player.Backpack

Spawner.Activated:Connect(function()
local Spos = mouse.Hit
if Spos then
local part = Instance.new("Part")
part.CFrame = Spos * CFrame.new()
part.Parent = game.Workspace
end
end)

-- The Random Color and Material Version
--[[
local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

local Colors = {
Color3.fromRGB(255, 0, 0),
Color3.fromRGB(255, 255, 0),
Color3.fromRGB(0, 255, 0),
Color3.fromRGB(0, 255, 255),
Color3.fromRGB(0, 0, 255),
Color3.fromRGB(255, 0, 255),
Color3.fromRGB(255, 255, 255),
Color3.fromRGB(0, 0, 0)
}

local Mat = {
Enum.Material.Asphalt,
Enum.Material.Basalt,
Enum.Material.Brick,
Enum.Material.Cardboard,
Enum.Material.Carpet,
Enum.Material.CeramicTiles,
Enum.Material.ClayRoofTiles,
Enum.Material.Cobblestone,
Enum.Material.Concrete,
Enum.Material.CorrodedMetal,
Enum.Material.CrackedLava,
Enum.Material.DiamondPlate,
Enum.Material.Fabric,
Enum.Material.Foil,
Enum.Material.ForceField,
Enum.Material.Glacier,
Enum.Material.Glass,
Enum.Material.Granite,
Enum.Material.Grass,
Enum.Material.Ground,
Enum.Material.Ice,
Enum.Material.LeafyGrass,
Enum.Material.Leather,
Enum.Material.Limestone,
Enum.Material.Marble,
Enum.Material.Metal,
Enum.Material.Mud,
Enum.Material.Neon,
Enum.Material.Pavement,
Enum.Material.Pebble,
Enum.Material.Plaster,
Enum.Material.Plastic,
Enum.Material.Rock,
Enum.Material.RoofShingles,
Enum.Material.Rubber,
Enum.Material.Salt,
Enum.Material.Sand,
Enum.Material.Sandstone,
Enum.Material.Slate,
Enum.Material.SmoothPlastic,
Enum.Material.Snow,
Enum.Material.Water,
Enum.Material.Wood,
Enum.Material.WoodPlanks
}

local Spawner = Instance.new("Tool") -- Mob Spawner fr
Spawner.Name = "Part Spawner"
Spawner.RequiresHandle = false
Spawner.Parent = player.Backpack

Spawner.Activated:Connect(function()
local Spos = mouse.Hit
local part = Instance.new("Part")
part.CFrame = Spos * CFrame.new()
part.Color = Colors[math.random(1, #Colors)]
part.Material = Mat[math.random(1, #Mat)]
part.Parent = game.Workspace
end)
]]
