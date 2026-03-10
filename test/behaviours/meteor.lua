return {
	init = function(state)
		sucata.scene.add_tag(state, "meteor") -- add the 'meteor' tag to entity
		state.speed = state.speed or math.random(100, 200) -- adds an random speed fallback to meteor
		state.health = state.health or math.random(1, 5) -- adds an random health fallback to meteor
		state.force_y = state.speed
	end,
	tick = function (state)
		if state.y > 540 then -- if reach the end of the screen
			sucata.events.emit("meteor_reached", state) -- Emit an event that meteor reached
			sucata.scene.destroy(state) -- Destroy the meteor
		end

		state.atlas_x = state.health - 1
	end
}