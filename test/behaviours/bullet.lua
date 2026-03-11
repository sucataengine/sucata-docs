local health = require("states.health")

return {
	init = function(state)
		state.speed = state.speed or 400 -- get speed or fallback to 400
		state.force_y = -state.speed   -- add force_y to move the bullet
		sucata.audio.play({            -- will play the sound when the bullet is spawned
			sound = "src://sounds/shoot.ogg",
		})
	end,
	tick = function(state)
		if state.y < -16 then -- Destroy bullet when it is offscreen
			sucata.scene.destroy(state)
		end

		local meteors = sucata.scene.get_entities_by_tag("meteor") -- get all entities with tag "meteor"
		for _, id in ipairs(meteors) do
			local meteor = sucata.scene.find_by_id(id)             -- get meteor state
			if meteor and sucata.math.overlapping({
						x = state.x - 8,
						y = state.y - 8,
						width = 16,
						height = 16
					}, {
						x = meteor.x - 16,
						y = meteor.y - 16,
						width = 32,
						height = 32
					}) then                                   -- if overlapping
				health.remove(meteor)                       -- remove meteor health
				if meteor.health <= 0 then                  -- if health is 0 or less
					sucata.events.emit("meteor_destroyed", meteor) -- emit the "meteor_destroyed" event
					sucata.scene.destroy(meteor)              -- destroy the meteor
				end
				sucata.audio.play({                         -- will play the sound when the meteor is hitted
					sound = "src://sounds/explosion.ogg",
				})
				sucata.scene.destroy(state) -- destroy the bullet
				break
			end
		end
	end
}
