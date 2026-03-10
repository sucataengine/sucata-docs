return {
	init = function(state)
		state.x = state.x or math.random(16, 960 - 16) -- if don't have x in state, will define a random point from 16 at (window width - 16)
		state.y = state.y or math.random(16, 540 - 16) -- if don't have y in state, will define a random point from 16 at (window height - 16)
	end
}