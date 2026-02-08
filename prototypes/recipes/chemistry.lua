data:extend({
	{
		type = "recipe",
		name = "kr-dt-fuel-cell",
		enabled = false,
		category = "chemistry",
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
})
