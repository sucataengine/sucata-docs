return {
	init = function (state)
		state.x = state.x or 0
		state.y = state.y or 0
		state.force_x = state.force_x or 0
		state.force_y = state.force_y or 0
	end,
	tick = function (state) 
		local dt = sucata.time.get_delta()
		state.x = state.x + (state.force_x * dt)
 		state.y = state.y + (state.force_y * dt)
	end
}