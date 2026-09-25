-- didn't used ninja legends 2 labels because the game is down and unobtainable
--[[ 
   the model is saved by Dex ReContinued ;) 
   (absolute best dex project, you should try it)
]]

--[[ 
 GitHub Script Link: 
 https://raw.githubusercontent.com/Ahma174/Misc-Scripts/refs/heads/main/Dark%20Revelations%20Titan.luau
]]

-- Code

if isfile("Dark Revelations Titan.rbxm") and isfile("face5.png") then
 print("Files Already Exist")
else
 local linkvar = "https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Models/Dark%20Revelations%20Titan.rbxm"
 local linkvar2 = "https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Entities/Cracked%20Haha.png"
print(type(linkvar2))
 local modelr = request({
   Url = linkvar,
   Method = "GET"
 })
 local facer = request({
   Url = linkvar2,
   Method = "GET"
 })
 writefile("face5.png", facer.Body)
 writefile("Dark Revelations Titan.rbxm", modelr.Body)
end

local facei = getcustomasset("face5.png")
local model = getcustomasset("Dark Revelations Titan.rbxm")

local model2 = game:GetObjects(model)[1]
model2.Parent = game.Players.LocalPlayer.Character

local RunService = game:GetService("RunService")
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
local base = model2.realBase
base.BodyPosition:Destroy()
base.BodyGyro:Destroy()
model2.eyePart.eyes.ColorMap = facei
model2.eyePart2.eyes.ColorMap = facei

task.wait(0.05)

-- Vibecoded Part --

-- Universal Anim Support
-- Modified the Ultra Doom Colossus one to this and original ultra doom anims by Claude ofc
local animations = {

	Idle = {
	{
		Time = 0,
		Poses = {
			Base = CFrame.identity,
			Base2 = CFrame.identity,
			LargeHorns = CFrame.identity,
			LegPart1 = CFrame.identity,
			LegPart2 = CFrame.identity,
			LegPart3 = CFrame.identity,
			LegPart4 = CFrame.identity,
			Spike1 = CFrame.identity,
			Spike10 = CFrame.identity,
			Spike11 = CFrame.identity,
			Spike12 = CFrame.identity,
			Spike13 = CFrame.identity,
			Spike14 = CFrame.identity,
			Spike2 = CFrame.identity,
			Spike3 = CFrame.identity,
			Spike4 = CFrame.identity,
			Spike5 = CFrame.identity,
			Spike6 = CFrame.identity,
			Spike7 = CFrame.identity,
			Spike8 = CFrame.identity,
			Spike9 = CFrame.identity,
			Tail = CFrame.identity,
			eyePart = CFrame.identity,
			eyePart2 = CFrame.identity,
			realBase = CFrame.identity,
		}
	}
},

	Walk = {
	{
		Time = 0,
		Poses = {
			Base = CFrame.new(0,0,0,0.939692616,0,-0.342020124,0,1,0,0.342020124,0,0.939692616),
			Base2 = CFrame.new(0,0,0,0.866295755,0.0325920843,0.498467088,0.0165474042,0.995449305,-0.0938451365,-0.499257326,0.0895459801,0.861814141),
			LargeHorns = CFrame.new(0,0,0,0.98480773,0.171010077,0.0301536545,-0.173648179,0.969846308,0.171009868,0,-0.17364797,0.984807789),
			LegPart1 = CFrame.new(0.810175121,0.157813743,0.19669795,0.635700226,-0.16426301,0.754256487,0.249595642,0.968349993,0.000525134732,-0.730470538,0.187925309,0.656579673),
			LegPart2 = CFrame.new(0.890257835,0.0313849598,-0.080535382,0.642815292,-0.338949859,0.686950922,0.344583511,0.928870857,0.135871589,-0.684142351,0.149371624,0.713888884),
			LegPart3 = CFrame.new(0,0,0,0.998571336,0.0148420781,0.0513325147,-0.00614577252,0.986176312,-0.165585369,-0.0530805402,0.165033326,0.984858572),
			LegPart4 = CFrame.new(-0.0649604276,0.18406491,-0.0436061732,0.993632615,-0.0108048888,-0.112149306,0.0466119461,0.945635259,0.321871519,0.10257455,-0.32504952,0.940117657),
			Spike1 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike10 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike11 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike12 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike13 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike14 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike3 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike4 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike5 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike6 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike7 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike8 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike9 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Tail = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			eyePart = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			eyePart2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
	{
		Time = 0.449999988,
		Poses = {
			Base = CFrame.new(-6.76005584e-07,0.296942502,-4.71592648e-06,0.995587826,-0.0871557593,-0.0347665921,0.0871026665,0.99619472,-0.00304169487,0.034899395,1.13960112e-08,0.999390841),
			Base2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LargeHorns = CFrame.new(0,0,0,0.986276329,-0.155486807,0.0555232577,0.157228261,0.987151444,-0.0284835547,-0.0503810495,0.0368224829,0.998051047),
			LegPart1 = CFrame.new(-0.176879346,0.296337306,0.139632732,0.983599603,0.103458345,-0.147743493,-0.103570722,0.994597793,0.00695335446,0.147664726,0.00846258365,0.989001274),
			LegPart2 = CFrame.new(-0.207573384,-0.136678919,-0.183663964,0.923111498,0.0495154746,-0.381331116,-0.258684695,0.813697577,-0.520555973,0.284512609,0.579175711,0.76394248),
			LegPart4 = CFrame.new(-0.00911365077,-0.175632671,-0.0629462823,0.998426914,0.0431275591,0.0358287469,-0.028621614,0.941521764,-0.335734427,-0.0482129529,0.334180832,0.94127506),
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
	{
		Time = 0.75,
		Poses = {
			Base = CFrame.new(0,0,0,0.98480773,2.72941947e-11,0.173648342,-9.19114958e-12,1,-1.05055305e-10,-0.173648342,1.01863247e-10,0.98480773),
			Base2 = CFrame.new(0,0,0,0.765439034,-0.0729985461,-0.639354587,0.0165474042,0.995449305,-0.0938451365,0.643295646,0.0612530746,0.763163686),
			LargeHorns = CFrame.new(0,0,0,0.998770714,0.0495686568,-0.000194668843,-0.0495647378,0.998624623,-0.0170952827,-0.000652989082,0.017083915,0.999853849),
			LegPart1 = CFrame.new(-0.828594208,0.186549664,0.0134339631,0.649693549,0.207316101,-0.731381118,-0.360084802,0.93124342,-0.055898387,0.669505239,0.299676061,0.679674208),
			LegPart2 = CFrame.new(-0.93542403,0.162424654,-0.0474472642,0.337977499,0.264925152,-0.903097928,-0.3846744,0.914638162,0.124349035,0.858950973,0.305371463,0.411037058),
			LegPart3 = CFrame.new(-0.00256253011,0.187369272,-0.0699012876,0.998571336,-0.0128126508,0.0518762991,-0.00614577252,0.936846375,0.349687219,-0.0530805402,-0.349506438,0.935429156),
			LegPart4 = CFrame.new(0.000104555627,-0.202399269,0.120022401,0.999264836,-0.0376792811,-0.00707398029,0.0348909684,0.970276594,-0.23947002,0.0158867761,0.23904714,0.970877945),
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
	{
		Time = 1.10000002,
		Poses = {
			Base = CFrame.new(-3.99371493e-06,0.391325831,9.60426405e-07,0.993768036,0.0871557295,-0.0694909468,-0.0869434252,0.99619472,0.00607968168,0.0697563961,-1.21263488e-08,0.997564077),
			Base2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LargeHorns = CFrame.new(0,0,0,0.961653709,0.274234056,-0.0042257621,-0.272284091,0.956438243,0.105295889,0.032917399,-0.100107573,0.994431973),
			LegPart1 = CFrame.new(-0.0546920896,-0.119534604,-0.0286229551,0.998515725,0.0434497111,-0.0328407213,-0.0519644096,0.940602541,-0.33550933,0.0163122825,0.336717874,0.941464245),
			LegPart2 = CFrame.new(-0.0821413547,0.230479196,0.00153534487,0.969405591,0.0427140892,-0.241719529,-0.0176180899,0.994311154,0.105047449,0.244831428,-0.0975749493,0.9646433),
			LegPart3 = CFrame.new(0.000331416493,-0.119671583,-0.0942050666,0.998188376,-0.0345276669,0.0492728762,0.0449877977,0.972107291,-0.230181366,-0.0399508998,0.231981039,0.971899569),
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
	{
		Time = 1.5,
		Poses = {
			Base = CFrame.new(0,0,0,0.939692616,0,-0.342020124,0,1,0,0.342020124,0,0.939692616),
			Base2 = CFrame.new(0,0,0,0.866295755,0.0325920843,0.498467088,0.0165474042,0.995449305,-0.0938451365,-0.499257326,0.0895459801,0.861814141),
			LargeHorns = CFrame.new(0,0,0,0.98480773,0.171010077,0.0301536545,-0.173648179,0.969846308,0.171009868,0,-0.17364797,0.984807789),
			LegPart1 = CFrame.new(0.810175121,0.157813743,0.19669795,0.635700226,-0.16426301,0.754256487,0.249595642,0.968349993,0.000525134732,-0.730470538,0.187925309,0.656579673),
			LegPart2 = CFrame.new(0.890257835,0.0313849598,-0.080535382,0.642815292,-0.338949859,0.686950922,0.344583511,0.928870857,0.135871589,-0.684142351,0.149371624,0.713888884),
			LegPart3 = CFrame.new(0,0,0,0.998571336,0.0148420781,0.0513325147,-0.00614577252,0.986176312,-0.165585369,-0.0530805402,0.165033326,0.984858572),
			LegPart4 = CFrame.new(-0.0649604276,0.18406491,-0.0436061732,0.993632615,-0.0108048888,-0.112149306,0.0466119461,0.945635259,0.321871519,0.10257455,-0.32504952,0.940117657),
			Spike1 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike10 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike11 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike12 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike13 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike14 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike3 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike4 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike5 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike6 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike7 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike8 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Spike9 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Tail = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			eyePart = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			eyePart2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
},

}

local joints = {}
for _, d in ipairs(model2:GetDescendants()) do
	if d:IsA("Motor6D") then
		if d.Part1 then
			joints[d.Part1.Name] = d
		end
		joints[d.Name] = joints[d.Name] or d
	end
end

local tracks = {}
local lengths = {}
for animName, keyframes in pairs(animations) do
	local poseTracks = {}
	local length = 0
	for _, kf in ipairs(keyframes) do
		length = math.max(length, kf.Time)
		for poseName, cf in pairs(kf.Poses) do
			poseTracks[poseName] = poseTracks[poseName] or {}
			table.insert(poseTracks[poseName], {Time = kf.Time, CFrame = cf})
		end
	end
	for _, list in pairs(poseTracks) do
		table.sort(list, function(a, b)
			return a.Time < b.Time
		end)
	end
	tracks[animName] = poseTracks
	lengths[animName] = length
end

local function sample(list, time)
	if time <= list[1].Time then
		return list[1].CFrame
	end
	for i = 2, #list do
		local a = list[i - 1]
		local b = list[i]
		if time <= b.Time then
			local span = b.Time - a.Time
			if span <= 0 then
				return b.CFrame
			end
			return a.CFrame:Lerp(b.CFrame, (time - a.Time) / span)
		end
	end
	return list[#list].CFrame
end

local currentAnim = "Idle"
local animTime = 0

local originalTransforms = {}
local previousTransforms = {}

for _, motor in pairs(joints) do
	originalTransforms[motor] = motor.Transform
end

local blendTime = 0
local blendDuration = 0.2

local function play(name)
	if name == currentAnim then
		return
	end

	previousTransforms = {}

	for _, motor in pairs(joints) do
		previousTransforms[motor] = motor.Transform
	end

	currentAnim = name
	animTime = 0
	blendTime = 0
end

local function updateAnimation(dt)
	blendTime = math.min(blendTime + dt, blendDuration)

	local alpha = 1

	if blendDuration > 0 then
		alpha = blendTime / blendDuration
	end

	if currentAnim == "Idle" then
		for poseName, motor in pairs(joints) do
			local previous = previousTransforms[motor]
			local original = originalTransforms[motor]

			if previous then
				motor.Transform = previous:Lerp(original, alpha)
			else
				motor.Transform = original
			end
		end

		return
	end

	local length = lengths[currentAnim]

	if not length or length <= 0 then
		return
	end

	animTime = (animTime + dt) % length

	for poseName, motor in pairs(joints) do
		local list = tracks[currentAnim][poseName]

		if list then
			local target = sample(list, animTime)
			local previous = previousTransforms[motor]

			if previous and alpha < 1 then
				motor.Transform = previous:Lerp(target, alpha)
			else
				motor.Transform = target
			end
		else
			motor.Transform = originalTransforms[motor]
		end
	end
end

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local petOffset = CFrame.new(5, -0.7, -3)

local bobMax = 0
local bobT = 0
local bobSpeed = 0
local bobUp = false
local tiltAngle = 5

RunService.RenderStepped:Connect(function(dt)
	local isMoving = humanoid.MoveDirection.Magnitude > 0.01

	bodyPos.Position = (
		rootPart.CFrame
		* CFrame.new(
			petOffset.X,
			petOffset.Y + bobT,
			petOffset.Z
		)
	).Position

	if isMoving then
		bodyGyro.CFrame = rootPart.CFrame

		bobMax = 0
		bobSpeed = 0

		play("Walk")
	else
		bodyGyro.CFrame = CFrame.new(
			base.Position,
			Vector3.new(
				rootPart.Position.X,
				base.Position.Y,
				rootPart.Position.Z
			)
		)

		bobMax = 0
		bobSpeed = 0

		play("Idle")
	end

	updateAnimation(dt)
end)
