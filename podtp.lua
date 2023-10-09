-- Create the GUI elements
local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false -- Keep the GUI when the player dies
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 600, 0, 200) -- Increase the size of the frame
frame.Position = UDim2.new(0.5, -300, 0, 10)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

-- Create a rounded appearance for the frame
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10) -- Adjust the radius as needed
corner.Parent = frame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 0, 0)
closeButton.BackgroundColor3 = Color3.new(0, 0, 0)
closeButton.BorderColor3 = Color3.new(1, 1, 1) -- Add an outline
closeButton.BorderSizePixel = 2 -- Adjust outline thickness
closeButton.Parent = frame

-- Create a rounded appearance for the close button
local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 15)
closeCorner.Parent = closeButton

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.5, 0)
textLabel.Text = "Fedsharkz Teleport Podcast"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.BackgroundTransparency = 1
textLabel.Parent = frame

local teleportInsideButton = Instance.new("TextButton")
teleportInsideButton.Size = UDim2.new(0.45, 0, 0.4, 0) -- Adjust the button size
teleportInsideButton.Position = UDim2.new(0.05, 0, 0.55, 0) -- Adjust the button position
teleportInsideButton.Text = "TP Inside"
teleportInsideButton.TextColor3 = Color3.new(1, 1, 1)
teleportInsideButton.BackgroundColor3 = Color3.new(0, 0, 0)
teleportInsideButton.BorderColor3 = Color3.new(1, 1, 1) -- Add an outline
teleportInsideButton.BorderSizePixel = 2 -- Adjust outline thickness
teleportInsideButton.Parent = frame

-- Create a rounded appearance for the teleportInsideButton
local insideButtonCorner = Instance.new("UICorner")
insideButtonCorner.CornerRadius = UDim.new(0, 10)
insideButtonCorner.Parent = teleportInsideButton

local teleportSpectatingButton = Instance.new("TextButton")
teleportSpectatingButton.Size = UDim2.new(0.45, 0, 0.4, 0) -- Adjust the button size
teleportSpectatingButton.Position = UDim2.new(0.5, 0, 0.55, 0) -- Adjust the button position
teleportSpectatingButton.Text = "TP To Spectating"
teleportSpectatingButton.TextColor3 = Color3.new(1, 1, 1)
teleportSpectatingButton.BackgroundColor3 = Color3.new(0, 0, 0)
teleportSpectatingButton.BorderColor3 = Color3.new(1, 1, 1) -- Add an outline
teleportSpectatingButton.BorderSizePixel = 2 -- Adjust outline thickness
teleportSpectatingButton.Parent = frame

-- Create a rounded appearance for the teleportSpectatingButton
local spectatingButtonCorner = Instance.new("UICorner")
spectatingButtonCorner.CornerRadius = UDim.new(0, 10)
spectatingButtonCorner.Parent = teleportSpectatingButton

-- Create the teleportation functionality for "TP Inside" button
teleportInsideButton.MouseButton1Click:Connect(function()
    player.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(-6, 1, 35.61249923706055)))
end)

-- Create the teleportation functionality for "TP To Spectating" button
teleportSpectatingButton.MouseButton1Click:Connect(function()
    player.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(9.647907257080078, 1.3249953985214233, 60.40802764892578)))
end)

-- Close the GUI when the X button is clicked
closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
