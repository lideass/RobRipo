local op = game:GetService("ReplicatedStorage").OpenRemote
local ki = game:GetService("ReplicatedStorage").KickRemote
local sw = script.Parent

op.OnClientEvent:Connect(function()
	sw.Frame.Visible = true
end)

sw.Frame.xButton.MouseButton1Click:Connect(function()
	sw.Frame.Visible = false
end)

sw.Frame.RemoveButton.MouseButton1Click:Connect(function()
	ki:FireServer()
end)
