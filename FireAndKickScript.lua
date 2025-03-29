
local op = game:GetService("ReplicatedStorage").OpenRemote
local ki = game:GetService("ReplicatedStorage").KickRemote
local players = game:GetService("Players")
local check = true

script.Parent.Touched:Connect(function(h)
	if h.Parent:FindFirstChildWhichIsA("Humanoid") and check == true then
		local p = players:GetPlayerFromCharacter(h.Parent)
		op:FireClient(p)
		check = false
		wait(1.5)
		check = true
	end
end)

ki.OnServerEvent:Connect(function(p)
	p:Kick("つまらないようですので、退出させました")
end)