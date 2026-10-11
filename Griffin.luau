--[[ 
   the model and animation is saved by Dex ReContinued ;) 
   (absolute best dex project, you should try it)
]]

-- Code

-- Why Did I Call it "Peter Griffin.rbxm" And "Peter Griffin Anim.luau" 🫩🥀

if isfile("Peter Griffin.rbxm") and isfile("Peter Griffin Anim.luau") then
  print("Peter Griffin Files Already Exist.")
else
 writefile("Peter Griffin.rbxm", game:HttpGet("https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Models/Peter%20Griffin.rbxm"))
 writefile("Peter Griffin Anim.luau", game:HttpGet("https://raw.githubusercontent.com/Ahma174/Anims/refs/heads/main/Griffin%20Anim.luau"))
end

local model2 = game:GetObjects(getcustomasset("Peter Griffin.rbxm"))[1]
model2.Parent = game.Players.LocalPlayer.Character

local base = model2.RootPart
base.BodyPosition:Destroy()
base.BodyGyro:Destroy()

local RunService = game:GetService("RunService")
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

task.wait(0.05)

-- Vibecoded Part --

-- Player Made By Claude ofc
local speed = 1

local rig = model2
local frames = loadstring(readfile("Peter Griffin Anim.luau"))().Animation
table.sort(frames, function(a, b) return a.Time < b.Time end)
local duration = frames[#frames].Time

local joints = {}
for _, d in ipairs(rig:GetDescendants()) do
	if d:IsA("Bone") then
		joints[d.Name] = d
	end
end
for _, d in ipairs(rig:GetDescendants()) do
	if d:IsA("Motor6D") and not joints[d.Name] then
		joints[d.Name] = d
	end
end

local names, seen = {}, {}
for _, f in ipairs(frames) do
	for name in pairs(f.Data) do
		if not seen[name] and joints[name] then
			seen[name] = true
			table.insert(names, name)
		end
	end
end

local t = 0
local idx = 1

RunService.Heartbeat:Connect(function(dt)
	t = (t + dt * speed) % duration
	if frames[idx].Time > t then
		idx = 1
	end
	while idx < #frames and frames[idx + 1].Time <= t do
		idx += 1
	end
	local a = frames[idx]
	local b = frames[idx + 1] or frames[1]
	local bt = frames[idx + 1] and b.Time or duration
	local span = bt - a.Time
	local alpha = span > 0 and (t - a.Time) / span or 0
	for _, name in ipairs(names) do
		local ca, cb = a.Data[name], b.Data[name]
		local cf = ca or cb
		if ca and cb then
			cf = ca:Lerp(cb, alpha)
		end
		if cf then
			joints[name].Transform = cf
		end
	end
end)

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local flyingOffset = CFrame.new(5, 2, -3)
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
