local function meteor()
	return {
		state = {
			y = -16 -- Start y of the meteor is offscreen
		},
		behaviours = {
			Behaviours.RandomStartPosition, -- Call the random spawn position
			Behaviours.Meteor, -- Call the meteor behaviour
			Behaviours.ApplyForces, -- Call the ApplyForces behaviour
			Behaviours.DrawSprite, -- Call the draw sprite to renders meteor
		}
	}
end

return meteor