return {
	init = function(state)
		if state.music then
			state.music_id = sucata.audio.play({
				sound = state.music,
				loop = true,
				volume = 0.5
			})
		end
	end
}
