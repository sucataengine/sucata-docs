local function player(x,y)
	return {
		state = {
			x = x, -- Define player coordinates
			y = y,
		},
		behaviours = {
			Behaviours.Player, -- Call the player behaviour
			Behaviours.Shooter, -- Call the Shooter behaviour
			Behaviours.DrawSprite, -- Behaviours execute in order, so we will execute first the player behaviours, then draw sprite behaviour
		}
	}
end

return player