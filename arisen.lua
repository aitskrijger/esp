local Player = game.Workspace.xShxdowVx
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
local health = Player.Health
local Health = math.round(health.Value)
local function ValueChanged()
	Health = math.round(health.Value)
	print(Health)
end

health:GetPropertyChangedSignal("Value"):Connect(ValueChanged)
    
local RightCorner = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

RightCorner.Name = "Right Corner"
RightCorner.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RightCorner.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = RightCorner
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(1, 0, 1, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, -200, 0, -50)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

game:GetService("RunService").RenderStepped:Connect(function()
    TextLabel.Text = Player.Name .. ": " .. Health
end)

mouse.KeyDown:connect(function(key)
if key == "k" then
    RightCorner:Destroy()
end
end)
