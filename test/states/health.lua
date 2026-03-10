local function remove(state)
	if not state.health then -- Safe state modification
		return
	end
	state.health = state.health - 1 -- Remove health
end

return {
	remove = remove
}