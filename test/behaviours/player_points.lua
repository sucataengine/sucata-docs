local player_points = require("states.player_points")

return {
	init = function(state) 
		state.points = 0 -- start with 0 points
		
		sucata.events.on(state, "meteor_destroyed", function(_) -- Getting the event "meteor_destroyed", that is triggered when meteor is destroyed
			player_points.add_points(state, 5) -- add points
		end)
	end
}