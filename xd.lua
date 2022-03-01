-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local credits = Instance.new("TextLabel")
local Qforspeed = Instance.new("TextButton")
local JumpINF = Instance.new("TextButton")
local antiafk = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 0.750
main.BorderSizePixel = 0
main.Position = UDim2.new(0.298578203, 0, 0.312709033, 0)
main.Size = UDim2.new(0, 396, 0, 221)
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 0.750
title.Size = UDim2.new(0, 396, 0, 36)
title.Font = Enum.Font.GothamBold
title.Text = "ezgg Hub"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

credits.Name = "credits"
credits.Parent = main
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 0.750
credits.Position = UDim2.new(0, 0, 0.837104082, 0)
credits.Size = UDim2.new(0, 396, 0, 36)
credits.Font = Enum.Font.ArialBold
credits.Text = "GUI: MaGiXx               Scripter: RenderQ"
credits.TextColor3 = Color3.fromRGB(0, 0, 0)
credits.TextScaled = true
credits.TextSize = 14.000
credits.TextWrapped = true

Qforspeed.Name = "Q for speed"
Qforspeed.Parent = main
Qforspeed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Qforspeed.BackgroundTransparency = 0.950
Qforspeed.BorderSizePixel = 0
Qforspeed.Position = UDim2.new(0.351010144, 0, 0.221719459, 0)
Qforspeed.Font = Enum.Font.ArialBold
Qforspeed.Size = UDim2.new(0, 117, 0, 27)
Qforspeed.Text = "Q for speed"
Qforspeed.TextColor3 = Color3.fromRGB(0, 0, 0)
Qforspeed.TextScaled = true
Qforspeed.TextSize = 14.000
Qforspeed.TextWrapped = true
Qforspeed.MouseButton1Click:connect(function()
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local hum = char:FindFirstChild("HumanoidRootPart")
mouse.KeyDown:connect(function(key)
    if key == "q"  then
        loop = true
        while loop do
            hum.CFrame = hum.CFrame + hum.CFrame.lookVector * 10
            wait()
        end
        end
end)

mouse.KeyUp:connect(function(key)
    if key == "q"  then
        loop = false
    end
end)
end)
--Made by RenderQ
JumpINF.Name = "JumpINF"
JumpINF.Parent = main
JumpINF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpINF.BackgroundTransparency = 0.950
JumpINF.BorderSizePixel = 0
JumpINF.Position = UDim2.new(0.0227273032, 0, 0.221719459, 0)
JumpINF.Font = Enum.Font.ArialBold
JumpINF.Size = UDim2.new(0, 117, 0, 27)
JumpINF.Text = "JumpINF"
JumpINF.TextColor3 = Color3.fromRGB(0, 0, 0)
JumpINF.TextScaled = true
JumpINF.TextSize = 14.000
JumpINF.TextWrapped = true
JumpINF.MouseButton1Click:connect(function()
--Made by MaGiXx
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)