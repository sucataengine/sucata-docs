local function bullet(x,y)
	return {
		state = {
			x = x,
			y = y,
			texture = "src://sprites/bullet.png",
			width = 16,
			height = 16
		},
		behaviours = {
			Behaviours.Bullet, -- Call the bullet behaviour
			Behaviours.ApplyForces, -- Call the ApplyForces behaviour
			Behaviours.DrawSprite, -- Call the draw sprite to renders meteor
		}
	}
end

return bullet