data:extend({
	{
		type = "technology",
		name = "kr-advanced-chemistry",
		icon = "__Krastorio2Assets__/technologies/advanced-chemistry.png",
		icon_size = 256,
		order = "d-a",
		unit = {
			time = 60,
			count = 275,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "kr-atmosphere-condensation" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-water-separation" },
			{ type = "unlock-recipe", recipe = "kr-ammonia" },
			{ type = "unlock-recipe", recipe = "kr-nitric-acid" },
			{ type = "unlock-recipe", recipe = "kr-hydrogen-chloride" },
			{ type = "unlock-recipe", recipe = "kr-biomethanol" },
		},
	},
	{
		type = "technology",
		name = "kr-advanced-lab",
		icon = "__Krastorio2Assets__/technologies/advanced-lab.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 300,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "chemical-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-advanced-lab" },
		},
	},
	{
		type = "technology",
		name = "kr-air-purification",
		icon = "__Krastorio2Assets__/technologies/air-purifier.png",
		icon_size = 256,
		order = "a-e-d",
		unit = {
			time = 45,
			count = 275,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "military-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "kr-advanced-chemistry", "kr-bio-processing" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-air-purifier" },
			{ type = "unlock-recipe", recipe = "kr-pollution-filter" },
			{ type = "unlock-recipe", recipe = "kr-air-cleaning" },
			{ type = "unlock-recipe", recipe = "kr-restore-used-pollution-filter" },
		},
	},
	{
		type = "technology",
		name = "kr-atmosphere-condensation",
		icon = "__Krastorio2Assets__/technologies/atmospheric-condenser.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 175,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "chemical-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-atmospheric-condenser" },
			{ type = "unlock-recipe", recipe = "kr-hydrogen" },
			{ type = "unlock-recipe", recipe = "kr-oxygen" },
			{ type = "unlock-recipe", recipe = "kr-nitrogen" },
		},
	},
	{
		type = "technology",
		name = "kr-bio-fuel",
		icon = "__Krastorio2Assets__/technologies/bio-fuel.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 200,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "kr-fuel", "kr-advanced-chemistry" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-biofuel" },
		},
	},
	{
		type = "technology",
		name = "kr-bio-processing",
		icon = "__Krastorio2Assets__/technologies/bio-lab.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 150,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "military-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "kr-advanced-chemistry", "kr-greenhouse", "military-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-bio-lab" },
			{ type = "unlock-recipe", recipe = "kr-biomass" },
			{ type = "unlock-recipe", recipe = "kr-first-aid-kit" },
			{ type = "unlock-recipe", recipe = "kr-fertilizer" },
			{ type = "unlock-recipe", recipe = "kr-wood-with-fertilizer" },
		},
		-- Disable cost multiplier to avoid manually harvesting unreasonable amount of Bio matter.
		ignore_tech_cost_multiplier = true,
	},
	{
		type = "technology",
		name = "kr-electric-mining-drill-mk2",
		icon = "__Krastorio2Assets__/technologies/electric-mining-drill-mk2.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 300,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "chemical-science-pack", "electric-mining-drill" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-electric-mining-drill-mk2" },
		},
	},
	{
		type = "technology",
		name = "kr-enriched-ores",
		icon = "__Krastorio2Assets__/technologies/enriched-ores.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 275,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "kr-advanced-chemistry" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-enriched-iron" },
			{ type = "unlock-recipe", recipe = "kr-enriched-copper" },
			{ type = "unlock-recipe", recipe = "kr-enriched-rare-metals" },
			{ type = "unlock-recipe", recipe = "kr-iron-plate-from-enriched-iron" },
			{ type = "unlock-recipe", recipe = "kr-copper-plate-from-enriched-copper" },
			{ type = "unlock-recipe", recipe = "kr-rare-metals-from-enriched-rare-metals" },
			{ type = "unlock-recipe", recipe = "kr-filter-iron-ore-from-dirty-water" },
			{ type = "unlock-recipe", recipe = "kr-filter-copper-ore-from-dirty-water" },
			{ type = "unlock-recipe", recipe = "kr-filter-rare-metal-ore-from-dirty-water" },
		},
	},
	{
		type = "technology",
		name = "kr-lithium-processing",
		icon = "__Krastorio2Assets__/technologies/lithium-processing.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 275,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "kr-advanced-chemistry" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-lithium" },
			{ type = "unlock-recipe", recipe = "kr-lithium-chloride" },
		},
	},
	{
		type = "technology",
		name = "kr-lithium-sulfur-battery",
		icon = "__Krastorio2Assets__/technologies/lithium-sulfur-battery.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 200,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "kr-lithium-processing" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-lithium-sulfur-battery" },
		},
	},
	{
		type = "technology",
		name = "kr-portable-generator-equipment",
		icons = util.technology_icon_constant_equipment(
			"__Krastorio2Assets__/technologies/portable-generator-equipment.png"
		),
		upgrade = false,
		unit = {
			time = 60,
			count = 50,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "battery-equipment", "chemical-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-portable-generator-equipment" },
		},
	},
	{
		type = "technology",
		name = "kr-reinforced-plates",
		icon = "__Krastorio2Assets__/technologies/reinforced-plates.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 200,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "chemical-science-pack", "concrete" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-black-reinforced-plate" },
			{ type = "unlock-recipe", recipe = "kr-white-reinforced-plate" },
		},
	},
	{
		type = "technology",
		name = "kr-research-server",
		icon = "__Krastorio2Assets__/technologies/research-server.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 350,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "chemical-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-research-server" },
		},
	},
	{
		type = "technology",
		name = "kr-robot-battery",
		icon = "__Krastorio2Assets__/technologies/robot-battery.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 500,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "kr-lithium-sulfur-battery", "robotics" },
		effects = {
			{ type = "worker-robot-battery", modifier = 0.4 },
		},
	},
	{
		type = "technology",
		name = "kr-tesla-coil",
		icon = "__Krastorio2Assets__/technologies/tesla-coil.png",
		icon_size = 256,
		upgrade = false,
		unit = {
			time = 60,
			count = 500,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
		},
		prerequisites = { "battery-equipment", "power-armor" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-tesla-coil" },
			{ type = "unlock-recipe", recipe = "kr-energy-absorber-equipment" },
		},
	},
})
