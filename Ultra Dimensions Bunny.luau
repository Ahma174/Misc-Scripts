--[[ 
   the model is saved by Dex ReContinued ;) 
   (absolute best dex project, you should try it)
]]

--[[ 
 GitHub Script Link: 
 https://raw.githubusercontent.com/Ahma174/Misc-Scripts/refs/heads/main/Ultra%20Dimensions%20Bunny.luau
]]

-- Code

if isfile("Ultra Dimensions Bunny.rbxm") then
 print("File Already Exists")
else
 writefile("Ultra Dimensions Bunny.rbxm", game:HttpGet("https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Models/Ultra%20Dimensions%20Bunny.rbxm"))
end

local model2 = game:GetObjects(getcustomasset("Ultra Dimensions Bunny.rbxm"))[1]
model2.Parent = game.Players.LocalPlayer.Character

local RunService = game:GetService("RunService")
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
local base = model2.Base
base.BodyPosition:Destroy()
base.BodyGyro:Destroy()

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

local petGroundOffset = _G.petGroundOffset or CFrame.new(5, -1.8, -3)
local bobMax = 1
local bobT = 0
local bobSpeed = 0.01
local bobUp = false
local tiltAngle = 5

RunService.RenderStepped:Connect(function(dt)
	if not bobUp then
		bobT += bobSpeed
		if bobMax <= bobT then
			bobUp = true
		end
		if tiltAngle < 5 then
			tiltAngle += 0.1
		end
	else
		bobT -= bobSpeed
		if bobT <= 0 then
			bobUp = false
		end
		if tiltAngle > -5 then
			tiltAngle -= 0.1
		end
	end

	bodyPos.Position = (
		rootPart.CFrame * CFrame.new(
			petGroundOffset.X,
			petGroundOffset.Y + bobT,
			petGroundOffset.Z
		)
	).Position

	if humanoid.MoveDirection == Vector3.new(0, 0, 0) then
		bodyGyro.CFrame = CFrame.new(
			base.Position,
			Vector3.new(rootPart.Position.X, base.Position.Y, rootPart.Position.Z)
		)

		bobMax = 0.5

		if model2:FindFirstChild("AnimationController") == nil then
			bobSpeed = 0.1
		else
			bobSpeed = 0
		end
	else
		bodyGyro.CFrame = rootPart.CFrame
		bobMax = 1
		bobSpeed = 0.1
	end
end)
