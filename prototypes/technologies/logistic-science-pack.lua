data:extend({
	{
		type = "technology",
		name = "kr-fluid-excess-handling",
		icon = "__Krastorio2Assets__/technologies/flare-stack.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 150,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
		},
		prerequisites = { "kr-fluids-chemistry" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-flare-stack" },
		},
	},
	{
		type = "technology",
		name = "kr-fuel",
		icon = "__Krastorio2Assets__/technologies/fuel-refinery.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 125,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
		},
		prerequisites = { "oil-processing" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-fuel-refinery" },
			{ type = "unlock-recipe", recipe = "kr-fuel-from-light-oil" },
			{ type = "unlock-recipe", recipe = "kr-fuel-from-solid-fuel" },
		},
	},
	{
		type = "technology",
		name = "kr-gas-power-station",
		icon = "__Krastorio2Assets__/technologies/gas-power-station.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 250,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
		},
		prerequisites = { "oil-processing" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-gas-power-station" },
		},
	},
	{
		type = "technology",
		name = "kr-silicon-processing",
		icon = "__Krastorio2Assets__/technologies/silicon-processing.png",
		icon_size = 256,
		order = "c-a",
		unit = {
			time = 30,
			count = 125,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
		},
		prerequisites = { "kr-fluids-chemistry", "automation-2" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-filtration-plant" },
			{ type = "unlock-recipe", recipe = "kr-silicon" },
			{ type = "unlock-recipe", recipe = "kr-quartz" },
		},
	},
	{
		type = "technology",
		name = "kr-steel-fluid-handling",
		icon = "__Krastorio2Assets__/technologies/steel-fluid-handling.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 100,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
		},
		prerequisites = { "steel-processing", "fluid-handling" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-steel-pipe" },
			{ type = "unlock-recipe", recipe = "kr-steel-pipe-to-ground" },
			{ type = "unlock-recipe", recipe = "kr-steel-pump" },
		},
	},
	{
		type = "technology",
		name = "kr-steel-fluid-tanks",
		icon = "__Krastorio2Assets__/technologies/steel-fluid-tanks.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 120,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
		},
		prerequisites = { "kr-steel-fluid-handling" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-big-storage-tank" },
			{ type = "unlock-recipe", recipe = "kr-huge-storage-tank" },
		},
	},
})
