data:extend({
	{
		type = "recipe",
		name = "kr-teleportation-gps-module",
		enabled = false,
		energy_required = 3600,
		ingredients = {
			{ type = "item", name = "kr-space-research-data", amount = 1000 },
			{ type = "item", name = "kr-ai-core", amount = 10 },
		},
		results = { { type = "item", name = "kr-teleportation-gps-module", amount = 1 } },
		surface_conditions = {
			{
				property = "gravity",
				min = 0,
				max = 0,
			},
		},
	},
})
