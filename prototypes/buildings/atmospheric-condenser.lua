data.raw["assembling-machine"]["kr-atmospheric-condenser"].fluid_boxes = {
	{
		production_type = "output",
		pipe_covers = pipecoverspictures(),
		pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
		volume = 100,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 2, -1 } },
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 2, 1 } },
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -2, -1 } },
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -2, 1 } },
			{ flow_direction = "input-output", direction = defines.direction.north, position = { 1, -2 } },
			{ flow_direction = "input-output", direction = defines.direction.north, position = { -1, -2 } },
			{ flow_direction = "input-output", direction = defines.direction.south, position = { 1, 2 } },
			{ flow_direction = "input-output", direction = defines.direction.south, position = { -1, 2 } },
		},
	},
}
data.raw["assembling-machine"]["kr-atmospheric-condenser"].surface_conditions = {
	{ property = "pressure", min = 300 },
}
