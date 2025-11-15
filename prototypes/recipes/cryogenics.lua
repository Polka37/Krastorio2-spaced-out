data:extend({
	{
		type = "recipe",
		name = "kr-liquid-oxygen",
		icon = "__Krastorio2-spaced-out__/graphics/icons/liquid-oxygen.png",
		category = "cryogenics",
		subgroup = "space-processing",
		order = "e[liquid-oxygen]",
		auto_recycle = false,
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "kr-oxygen", amount = 80 },
			{ type = "fluid", name = "fluoroketone-cold", amount = 10, ignored_by_stats = 10 },
		},
		results = {
			{ type = "fluid", name = "thruster-oxidizer", amount = 3000 },
			{ type = "fluid", name = "fluoroketone-hot", amount = 10, ignored_by_stats = 10 },
		},
		show_amount_in_title = false,
		always_show_products = true,
		allow_productivity = true,
		enabled = false,
		crafting_machine_tint = {
			primary = { r = 0.015, g = 0.647, b = 0.898, a = 1.000 }, -- #04a5e5
			secondary = { r = 0.257, g = 0.442, b = 0.646, a = 1.000 },
			tertiary = { r = 0.573, g = 0.234, b = 0.481, a = 1.000 },
			quaternary = { r = 0.823, g = 0.058, b = 0.223, a = 1.000 }, -- #d20f39
		},
		surface_conditions = {
			{
				property = "gravity",
				min = 0,
				max = 0,
			},
		},
	},
	{
		type = "recipe",
		name = "kr-liquid-hydrogen",
		icon = "__Krastorio2-spaced-out__/graphics/icons/liquid-hydrogen.png",
		category = "cryogenics",
		subgroup = "space-processing",
		order = "bliquid-hydrogen]",
		auto_recycle = false,
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "kr-hydrogen", amount = 120 },
			{ type = "fluid", name = "fluoroketone-cold", amount = 10, ignored_by_stats = 10 },
		},
		results = {
			{ type = "fluid", name = "thruster-fuel", amount = 3000 },
			{ type = "fluid", name = "fluoroketone-hot", amount = 10, ignored_by_stats = 10 },
		},
		show_amount_in_title = false,
		always_show_products = true,
		allow_productivity = true,
		enabled = false,
		crafting_machine_tint = {
			primary = { r = 0.996, g = 0.392, b = 0.043, a = 1.000 }, --#fe640b
			secondary = { r = 0.337, g = 0.565, b = 0.223, a = 1.000 },
			tertiary = { r = 0.608, g = 0.747, b = 0.537, a = 1.000 },
			quaternary = { r = 1.000, g = 1.000, b = 1.000, a = 1.000 },
		},
		surface_conditions = {
			{
				property = "gravity",
				min = 0,
				max = 0,
			},
		},
	},
})
