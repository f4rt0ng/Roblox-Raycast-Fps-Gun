local tool = script.Parent

game.ReplicatedStorage.ShootGun.OnServerEvent:Connect(function(player, targetPosition)
	local character = player.Character
	if not character then return end

	local origin = character:FindFirstChild("Head") and character.Head.Position or character.PrimaryPart.Position
	local direction = (targetPosition - origin).Unit * 500
	local raycastResult = workspace:Raycast(origin, direction)

	if raycastResult and raycastResult.Instance then
		local hitHumanoid = raycastResult.Instance.Parent:FindFirstChild("Humanoid")
		if hitHumanoid and not raycastResult.Instance:IsDescendantOf(character) then
			hitHumanoid:TakeDamage(25)
		end
	end
end)
