data:extend({
	{
		type = "recipe",
		name = "kr-dt-fuel-cell",
		enabled = false,
		categories = { "chemistry" },
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "kr-heavy-water", amount = 10 },
			{ type = "item", name = "kr-tritium", amount = 1 },
			{ type = "item", name = "kr-empty-dt-fuel-cell", amount = 1 },
		},
		results = { { type = "item", name = "kr-dt-fuel-cell", amount = 1, ignored_by_productivity = 1 } },
		always_show_made_in = true,
		allow_productivity = false,
		crafting_machine_tint = {
			primary = { r = 0.800, g = 0.776, b = 0.313, a = 0.000 },
			secondary = { r = 0.200, g = 0.680, b = 0.300, a = 0.350 },
			tertiary = { r = 0.430, g = 0.305, b = 0.2, a = 0.750 },
			quaternary = { r = 0.800, g = 0.776, b = 0.313, a = 0.900 },
		},
	},
	{
		type = "recipe",
		name = "kr-geothermal",
		subgroup = "fluid-recipes",
		order = "d[other-chemistry]-c[geothermal]",
		enabled = false,
		categories = { "chemistry" },
		energy_required = 1,
		ingredients = {
			{ type = "fluid", name = "water", amount = 100 },
			{ type = "fluid", name = "lava", amount = 50 },
		},
		results = {
			{ type = "fluid", name = "steam", amount = 1000, temperature = 1515, ignored_by_productivity = 1000 },
			{ type = "item", name = "stone", amount = 1 },
		},
		always_show_made_in = true,
		allow_productivity = false,
		crafting_machine_tint = {
			primary = { r = 0.800, g = 0.0, b = 0.0, a = 0.000 },
			secondary = { r = 0.700, g = 0.5, b = 0.0, a = 0.350 },
			tertiary = { r = 0.930, g = 0.8, b = 0.93, a = 0.750 },
			quaternary = { r = 0.950, g = 0.9, b = 0.92, a = 0.900 },
		},
		icons = {
			{ icon = "__space-age__/graphics/icons/fluid/lava.png", scale = 0.5, shift = { 0, -10 } },
			{ icon = "__base__/graphics/icons/fluid/steam.png", scale = 0.7, shift = { 0, 12 } },
		},
	},
})
