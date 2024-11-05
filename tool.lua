local tool = Instance.new("Tool")
local player = game.Players.LocalPlayer

tool.Name = "UI"
tool.RequiresHandle = false
tool.CanBeDropped = false
tool.Parent = player.Backpack

tool.Activated:Connect(function()
   Library:Toggle()
end)

player.CharacterAdded:Connect(function()
   wait(1)
   tool:Clone().Parent = player.Backpack
end)
