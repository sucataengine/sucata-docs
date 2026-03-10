local meteor = require("entities.meteor")

return {
	init = function(state)
		state.spawner_time = state.spawner_time or 5 -- Time to spawn meteors

		-- Creating a timer 
		sucata.time.create_timer(function ()
			sucata.scene.spawn(meteor()) -- Spawns Meteor
		end, {
			time = state.spawner_time,
			loop = true,
			auto_start = true
		})
	end
}