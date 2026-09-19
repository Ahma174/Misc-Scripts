--[[ 
   the model is saved by Dex ReContinued ;) 
   (absolute best dex project, you should try it)
]]

--[[ 
 GitHub Script Link: 
 https://raw.githubusercontent.com/Ahma174/Misc-Scripts/refs/heads/main/Relentless%20Nightcrawler.luau
]]

-- Code

if isfile("Relentless Nightcrawler.rbxm") then
  print("File Already Exists")
else
  local linkvar = "https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Models/Relentless%20Nightcrawler.rbxm"
  local request = request({
     Url = linkvar,
     Method = "GET"
  })
 writefile("Relentless Nightcrawler.rbxm", request.Body)
end

local model = getcustomasset("Relentless Nightcrawler.rbxm")

local GetObjects = game:GetObjects(model)

local model2 = GetObjects[1]
model2.Parent = game.Players.LocalPlayer.Character

local base = model2.realBase
base.BodyPosition:Destroy()
base.BodyGyro:Destroy()

local RunService = game:GetService("RunService")
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

task.wait(0.05)

-- Vibecoded Part --

-- Anim is now universal and works in every game
-- and this keyframe player is made by Claude ofc
local animation = {
	{
		Time = 0,
		Poses = {
			Base = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LeftNeck = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			RightNeck = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
	{
		Time = 0.25,
		Poses = {
			Base2 = CFrame.new(0.200000763,0.599999726,2.53286674e-15,0.98480773,0.173648179,-1.42108547e-14,-0.173648179,0.98480773,5.15525428e-16,1.40844799e-14,1.9599957e-15,1),
			LeftNeck = CFrame.new(0.0631996095,-0.184360608,0.0448034406,0.98124063,-0.0226456225,0.191452354,0.109623984,0.882440925,-0.457471937,-0.158585653,0.469877809,0.868369401),
			RightNeck = CFrame.new(-0.0769752786,-0.145473778,-0.113622375,0.977761924,-0.204423666,-0.0468250625,0.209421232,0.939857006,0.269836217,-0.0111520467,-0.273641735,0.961767018),
		}
	},
	{
		Time = 0.3,
		Poses = {
			Base2 = CFrame.new(0.200000763,0.599999726,2.53286674e-15,0.98480773,0.173648179,-1.42108547e-14,-0.173648179,0.98480773,5.15525428e-16,1.40844799e-14,1.9599957e-15,1),
			LeftNeck = CFrame.new(0.0631996095,-0.184360608,0.0448034406,0.98124063,-0.0226456225,0.191452354,0.109623984,0.882440925,-0.457471937,-0.158585653,0.469877809,0.868369401),
			RightNeck = CFrame.new(-0.0769752786,-0.145473778,-0.113622375,0.977761924,-0.204423666,-0.0468250625,0.209421232,0.939857006,0.269836217,-0.0111520467,-0.273641735,0.961767018),
		}
	},
	{
		Time = 0.5,
		Poses = {
			Base = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LeftNeck = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			RightNeck = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
	{
		Time = 0.75,
		Poses = {
			Base = CFrame.new(0,0,0,1,7.09289179e-06,-3.05212325e-06,-7.09288997e-06,1,5.89033732e-07,3.05212734e-06,-5.89012075e-07,1),
			Base2 = CFrame.new(-0.200000763,0.599999726,-1.17956843e-14,0.98480773,-0.173648179,-7.00827471e-14,0.173648179,0.98480773,-3.70153356e-15,6.9660796e-14,-8.52444302e-15,1),
			LeftNeck = CFrame.new(0.0592845678,-0.0943118781,-0.16617161,0.991555631,0.064815551,-0.112322383,-0.0256631561,0.947081864,0.319964588,0.127117172,-0.314380169,0.940747738),
			RightNeck = CFrame.new(0.166429356,-0.0884372592,0.210923493,0.977760851,0.209426671,-0.0111461096,-0.204427108,0.939855218,-0.273645222,-0.0468328781,0.269838154,0.961766124),
		}
	},
	{
		Time = 0.8,
		Poses = {
			Base = CFrame.new(0,0,0,1,7.09289179e-06,-3.05212325e-06,-7.09288997e-06,1,5.89033732e-07,3.05212734e-06,-5.89012075e-07,1),
			Base2 = CFrame.new(-0.200000763,0.599999726,-1.17956843e-14,0.98480773,-0.173648179,-7.00827471e-14,0.173648179,0.98480773,-3.70153356e-15,6.9660796e-14,-8.52444302e-15,1),
			LeftNeck = CFrame.new(0.0592845678,-0.0943118781,-0.16617161,0.991555631,0.064815551,-0.112322383,-0.0256631561,0.947081864,0.319964588,0.127117172,-0.314380169,0.940747738),
			RightNeck = CFrame.new(0.166429356,-0.0884372592,0.210923493,0.977760851,0.209426671,-0.0111461096,-0.204427108,0.939855218,-0.273645222,-0.0468328781,0.269838154,0.961766124),
		}
	},
	{
		Time = 1,
		Poses = {
			Base = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LeftNeck = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			RightNeck = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
	{
		Time = 1.5,
		Poses = {
			Base = CFrame.new(0,0,0,1,-3.1905322e-06,-5.83445262e-06,-2.12944587e-06,-0.984822273,0.17356579,-6.29966644e-06,-0.17356579,-0.984822273),
			RightNeck = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
	{
		Time = 1.65,
		Poses = {
			Base2 = CFrame.new(-8.52019938e-15,0.714025021,0.400000095,1,8.84448808e-18,-2.13162821e-14,-8.84448808e-18,1,-5.2717257e-25,2.13162821e-14,5.27172767e-25,1),
			LeftNeck = CFrame.new(-0.173588753,-0.767676473,0.22445263,0.67845273,-0.71584183,0.165143564,0.659765899,0.692581177,0.291616708,-0.323126763,-0.088892065,0.942171574),
			RightNeck = CFrame.new(0.600364208,-0.550462186,0.0798258185,0.72987318,0.58913064,-0.346713364,-0.40041095,0.77953428,0.481661052,0.55403626,-0.212723657,0.804855585),
		}
	},
	{
		Time = 1.8,
		Poses = {
			Base2 = CFrame.new(-2.23085625e-14,1.5223,0.62857151,1,1.49666983e-17,-3.55271368e-14,-1.49666983e-17,1,-8.92084735e-25,3.55271368e-14,8.92085228e-25,1),
			LeftNeck = CFrame.new(-0.162144661,-1.55819416,0.508200943,-0.168918371,-0.985276759,0.0263867062,0.781424344,-0.117557265,0.612826526,-0.600701749,0.124136865,0.789776802),
			RightNeck = CFrame.new(1.10182774,-1.18532729,0.305815995,0.0176364183,0.979224384,-0.202011317,-0.2929115,0.198238388,0.935363233,0.955976903,0.0426749811,0.290322304),
		}
	},
	{
		Time = 2,
		Poses = {
			Base = CFrame.new(0,0,0,1,-2.42179976e-06,-6.35029164e-06,-2.6985017e-06,-0.999034107,-0.043941468,-6.23774076e-06,0.043941468,-0.999034107),
			Base2 = CFrame.new(1.80411235e-17,2.5999999,1.07533466e-24,1,6.9388939e-18,-1.42108547e-14,-6.9388939e-18,1,-4.13590405e-25,1.42108547e-14,4.13590503e-25,1),
			LeftNeck = CFrame.new(0.718618572,-2.28549719,1.01000643,-0.872317851,-0.190715984,-0.450209975,-0.13580513,-0.790050089,0.597810864,-0.469700515,0.582621872,0.663274586),
			RightNeck = CFrame.new(1.02888393,-2.08048916,1.17181146,-0.575267911,0.571704388,0.584996521,0.52883172,-0.285662085,0.799208462,0.624022305,0.769123733,-0.138003185),
		}
	},
	{
		Time = 2.25,
		Poses = {
			Base = CFrame.new(-6.76667316e-12,-3.79005951e-06,6.44001716e-07,1,-2.57168017e-06,-6.38269921e-06,-2.84966427e-06,-0.999034107,-0.0439419299,-6.26352949e-06,0.0439419299,-0.999034107),
			Base2 = CFrame.new(0.59991616,3.40000916,5.95283507e-14,0.98480773,0.173648149,-2.20828645e-13,-0.173648149,0.98480773,2.14559188e-14,2.21199551e-13,1.72165325e-14,1),
			LeftNeck = CFrame.new(0.718618572,-2.28549719,1.01000643,-0.872317851,-0.190715984,-0.450209975,-0.13580513,-0.790050089,0.597810864,-0.469700515,0.582621872,0.663274586),
			RightNeck = CFrame.new(1.02887869,-2.08050084,1.17183816,-0.575267017,0.571704865,0.584996939,0.528831899,-0.285662681,0.799208164,0.624022961,0.769123137,-0.138003454),
		}
	},
	{
		Time = 2.3,
		Poses = {
			Base = CFrame.new(-6.76667316e-12,-3.79005951e-06,6.44001716e-07,1,-2.57168017e-06,-6.38269921e-06,-2.84966427e-06,-0.999034107,-0.0439419299,-6.26352949e-06,0.0439419299,-0.999034107),
			Base2 = CFrame.new(0.59991616,3.40000916,5.95283507e-14,0.98480773,0.173648149,-2.20828645e-13,-0.173648149,0.98480773,2.14559188e-14,2.21199551e-13,1.72165325e-14,1),
			LeftNeck = CFrame.new(0.718618572,-2.28549719,1.01000643,-0.872317851,-0.190715984,-0.450209975,-0.13580513,-0.790050089,0.597810864,-0.469700515,0.582621872,0.663274586),
			RightNeck = CFrame.new(1.02887869,-2.08050084,1.17183816,-0.575267017,0.571704865,0.584996939,0.528831899,-0.285662681,0.799208164,0.624022961,0.769123137,-0.138003454),
		}
	},
	{
		Time = 2.5,
		Poses = {
			Base = CFrame.new(0,0,0,1,-2.42179976e-06,-6.35029164e-06,-2.6985017e-06,-0.999034107,-0.043941468,-6.23774076e-06,0.043941468,-0.999034107),
			Base2 = CFrame.new(1.80411235e-17,2.5999999,1.07533466e-24,1,6.9388939e-18,-1.42108547e-14,-6.9388939e-18,1,-4.13590405e-25,1.42108547e-14,4.13590503e-25,1),
			LeftNeck = CFrame.new(0.718618572,-2.28549719,1.01000643,-0.872317851,-0.190715984,-0.450209975,-0.13580513,-0.790050089,0.597810864,-0.469700515,0.582621872,0.663274586),
			RightNeck = CFrame.new(1.02888393,-2.08048916,1.17181146,-0.575267911,0.571704388,0.584996521,0.52883172,-0.285662085,0.799208462,0.624022305,0.769123733,-0.138003185),
		}
	},
	{
		Time = 2.75,
		Poses = {
			Base = CFrame.new(0,0,0,1,-2.42179976e-06,-6.35029164e-06,-2.6985017e-06,-0.999034107,-0.043941468,-6.23774076e-06,0.043941468,-0.999034107),
			Base2 = CFrame.new(-0.599991977,3.39999962,-3.71941891e-14,0.98480773,-0.173648179,-8.52651283e-14,0.173648179,0.98480773,-4.10712088e-15,8.46829524e-14,-1.07614104e-14,1),
			LeftNeck = CFrame.new(0.718618572,-2.28549719,1.01000643,-0.872317851,-0.190715984,-0.450209975,-0.13580513,-0.790050089,0.597810864,-0.469700515,0.582621872,0.663274586),
			RightNeck = CFrame.new(1.02888393,-2.08048916,1.17181146,-0.575267911,0.571704388,0.584996521,0.52883172,-0.285662085,0.799208462,0.624022305,0.769123733,-0.138003185),
		}
	},
	{
		Time = 2.8,
		Poses = {
			Base = CFrame.new(0,0,0,1,-2.42179976e-06,-6.35029164e-06,-2.6985017e-06,-0.999034107,-0.043941468,-6.23774076e-06,0.043941468,-0.999034107),
			Base2 = CFrame.new(-0.599991977,3.39999962,-3.71941891e-14,0.98480773,-0.173648179,-8.52651283e-14,0.173648179,0.98480773,-4.10712088e-15,8.46829524e-14,-1.07614104e-14,1),
			LeftNeck = CFrame.new(0.718618572,-2.28549719,1.01000643,-0.872317851,-0.190715984,-0.450209975,-0.13580513,-0.790050089,0.597810864,-0.469700515,0.582621872,0.663274586),
			RightNeck = CFrame.new(1.02888393,-2.08048916,1.17181146,-0.575267911,0.571704388,0.584996521,0.52883172,-0.285662085,0.799208462,0.624022305,0.769123733,-0.138003185),
		}
	},
	{
		Time = 3,
		Poses = {
			Base = CFrame.new(0,0,0,1,-2.42179976e-06,-6.35029164e-06,-2.6985017e-06,-0.999034107,-0.043941468,-6.23774076e-06,0.043941468,-0.999034107),
			Base2 = CFrame.new(1.80411235e-17,2.5999999,1.07533466e-24,1,6.9388939e-18,-1.42108547e-14,-6.9388939e-18,1,-4.13590405e-25,1.42108547e-14,4.13590503e-25,1),
			LeftNeck = CFrame.new(0.718618572,-2.28549719,1.01000643,-0.872317851,-0.190715984,-0.450209975,-0.13580513,-0.790050089,0.597810864,-0.469700515,0.582621872,0.663274586),
			RightNeck = CFrame.new(1.02888393,-2.08048916,1.17181146,-0.575267911,0.571704388,0.584996521,0.52883172,-0.285662085,0.799208462,0.624022305,0.769123733,-0.138003185),
		}
	},
	{
		Time = 3.5,
		Poses = {
			Base = CFrame.new(0,0,0,1,-2.23663869e-06,-6.00726571e-06,-2.77243203e-06,-0.995875835,-0.0907263756,-5.77956871e-06,0.0907263756,-0.995875835),
			Base2 = CFrame.new(2.13298126e-14,1.29999995,-1,1,1.04083409e-17,-2.13162821e-14,-1.04083409e-17,1,-6.20385558e-25,2.13162821e-14,6.20385805e-25,1),
			LeftNeck = CFrame.new(1.28666377,-0.792715967,0.637271047,-0.251532346,0.749585569,-0.612252355,-0.967845261,-0.196541369,0.156993762,-0.00265265559,0.632054567,0.774919331),
			RightNeck = CFrame.new(-0.28004545,-1.09241545,1.19090748,0.10936594,-0.339665622,0.934166133,0.961892188,0.273104757,-0.0133102061,-0.250604212,0.900022805,0.356590062),
		}
	},
	{
		Time = 4,
		Poses = {
			Base = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LeftNeck = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			RightNeck = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
}

local joints = {}

for name in pairs(animation[1].Poses) do
        local part = model2:FindFirstChild(name, true)

        if part then
                for _, obj in ipairs(model2:GetDescendants()) do
                        if obj:IsA("Motor6D") and obj.Part1 == part then
                                joints[name] = obj
                                break
                        end
                end
        end
end

local animationTime = 0
local animationSpeed = 1
local duration = 4

RunService.RenderStepped:Connect(function(dt)
        animationTime += dt * animationSpeed

        if animationTime >= duration then
                animationTime -= duration
        end

        local frameA
        local frameB

        for i = 1, #animation - 1 do
                if animationTime >= animation[i].Time
                        and animationTime < animation[i + 1].Time then

                        frameA = animation[i]
                        frameB = animation[i + 1]

                        break
                end
        end

        if not frameA then
                frameA = animation[#animation - 1]
                frameB = animation[#animation]
        end

        local alpha =
                (animationTime - frameA.Time) /
                (frameB.Time - frameA.Time)

        for name, joint in pairs(joints) do
                local poseA = frameA.Poses[name] or CFrame.new()
                local poseB = frameB.Poses[name] or CFrame.new()

                joint.Transform = poseA:Lerp(poseB, alpha)
        end
end)

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.D = 1000
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.P = 20000
bodyGyro.D = 1000
bodyGyro.Parent = base

local flyingOffset = CFrame.new(5, 0, -3)
local groundOffset = 1.5

local rayParams = RaycastParams.new()
rayParams.FilterType = Enum.RaycastFilterType.Exclude
rayParams.FilterDescendantsInstances = {
	game.Players.LocalPlayer.Character,
	model2
}

RunService.RenderStepped:Connect(function()
	local targetCFrame = rootPart.CFrame * flyingOffset
	local targetPos = targetCFrame.Position

	local rayOrigin = Vector3.new(
		targetPos.X,
		targetPos.Y + 10,
		targetPos.Z
	)

	local rayDirection = Vector3.new(0, -100, 0)
	local result = workspace:Raycast(rayOrigin, rayDirection, rayParams)

	if result then
		targetPos = Vector3.new(
			targetPos.X,
			result.Position.Y + groundOffset,
			targetPos.Z
		)
	end

	bodyPos.Position = targetPos

local velocity = rootPart.AssemblyLinearVelocity
local flatVelocity = Vector3.new(velocity.X, 0, velocity.Z)

if flatVelocity.Magnitude > 1 then
	bodyGyro.CFrame = CFrame.lookAt(
		base.Position,
		base.Position + flatVelocity.Unit
	)
else
	bodyGyro.CFrame = CFrame.lookAt(
		base.Position,
		Vector3.new(
			rootPart.Position.X,
			base.Position.Y,
			rootPart.Position.Z
		)
	)
end
end)