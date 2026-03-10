return {
	init = function(state) -- Init it is an event that will be triggered when the entity enter on the scene, only once
		-- Trying to get the value from state, if don't have fallback to a default value
		state.x = state.x or 0
		state.y = state.y or 0
		state.width = state.width or 32
		state.height = state.height or 32
		state.texture = state.texture or ""
		state.atlas_x = state.atlas_x or 0
	end,
	draw = function(state) -- Draw it is an event that will called every frame when render
		sucata.graphic.draw_rect({ -- Calling draw_rect, to render with state values
			x = state.x,
			y = state.y,
			width = state.width,
			height = state.height,
			texture = state.texture,
			origin = 0.5,
			atlas_size = state.atlas_size,
			atlas_x = state.atlas_x
		})
	end
}