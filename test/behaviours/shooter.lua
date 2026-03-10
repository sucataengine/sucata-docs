local bullet = require("entities.bullet")

return {
	tick = function (state)
		if sucata.input.is_pressed("space", "enter") then
			sucata.scene.spawn(bullet(state.x, state.y - 16))
		end
	end
}