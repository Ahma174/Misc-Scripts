-- I reformatted the code by myself AND ai didn't reformat it (why did I made this comment in the first place)
-- AI Helped on this and I remade those sections to make it look handmade 👍

if isfile("Aether Spirit Gui3.rbxm") then
    print("gui file already exists");
else
    writefile("Aether Spirit Gui3.rbxm", game:HttpGet("https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Gui's/Aether%20Spirit%20Gui3.rbxm"));
end
local gui = game:GetObjects(getcustomasset("Aether Spirit Gui3.rbxm"))[1]
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

-- the only reason I made this func is because of respawning
local function getc()
    return game.Players.LocalPlayer.Character
end
local DestroyButton = gui.MainFrame.DestroyButton
local button8 = gui.MainFrame.ScrollingFrame["8thButton"]
local button7 = gui.MainFrame.ScrollingFrame["7thButton"]
local button6 = gui.MainFrame.ScrollingFrame["6thButton"]
local button5 = gui.MainFrame.ScrollingFrame["5thButton"]
local button4 = gui.MainFrame.ScrollingFrame["4thButton"]
local button3 = gui.MainFrame.ScrollingFrame["3rdButton"]
local button2 = gui.MainFrame.ScrollingFrame["2ndButton"]
local button1 = gui.MainFrame.ScrollingFrame["1stButton"]
local theme1 = gui.MainFrame.ThemesFrame.PurpleThemeButton
local theme2 = gui.MainFrame.ThemesFrame.BlackThemeButton

local themetable = {
    Purple = {
        Frame = Color3.fromRGB(150, 70, 255),
        Buttons = Color3.fromRGB(175, 90, 255)
    };
    Black = {
        Frame = Color3.fromRGB(0, 0, 0),
        Buttons = Color3.fromRGB(0, 0, 0)
    };
};

local Script = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ahma174/Misc-Scripts/refs/heads/main/Debug/Aether%20Spirit%20Bunny%20Debug.luau"))

local offsets = {
    ["1"] = CFrame.new(5, 2, -3),
    ["2"] = CFrame.new(-5, 2, -3),
    ["3"] = CFrame.new(5, 2, 3),
    ["4"] = CFrame.new(-5, 2, 3),
    ["5"] = CFrame.new(2, 2, -5.5),
    ["6"] = CFrame.new(-2, 2, -5.5),
    ["7"] = CFrame.new(2, 2, 5.5),
    ["8"] = CFrame.new(-2, 2, 5.5)
};

local groundOffsets = {
    ["1"] = CFrame.new(5, -1.8, -3),
    ["2"] = CFrame.new(-5, -1.8, -3),
    ["3"] = CFrame.new(5, -1.8, 3),
    ["4"] = CFrame.new(-5, -1.8, 3),
    ["5"] = CFrame.new(2, -1.8, -5.5),
    ["6"] = CFrame.new(-2, -1.8, -5.5),
    ["7"] = CFrame.new(2, -1.8, 5.5),
    ["8"] = CFrame.new(-2, -1.8, 5.5)
};

button1.Activated:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ahma174/Misc-Scripts/refs/heads/main/Debug/Aether%20Spirit%20Bunny%20Debug.luau"))()
end)

button2.Activated:Connect(function()
    for i = 1, 2 do
        task.spawn(Script, offsets[tostring(i)])
    end
end)

button3.Activated:Connect(function()
    for i = 1, 3 do
        task.spawn(Script, offsets[tostring(i)])
    end
end)

button4.Activated:Connect(function()
    for i = 1, 4 do
        task.spawn(Script, offsets[tostring(i)])
    end
end)

button5.Activated:Connect(function()
    for i = 1, 5 do
        task.spawn(Script, offsets[tostring(i)])
    end
end)

button6.Activated:Connect(function()
    for i = 1, 6 do
        task.spawn(Script, offsets[tostring(i)])
    end
end)

button7.Activated:Connect(function()
    for i = 1, 7 do
        task.spawn(Script, offsets[tostring(i)])
    end
end)

button8.Activated:Connect(function()
    for _, v in pairs(offsets) do
        task.spawn(Script, v)
    end
end)

DestroyButton.Activated:Connect(function()
    for _, v in ipairs(getc():GetChildren()) do
        if v:IsA("Model") and v.Name == "Aether Spirit Bunny" then
            v:Destroy()
        end
    end
end)

theme1.Activated:Connect(function()
    gui.MainFrame.BackgroundColor3 = themetable.Purple.Frame
    gui.MainFrame.ThemesFrame.BackgroundColor3 = themetable.Purple.Frame
    button1.BackgroundColor3 = themetable.Purple.Buttons
    button2.BackgroundColor3 = themetable.Purple.Buttons
    button3.BackgroundColor3 = themetable.Purple.Buttons
    button4.BackgroundColor3 = themetable.Purple.Buttons
    button5.BackgroundColor3 = themetable.Purple.Buttons
    button6.BackgroundColor3 = themetable.Purple.Buttons
    button7.BackgroundColor3 = themetable.Purple.Buttons
    button8.BackgroundColor3 = themetable.Purple.Buttons
    DestroyButton.BackgroundColor3 = themetable.Purple.Buttons
end)

theme2.Activated:Connect(function()
    gui.MainFrame.BackgroundColor3 = themetable.Black.Frame
    gui.MainFrame.ThemesFrame.BackgroundColor3 = themetable.Black.Frame
    button1.BackgroundColor3 = themetable.Black.Buttons
    button2.BackgroundColor3 = themetable.Black.Buttons
    button3.BackgroundColor3 = themetable.Black.Buttons
    button4.BackgroundColor3 = themetable.Black.Buttons
    button5.BackgroundColor3 = themetable.Black.Buttons
    button6.BackgroundColor3 = themetable.Black.Buttons
    button7.BackgroundColor3 = themetable.Black.Buttons
    button8.BackgroundColor3 = themetable.Black.Buttons
    DestroyButton.BackgroundColor3 = themetable.Black.Buttons
end)
