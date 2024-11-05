local tool = script.Parent
local player = game.Players.LocalPlayer

tool.Activated:Connect(function()
   Library:Toggle()
end)

player.CharacterAdded:Connect(function()
   wait(1)
   if not player.Backpack:FindFirstChild(tool.Name) then
       tool:Clone().Parent = player.Backpack
   end
end)
