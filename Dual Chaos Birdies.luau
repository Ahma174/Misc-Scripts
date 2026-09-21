--[[ 
   the model is saved by Dex ReContinued ;) 
   (absolute best dex project, you should try it)
]]

--[[ 
 GitHub Script Link: 
 https://raw.githubusercontent.com/Ahma174/Misc-Scripts/refs/heads/main/Dual%20Chaos%20Birdies.luau
]]

-- Code

if isfile("Dual Chaos Birdies.rbxm") then
  print("File Already Exists")
else
  local linkvar = "https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Models/Dual%20Chaos%20Birdies.rbxm"
  local request = request({
     Url = linkvar,
     Method = "GET"
  })
 writefile("Dual Chaos Birdies.rbxm", request.Body)
end

local model = getcustomasset("Dual Chaos Birdies.rbxm")

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
-- and this keyframe player is made by ChatGPT ofc
local animation = {
	{
		Time = 0,
		Poses = {
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base1 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LeftWing = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			RightWing = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LeftWing2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			RightWing2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
		}
	},
	{
		Time = 1,
		Poses = {
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base1 = CFrame.new(-1.5999999,-1.19999981,0.200000003,0.98480773,-0.173648149,0,0.173648149,0.98480773,0,0,0,1),
			Base2 = CFrame.new(1.79999995,1,-0.200000003,0.98480773,0.173648179,0,-0.173648179,0.98480773,0,0,0,1),
			LeftWing = CFrame.new(0,0,0,0.88302213,0.342020124,0.321393996,-0.321393758,0.939692616,-0.116977848,-0.342020363,0,0.939692557),
			RightWing = CFrame.new(0,0,0,0.88302213,-0.342020124,-0.321393996,0.321393758,0.939692616,-0.116977848,0.342020363,0,0.939692557),
			LeftWing2 = CFrame.new(0,0,0,0.707106769,-0.696364224,0.122787803,0.707106769,0.696364224,-0.122787803,0,0.173648179,0.98480773),
			RightWing2 = CFrame.new(0,0,0,0.707106769,0.696364284,-0.122787535,-0.707106769,0.696364284,-0.122787535,0,0.173647791,0.984807849),
		}
	},
	{
		Time = 2,
		Poses = {
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base1 = CFrame.new(-3.4000001,0,-0.200000003,0.98480773,0.173648149,0,-0.173648149,0.98480773,0,0,0,1),
			Base2 = CFrame.new(3.4000001,-1.1920929e-07,0.200000003,0.98480773,-0.173648149,0,0.173648149,0.98480773,0,0,0,1),
		}
	},
	{
		Time = 3,
		Poses = {
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base1 = CFrame.new(-1.5999999,1.20000017,0.200000003,0.98480773,-0.173648149,0,0.173648149,0.98480773,0,0,0,1),
			Base2 = CFrame.new(1.79999971,-1.20000005,-0.200000003,0.98480773,0.173648149,0,-0.173648149,0.98480773,0,0,0,1),
			LeftWing = CFrame.new(0,0,0,0.779644191,-0.615854204,0.113483623,0.62203753,0.782527447,-0.0268327575,-0.0722789913,0.0915110707,0.993177474),
			RightWing = CFrame.new(0,0,0,0.779644191,0.615854204,-0.113483623,-0.62203753,0.782527447,-0.026832819,0.072279036,0.091511026,0.993177414),
			LeftWing2 = CFrame.new(0,0,0,0.821586907,-0.0678841323,0.566027164,0.249750331,0.935392976,-0.250329435,-0.512464345,0.347032845,0.785460651),
			RightWing2 = CFrame.new(-0.160250589,-0.0349720567,0.114440799,0.836039722,-0.0177309811,-0.548382163,-0.133510217,0.962861359,-0.234676257,0.532177031,0.269413352,0.802623272),
		}
	},
	{
		Time = 4,
		Poses = {
			realBase = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base1 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			Base2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LeftWing = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			RightWing = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			LeftWing2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
			RightWing2 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),
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