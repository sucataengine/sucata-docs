local health = require("states.health")

return {
	init = function(state) 
		state.health = state.health or 3 -- life value or fallback 3
		
		sucata.events.on(state, "meteor_reached", function(_) -- Getting the event "meteor_reached", that is triggered when meteor reach the end of the screen
			health.remove(state) -- remove health
			if state.health <= 0 then 
				-- game over to be implemented
			end
		end)
	end
}