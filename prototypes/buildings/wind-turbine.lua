local hit_effects = require("__base__.prototypes.entity.hit-effects")

local persistent_sound = {
	variations = {
		{ filename = "__Krastorio2Assets__/sounds/buildings/wind-turbine-rotating.ogg", volume = 0.55 },
		{ filename = "__Krastorio2Assets__/sounds/buildings/wind-turbine-rotating-2.ogg", volume = 0.38 },
	},
	aggregation = {
		max_count = 3,
		remove = false,
		count_already_playing = true,
	},
}

data:extend({
	{
		type = "recipe",
		name = "kr-wind-turbine",
		energy_required = 5,
		enabled = true,
		ingredients = {
			{ type = "item", name = "iron-plate", amount = 6 },
			{ type = "item", name = "kr-iron-beam", amount = 2 },
			{ type = "item", name = "iron-gear-wheel", amount = 6 },
			{ type = "item", name = "copper-cable", amount = 6 },
		},
		results = { { type = "item", name = "kr-wind-turbine", amount = 1 } },
	},
	{
		type = "item",
		name = "kr-wind-turbine",
		icon = "__Krastorio2Assets__/icons/entities/wind-turbine.png",
		subgroup = "energy",
		order = "00[solar-panel]-a[wind-turbine]",
		place_result = "kr-wind-turbine",
		stack_size = 50,
	},
	{
		type = "solar-panel",
		name = "kr-wind-turbine",
		icon = "__Krastorio2Assets__/icons/entities/wind-turbine.png",
		flags = { "placeable-neutral", "player-creation" },
		minable = { mining_time = 0.25, result = "kr-wind-turbine" },
		fast_replaceable_group = "wind-turbine",
		collision_box = { { -1.25, -1.25 }, { 1.25, 1.25 } },
		selection_box = { { -1.45, -1.45 }, { 1.45, 1.45 } },
		collision_mask = {
			layers = { item = true, object = true, player = true, water_tile = true, kr_wind_turbine = true },
		},
		drawing_box = { { -0.5, -2 }, { 0.5, 1 } },
		energy_source = {
			type = "electric",
			buffer_capacity = "20kJ",
			usage_priority = "solar",
			output_flow_limit = "20kW",
			render_no_power_icon = false,
		},
		performance_at_day = 1 * 6.9 / 15,
		performance_at_night = 1 * 6.9 / 15,
		solar_coefficient_property = "rubia-wind-speed",
		production = "20kW",
		max_health = 200,
		corpse = "medium-remnants",
		damaged_trigger_effect = hit_effects.entity(),
		resistances = {
			{ type = "fire", percent = 30 },
			{ type = "physical", percent = 60 },
			{ type = "impact", percent = 30 },
		},
		working_sound = {
			sound = persistent_sound,
			idle_sound = persistent_sound,
			persistent = true,
		},
		stateless_visualisation = {
			animation = {
				layers = {
					{
						filename = "__Krastorio2Assets__/buildings/wind-turbine/wind-turbine.png",
						priority = "medium",
						width = 196,
						height = 286,
						scale = 0.5,
						frame_count = 30,
						line_length = 6,
						animation_speed = 0.8,
						shift = { 0, -1.2 },
					},
					{
						filename = "__Krastorio2Assets__/buildings/wind-turbine/wind-turbine-shadow.png",
						priority = "medium",
						width = 242,
						height = 100,
						scale = 0.65,
						frame_count = 30,
						line_length = 6,
						animation_speed = 0.5,
						draw_as_shadow = true,
						shift = { 1.15, 0.05 },
					},
				},
			},
		},
		draw_stateless_visualisations_in_ghost = true,
		radius_visualisation_specification = {
			sprite = {
				filename = "__Krastorio2Assets__/buildings/wind-turbine/wind-turbine-radius-visualisation.png",
				width = 12,
				height = 12,
			},
			distance = 4.4,
		},
		water_reflection = {
			pictures = {
				filename = "__Krastorio2Assets__/buildings/wind-turbine/wind-turbine-reflection.png",
				priority = "extra-high",
				width = 20,
				height = 25,
				shift = util.by_pixel(0, 40),
				variation_count = 1,
				scale = 5,
			},
			rotate = false,
			orientation_to_variation = false,
		},
	},
	{
		type = "simple-entity",
		name = "kr-wind-turbine-collision",
		localised_name = { "entity-name.kr-wind-turbine" },
		icon = "__Krastorio2Assets__/icons/entities/wind-turbine.png",
		hidden = true,
		collision_mask = { layers = { kr_wind_turbine = true } },
		collision_box = { { -4.4, -4.4 }, { 4.4, 4.4 } },
		picture = { filename = "__core__/graphics/empty.png", size = 1 },
		flags = { "not-on-map", "not-selectable-in-game", "placeable-off-grid" },
	},
	{
		type = "collision-layer",
		name = "kr_wind_turbine",
	},
})
