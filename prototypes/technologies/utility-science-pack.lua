data:extend({
	{
		type = "technology",
		name = "kr-imersium-processing",
		icon = "__Krastorio2Assets__/technologies/imersium-processing.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 500,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
			},
		},
		prerequisites = { "kr-quarry-minerals-extraction" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-imersium-plate" },
			{ type = "unlock-recipe", recipe = "kr-imersium-gear-wheel" },
			{ type = "unlock-recipe", recipe = "kr-imersium-beam" },
		},
	},
	{
		type = "technology",
		name = "kr-advanced-tech-card",
		icon = "__Krastorio2Assets__/technologies/advanced-tech-card.png",
		icon_size = 256,
		essential = true,
		unit = {
			time = 45,
			count = 1000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
			},
		},
		prerequisites = { "kr-imersium-processing", "utility-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-advanced-tech-card" },
		},
	},
	{
		type = "technology",
		name = "kr-fusion-reactor-equipment",
		icons = util.technology_icon_constant_equipment(
			"__Krastorio2Assets__/technologies/fusion-reactor-equipment.png"
		),
		upgrade = false,
		unit = {
			time = 60,
			count = 250,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "military-science-pack", 1 },
				{ "utility-science-pack", 1 },
			},
		},
		prerequisites = { "fission-reactor-equipment", "kr-fusion-energy" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-fusion-reactor-equipment" },
		},
	},
})
