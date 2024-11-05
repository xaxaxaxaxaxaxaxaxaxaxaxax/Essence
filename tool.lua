local player = game.Players.LocalPlayer
local tool = Instance.new("Tool")

tool.Name = "UI"
tool.RequiresHandle = false
tool.CanBeDropped = false
tool.Parent = player.Backpack

game:GetService("RunService").Heartbeat:Wait()

tool.Activated:Connect(function()
    Library:Toggle()
end)

player.CharacterAdded:Connect(function()
    wait(1)
    tool:Clone().Parent = player.Backpack
end)
