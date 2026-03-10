local function player(x,y)
	return {
		state = {
			x = x, -- Define player coordinates
			y = y,
			texture = "src://sprites/ship.png",
			atlas_size = 8,
		},
		behaviours = {
			Behaviours.Player, -- Call the player behaviour
			Behaviours.Inclination, -- Call the inclination behaviour
			Behaviours.Shooter, -- Call the Shooter behaviour
			Behaviours.DrawSprite, -- Behaviours execute in order, so we will execute first the player behaviours, then draw sprite behaviour
		}
	}
end

return player