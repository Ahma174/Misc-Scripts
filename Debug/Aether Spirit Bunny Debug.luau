-- The Model is Saved With Dex ReContinued

-- The Code Under Here
-- First Time Using Online Configs 

if isfile("Aether Spirit Bunny.rbxm") and isfile("petGui.rbxm") then
  print("Files Already Exists")
else
 writefile("Aether Spirit Bunny.rbxm", game:HttpGet("https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Models/Aether%20Spirit%20Bunny.rbxm"))
 writefile("petGui.rbxm", game:HttpGet("https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Gui's/petGui.rbxm"))
end

local model2 = game:GetObjects(getcustomasset("Aether Spirit Bunny.rbxm"))[1]
model2.Parent = game.Players.LocalPlayer.Character

local base = model2.Base
base.Anchored = false
local guiconfig = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ahma174/Misc-Scripts/refs/heads/main/Pet%20Related%20Things/PetConfig.luau"))()

local mlg = game:GetObjects(getcustomasset("petGui.rbxm"))[1]
mlg.evolvedLabel.Visible = true -- Change it to false if you want
mlg.levelLabel.Text = "Level 1"
mlg.levelLabel.TextColor3 = guiconfig.Colors.Unique
mlg.nameLabel.Text = "Aether Spirit Bunny"
mlg.Parent = base
base.BodyPosition:Destroy()
base.BodyGyro:Destroy()

local RunService = game:GetService("RunService")
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

task.wait(0.05)

-- Vibecoded Part --

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local flyingOffset = _G.petFlyingOffset CFrame.new(5, 2, -3)
local bobUp = false
local bobT = 0
local bobSpeed = 0.01
local bobMax = 1
local tiltAngle = 5

RunService.RenderStepped:Connect(function()
	if not bobUp then
		bobT = bobT + bobSpeed
		if bobT >= bobMax then bobUp = true end
		if tiltAngle < 5 then tiltAngle = tiltAngle + 0.1 end
	else
		bobT = bobT - bobSpeed
		if bobT <= 0 then bobUp = false end
		if tiltAngle > -5 then tiltAngle = tiltAngle - 0.1 end
	end
	local targetPos = (rootPart.CFrame * flyingOffset).p
	bodyPos.Position = Vector3.new(targetPos.X, targetPos.Y + bobT, targetPos.Z)
	if humanoid.MoveDirection == Vector3.new(0, 0, 0) then
		bodyGyro.CFrame = CFrame.new(base.Position, Vector3.new(rootPart.Position.X, base.Position.Y, rootPart.Position.Z)) * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	else
		bodyGyro.CFrame = rootPart.CFrame * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	end
end)
