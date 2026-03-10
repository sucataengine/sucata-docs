return {
	draw = function(state)
		sucata.graphic.draw_text({ -- Draw health text
			text = "Health: " .. state.health,
			x = 960 - 16,
			y = 10,
			font_size = 16,
			align = "right",
		})
		sucata.graphic.draw_text({ -- Draw points text
			text = "Points: " .. state.points,
			x = 960 - 16,
			y = 40,
			font_size = 16,
			align = "right",
		})
	end
}