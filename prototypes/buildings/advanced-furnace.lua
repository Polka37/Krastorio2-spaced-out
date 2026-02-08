local pipe_pictures = require("__Krastorio2__.prototypes.buildings.advanced-furnace-pipe-pictures")
data.raw.item["kr-advanced-furnace"].stack_size = 20
data.raw.item["kr-advanced-furnace"].order = "d[foundry]-a[advanced-furnace]"
data.raw["assembling-machine"]["kr-advanced-furnace"].heating_energy = "400kW"
data.raw["assembling-machine"]["kr-advanced-furnace"].crafting_categories = {
	"smelting",
	"kr-advanced-smelting",
	"metallurgy",
	"pressing",
	"crafting-with-fluid-or-metallurgy",
	"metallurgy-or-assembling",
}
data.raw["assembling-machine"]["kr-advanced-furnace"].energy_source.emissions_per_minute = { pollution = 30 }
data.raw["assembling-machine"]["kr-advanced-furnace"].energy_usage = "10MW"
data.raw["assembling-machine"]["kr-advanced-furnace"].effect_receiver = { base_effect = { productivity = 0.5 } }
data.raw["assembling-machine"]["kr-advanced-furnace"].fluid_boxes = {
	{
		production_type = "input",
		pipe_picture = pipe_pictures.a,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input", direction = defines.direction.north, position = { -1, -3 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "input",
		pipe_picture = pipe_pictures.b,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input", direction = defines.direction.north, position = { 1, -3 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "input",
		pipe_picture = pipe_pictures.b,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -3, -1 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "input",
		pipe_picture = pipe_pictures.a,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 3, -1 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures.b,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "output", direction = defines.direction.south, position = { -1, 3 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures.a,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "output", direction = defines.direction.south, position = { 1, 3 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures.a,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -3, 1 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures.b,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 3, 1 } },
		},
		secondary_draw_orders = { north = -1 },
	},
}
data:extend({
	{
		type = "recipe",
		name = "kr-advanced-furnace",
		category = "metallurgy-or-assembling",
		energy_required = 30,
		enabled = false,
		ingredients = {
			{ type = "item", name = "kr-imersium-beam", amount = 40 },
			{ type = "item", name = "tungsten-plate", amount = 40 },
			{ type = "item", name = "foundry", amount = 3 },
			{ type = "item", name = "kr-energy-control-unit", amount = 10 },
		},
		results = { { type = "item", name = "kr-advanced-furnace", amount = 1 } },
	},
})
