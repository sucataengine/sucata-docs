local function music()
	return {
		state = {
			music = "src://sounds/music.ogg"
		},
		behaviours = {
			Behaviours.Music,
		}
	}
end

return music
