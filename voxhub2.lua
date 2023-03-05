-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame.BackgroundTransparency = 0.500
Frame.Position = UDim2.new(0.858712733, 0, 0.0237762257, 0)
Frame.Size = UDim2.new(0.129513338, 0, 0.227972031, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "VoxHub"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 50.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "F6" , false , game)
end)

UITextSizeConstraint.Parent = TextButton
UITextSizeConstraint.MaxTextSize = 50

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("VoxHub - DOORS [BETA]", "Midnight")

local Tab1 = Window:NewTab("Trolling")
local Tab2 = Window:NewTab("Morph")
local Tab3 = Window:NewTab("Local")
local Tab4 = Window:NewTab("UI")

local Section1 = Tab1:NewSection("Trolling")
local Section2 = Tab2:NewSection("Morph")
local Section3 = Tab3:NewSection("Local")
local Section4 = Tab4:NewSection("UI")

Section1:NewButton("FE Jack Spammer", "beta1", function()
    -- inf jack(use Anticheat Bypass)
Instance.new("Highlight", game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Assets["Wardrobe"])
local InfJack1 = game:GetService("RunService").RenderStepped:Connect(function()
    fireproximityprompt(game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Assets["Wardrobe"].HidePrompt, 0)
    fireproximityprompt(game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Assets["Wardrobe"].HidePrompt, 1)
end)
end)

Section2:NewButton("GUI", "beta1", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/RmdComunnityScriptsProvider/AngryHub/main/DoorsMorphScript.lua'))()
end)

Section3:NewButton("Infinite Yield", "beta1", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Section4:NewKeybind("Toggle UI", "beta1", Enum.KeyCode.F6, function()
    Library:ToggleUI()
end)