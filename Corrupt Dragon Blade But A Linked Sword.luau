if isfile("Corrupt3.rbxm") then
print("File Exists")
else
writefile("Corrupt3.rbxm", game:HttpGet("https://github.com/Ahma174/Tool/raw/refs/heads/main/Tool%20Models/Corrupt3.rbxm"))
end

-- Original Script Style By ttyyuu1234
function sandbox(var,func)
local env = getfenv(func)
local newenv = setmetatable({},{
__index = function(self,k)
if k=="script" then
return var
else
return env[k]
end
end,
})
setfenv(func,newenv)
return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = game:GetObjects(getcustomasset("Corrupt3.rbxm"))[1]
LocalScript2 = Instance.new("Script")
Tool0.Parent = mas
LocalScript2.Name = "attackKatanaScript"
LocalScript2.Parent = Tool0
table.insert(cors,sandbox(LocalScript2,function()
--Rescripted by Luckymaxer

Tool = script.Parent
Handle = Tool:WaitForChild("Handle")

Players = game:GetService("Players")
Debris = game:GetService("Debris")
RunService = game:GetService("RunService")

BaseUrl = "http://www.roblox.com/asset/?id="

Grips = {
Up = CFrame.new(0, -0.723999977, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
Out = CFrame.new(0, -0.723999977, 0, 1, 0, -0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08),
}

DamageValues = {
BaseDamage = 5,
SlashDamage = 10,
LungeDamage = 30,
}

Damage = DamageValues.BaseDamage

Sounds = {
Slash = Handle:WaitForChild("Slash"),
Lunge = Handle:WaitForChild("Lunge"),
Unsheath = Handle:WaitForChild("Unsheath"),
}

LastAttack = 0

ToolEquipped = false

Tool.Enabled = true

function SwordUp()
    Tool.Grip = Grips.Up
end

function SwordOut()
    Tool.Grip = Grips.Out
end

function IsTeamMate(Player1, Player2)
    return (Player1 and Player2 and not Player1.Neutral and not Player2.Neutral and Player1.TeamColor == Player2.TeamColor)
end

function TagHumanoid(humanoid, player)
    local Creator_Tag = Instance.new("ObjectValue")
    Creator_Tag.Name = "creator"
    Creator_Tag.Value = player
    Debris:AddItem(Creator_Tag, 2)
    Creator_Tag.Parent = humanoid
end

function UntagHumanoid(humanoid)
    for i, v in pairs(humanoid:GetChildren()) do
        if v:IsA("ObjectValue") and v.Name == "creator" then
            v:Destroy()
        end
    end
end

function Attack()
    Damage = DamageValues.SlashDamage
    Sounds.Slash:Play()
    local Anim = Instance.new("StringValue")
    Anim.Name = "toolanim"
    Anim.Value = "Slash"
    Anim.Parent = Tool
end

function Lunge()
    Damage = DamageValues.LungeDamage
    Sounds.Lunge:Play()
    local Anim = Instance.new("StringValue")
    Anim.Name = "toolanim"
    Anim.Value = "Lunge"
    Anim.Parent = Tool    
    local Force = Instance.new("BodyVelocity")
    Force.velocity = Vector3.new(0, 10, 0) 
    Force.maxForce = Vector3.new(0, 4000, 0)
    Debris:AddItem(Force, 0.5)
    Force.Parent = RootPart
    wait(0.25)
    SwordOut()
    wait(0.25)
    if Force and Force.Parent then
        Force:Destroy()
    end
    wait(0.5)
    SwordUp()
end

function Blow(Hit)
    if not Hit or not Hit.Parent or not CheckIfAlive() then
        return
    end
    local RightArm = (Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand"))
    if not RightArm then
        return
    end
    local RightGrip = RightArm:FindFirstChild("RightGrip")
    if not RightGrip or (RightGrip.Part0 ~= RightArm and RightGrip.Part1 ~= RightArm) or (RightGrip.Part0 ~= Handle and RightGrip.Part1 ~= Handle) then
        return
    end
    local character = Hit.Parent
    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid then
        return
    end
    local player = Players:GetPlayerFromCharacter(character)
    if player and (player == Player or IsTeamMate(Player, player)) then
        return
    end
    UntagHumanoid(humanoid)
    TagHumanoid(humanoid, Player)
    humanoid:TakeDamage(Damage)
end

function Activated()
    if not Tool.Enabled or not ToolEquipped or not CheckIfAlive() then
        return
    end
    Tool.Enabled = false
    local Tick = RunService.Stepped:wait()
    if (Tick - LastAttack) < 0.2 then
        Lunge()
    else
        Attack()
    end
    Damage = DamageValues.BaseDamage
    LastAttack = Tick
    Tool.Enabled = true
end

function CheckIfAlive()
    return (((Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and RootPart and RootPart.Parent and Player and Player.Parent) and true) or false)
end

function Equipped()
    Character = Tool.Parent
    Player = Players:GetPlayerFromCharacter(Character)
    Humanoid = Character:FindFirstChild("Humanoid")
    RootPart = Character:FindFirstChild("HumanoidRootPart")
    if not CheckIfAlive() then
        return
    end
    ToolEquipped = true
    Sounds.Unsheath:Play()
end

function Unequipped()
    ToolEquipped = false
end

SwordUp()

Handle.Touched:connect(Blow)

Tool.Activated:connect(Activated)
Tool.Equipped:connect(Equipped)
Tool.Unequipped:connect(Unequipped)
end))
for i,v in pairs(mas:GetChildren()) do
v.Parent = game:GetService("Players").LocalPlayer.Backpack
pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
spawn(function()
pcall(v)
end)
end
