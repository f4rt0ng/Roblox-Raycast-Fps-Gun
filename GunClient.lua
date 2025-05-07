local tool = script.Parent
local player = game.Players.LocalPlayer

local function createBulletEffect(origin, targetPos)
	local beamPart = Instance.new("Part")
	beamPart.Anchored = true
	beamPart.CanCollide = false
	beamPart.Material = Enum.Material.Neon
	beamPart.BrickColor = BrickColor.new("Bright yellow")
	local distance = (origin - targetPos).Magnitude
	beamPart.Size = Vector3.new(0.1, 0.1, distance)
	beamPart.CFrame = CFrame.new(origin, targetPos) * CFrame.new(0, 0, -distance / 2)
	beamPart.Parent = workspace
	game:GetService("Debris"):AddItem(beamPart, 0.1)
end

tool.Activated:Connect(function()
	local mouse = player:GetMouse()
	if mouse then
		local targetPos = mouse.Hit.Position
		createBulletEffect(player.Character.Head.Position, targetPos)
		game.ReplicatedStorage.ShootGun:FireServer(targetPos)
	end
end)
