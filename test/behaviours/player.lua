return {
	init = function(state)
		state.speed = state.speed or 200 -- Get the speed from state or fallback to 200
	end,
	tick = function(state)
		local dt = sucata.time.get_delta() -- Get the delta, that is the time between frames

		if sucata.input.is_held("left", "a") then -- Get if the key "a" or "left arrow" is pressed
			state.x = state.x - state.speed * dt -- Change the x value from state
		elseif sucata.input.is_held("right", "d") then -- Get if the key "d" or "righta arrow" is pressed
			state.x = state.x + state.speed * dt -- Change the x value from state
		end
	end,
}