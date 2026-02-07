data:extend({
	{
		type = "technology",
		name = "kr-advanced-pickaxe",
		icon_size = 256,
		icons = util.technology_icon_constant_mining("__Krastorio2Assets__/technologies/imersium-pickaxe.png"),
		unit = {
			time = 60,
			count = 200,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "kr-advanced-tech-card", 1 },
			},
		},
		prerequisites = { "steel-axe", "kr-advanced-tech-card" },
		effects = {
			{ type = "character-mining-speed", modifier = 2 },
		},
	},
	{
		type = "technology",
		name = "kr-energy-control-unit",
		icon = "__Krastorio2Assets__/technologies/energy-control-unit.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 350,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "kr-advanced-tech-card", 1 },
			},
		},
		prerequisites = { "kr-advanced-tech-card" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-energy-control-unit" },
		},
	},
	{
		type = "technology",
		name = "kr-advanced-roboports",
		icon = "__Krastorio2Assets__/technologies/advanced-roboports.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 500,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "kr-advanced-tech-card", 1 },
			},
		},
		prerequisites = { "kr-advanced-tech-card" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-small-roboport" },
			{ type = "unlock-recipe", recipe = "kr-big-roboport" },
		},
	},
	{
		type = "technology",
		name = "kr-advanced-tank",
		icon = "__Krastorio2Assets__/technologies/advanced-tank.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 750,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "kr-advanced-tech-card", 1 },
			},
		},
		prerequisites = { "tank", "kr-advanced-tech-card", "kr-military-5" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-advanced-tank" },
		},
	},
	{
		type = "technology",
		name = "kr-automation",
		icon = "__Krastorio2Assets__/technologies/advanced-assembling-machine.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 500,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "kr-advanced-tech-card", 1 },
			},
		},
		prerequisites = { "automation-3", "kr-energy-control-unit", "kr-advanced-tech-card", "kr-enriched-ores" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-advanced-assembling-machine" },
			{ type = "unlock-recipe", recipe = "kr-copper-cable-from-copper-ore" },
			{ type = "unlock-recipe", recipe = "kr-copper-cable-from-enriched-copper" },
			{ type = "unlock-recipe", recipe = "kr-iron-stick-from-iron-ore" },
			{ type = "unlock-recipe", recipe = "kr-iron-stick-from-enriched-iron" },
			{ type = "unlock-recipe", recipe = "kr-iron-gear-wheel-from-iron-ore" },
			{ type = "unlock-recipe", recipe = "kr-iron-gear-wheel-from-enriched-iron" },
			{ type = "unlock-recipe", recipe = "kr-iron-beam-from-iron-ore" },
			{ type = "unlock-recipe", recipe = "kr-iron-beam-from-enriched-iron" },
			{ type = "unlock-recipe", recipe = "kr-easy-steel-gear-wheel" },
			{ type = "unlock-recipe", recipe = "kr-easy-steel-beam" },
			{ type = "unlock-recipe", recipe = "kr-easy-imersium-gear-wheel" },
			{ type = "unlock-recipe", recipe = "kr-easy-imersium-beam" },
			{ type = "unlock-recipe", recipe = "kr-easy-electronic-components" },
		},
	},
	{
		type = "technology",
		name = "kr-robot-battery-plus",
		icon = "__Krastorio2Assets__/technologies/robot-battery-plus.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 1000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
			},
		},
		prerequisites = { "kr-robot-battery", "kr-advanced-roboports", "kr-energy-control-unit" },
		effects = {
			{ type = "worker-robot-battery", modifier = 0.6 },
		},
	},
	{
		type = "technology",
		name = "kr-superior-exoskeleton-equipment",
		icons = util.technology_icon_constant_equipment(
			"__Krastorio2Assets__/technologies/superior-exoskeleton-equipment.png"
		),
		icon_size = 256,
		upgrade = false,
		unit = {
			time = 45,
			count = 500,
			ingredients = {
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
			},
		},
		prerequisites = { "kr-advanced-exoskeleton-equipment", "kr-advanced-tech-card" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-superior-exoskeleton-equipment" },
		},
	},
})
