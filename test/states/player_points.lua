local function add_points(state, points)
	if not state.points then -- Safe state modification
		return
	end
	state.points = state.points + points -- add points
end

return {
	add_points = add_points
}