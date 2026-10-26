--[[ 
   the model and animation is saved by Dex ReContinued ;) 
   (absolute best dex project, you should try it)
]]

if not isfile("Gold Series Electrowraith2.rbxm") then
    writefile("Gold Series Electrowraith2.rbxm", game:HttpGet("https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Models/Gold%20Series%20Electrowraith2.rbxm"))
end

if not isfile("Wraith Anim.luau") then
    writefile("Wraith Anim.luau", game:HttpGet("https://raw.githubusercontent.com/Ahma174/Anims/refs/heads/main/Wraith%20Anim.luau"))
end

if not isfile("NL2petGui.rbxm") then
    writefile("NL2petGui.rbxm", game:HttpGet("https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Gui's/NL2petGui.rbxm"))
end

local config = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ahma174/Misc-Scripts/refs/heads/main/Pet%20Related%20Things/NL2PetConfig.luau"))()

local model2 = game:GetObjects(getcustomasset("Gold Series Electrowraith2.rbxm"))[1]
model2.Parent = game.Players.LocalPlayer.Character
local gui2 = game:GetObjects(getcustomasset("NL2petGui.rbxm"))[1]

local base = model2.realBase
local guiatt = base.guiAttachment
guiatt.petGui:Destroy()
gui2.Parent = guiatt
task.wait(0.05)
base.BodyPosition:Destroy()
base.BodyGyro:Destroy()

-- config
-- evolution labels
gui2.mysticStormLabel.Visible = false
gui2.chaosFusionLabel.Visible = false
gui2.titanLabel.Visible = false
-- name and level
gui2.nameLabel.Text = "Gold Series Electrowraith"
gui2.levelLabel.TextColor3 = config.RarityColors.Legend
gui2.levelLabel.Visible = true
gui2.levelLabel.Text = "Level 1"

local RunService = game:GetService("RunService")
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

task.wait(0.05)

-- Vibecoded Part --

-- Player Made By Claude ofc
local speed = 1

local rig = model2
local frames = loadstring(readfile("Wraith Anim.luau"))().Animation
table.sort(frames, function(a, b) return a.Time < b.Time end)
local duration = frames[#frames].Time

local joints = {}
for _, d in ipairs(rig:GetDescendants()) do
	if d:IsA("Motor6D") and d.Part1 then
		joints[d.Part1.Name] = d
	end
end

local ii = true

local tracks, names = {}, {}
for _, f in ipairs(frames) do
	for name, cf in pairs(f.Data) do
		if joints[name] and not (ii and cf == CFrame.identity) then
			if not tracks[name] then
				tracks[name] = {}
				table.insert(names, name)
			end
			table.insert(tracks[name], {Time = f.Time, CF = cf})
		end
	end
end

local function sample(keys, t)
	local n = #keys
	local first, last = keys[1], keys[n]
	if n == 1 then return first.CF end

	if t < first.Time then
		local a0 = last.Time - duration
		return last.CF:Lerp(first.CF, (t - a0) / (first.Time - a0))
	end
	if t >= last.Time then
		local b1 = first.Time + duration
		return last.CF:Lerp(first.CF, (t - last.Time) / (b1 - last.Time))
	end

	for i = 1, n - 1 do
		local a, b = keys[i], keys[i + 1]
		if t >= a.Time and t < b.Time then
			return a.CF:Lerp(b.CF, (t - a.Time) / (b.Time - a.Time))
		end
	end
	return last.CF
end

local t = 0

RunService.PreRender:Connect(function(dt)
	t = (t + dt * speed) % duration
	for _, name in ipairs(names) do
		joints[name].Transform = sample(tracks[name], t)
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
