data.raw["assembling-machine"]["kr-quantum-computer"].energy_usage = "5MW"
data.raw["assembling-machine"]["kr-quantum-computer"].fluid_boxes = {
	{
		production_type = "input",
		pipe_picture = pipe_pictures,
		pipe_covers = pipecoverspictures(),
		volume = 100,
		pipe_connections = {
			{ flow_direction = "input", direction = defines.direction.north, position = { -0.5, -2.5 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		--reserved for muluna data wire
		production_type = "input",
		volume = 1,
		pipe_connections = {
			{ flow_direction = "input", direction = defines.direction.north, position = { 0, 0 } },
		},
	},
	{
		production_type = "input",
		pipe_picture = pipe_pictures,
		pipe_covers = pipecoverspictures(),
		volume = 100,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -2.5, -0.5 } },
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 2.5, 0.5 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures,
		pipe_covers = pipecoverspictures(),
		volume = 100,
		pipe_connections = {
			{ flow_direction = "output", direction = defines.direction.south, position = { 0.5, 2.5 } },
		},
		secondary_draw_orders = { north = -1 },
	},
}
