return {
	init = function(state)
		state.inclination = 2 -- defines start value of inclination as 2
	end,
	tick = function(state)
		local dt = sucata.time.get_delta() -- get the time between frames

		if sucata.input.is_held("left", "a") then -- if left or "a" key is pressed
			state.inclination = sucata.math.clamp(state.inclination - (15 * dt), 0, 4) -- Will subtract inclination with limited between 0 - 4
		elseif sucata.input.is_held("right", "d") then-- if right or "d" key is pressed
			state.inclination = sucata.math.clamp(state.inclination + (15 * dt), 0, 4) -- Will add inclination with limited between 0 - 4
		else
			state.inclination = sucata.math.lerp(state.inclination, 2, dt * 10) -- will back to 2 when is not pressed any
		end

		state.atlas_x = math.floor(state.inclination) -- get the x coordinates of the texture
	end,
}