data:extend({

	--Vulcanus

	{
		type = "technology",
		name = "kr-advanced-furnace",
		icon = "__Krastorio2Assets__/technologies/advanced-furnace.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 2000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "metallurgic-science-pack", 1 },
			},
		},
		prerequisites = { "kr-energy-control-unit", "kr-advanced-tech-card", "metallurgic-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-advanced-furnace" },
			{ type = "unlock-recipe", recipe = "kr-casting-imersium-plate" },
			{ type = "unlock-recipe", recipe = "kr-casting-imersium-beam" },
			{ type = "unlock-recipe", recipe = "kr-casting-imersium-gear-wheel" },
		},
	},

	--Fulgora

	{
		type = "technology",
		name = "kr-energy-shield-mk3-equipment",
		icons = util.technology_icon_constant_equipment(
			"__Krastorio2Assets__/technologies/energy-shield-mk3-equipment.png"
		),
		icon_size = 256,
		upgrade = false,
		unit = {
			time = 60,
			count = 350,
			ingredients = {
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "electromagnetic-science-pack", 1 },
			},
		},
		prerequisites = { "energy-shield-mk2-equipment", "kr-lithium-sulfur-battery", "mech-armor" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-energy-shield-mk3-equipment" },
		},
	},
	{
		type = "technology",
		name = "kr-personal-laser-defense-mk3-equipment",
		icons = util.technology_icon_constant_equipment(
			"__Krastorio2Assets__/technologies/personal-laser-defense-mk3-equipments.png"
		),
		icon_size = 256,
		order = "g-m",
		unit = {
			time = 75,
			count = 450,
			ingredients = {
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "electromagnetic-science-pack", 1 },
			},
		},
		prerequisites = { "kr-advanced-tech-card", "kr-personal-laser-defense-mk2-equipment", "mech-armor" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-personal-laser-defense-mk3-equipment" },
		},
	},
	{
		type = "technology",
		name = "kr-energy-storage",
		icon = "__Krastorio2Assets__/technologies/energy-storage.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 350,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "kr-advanced-tech-card", 1 },
			},
		},
		prerequisites = { "kr-energy-control-unit", "electromagnetic-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-energy-storage" },
		},
	},

	--Gleba

	{
		type = "technology",
		name = "kr-advanced-chemical-plant",
		icon = "__Krastorio2Assets__/technologies/advanced-chemical-plant.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 500,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "agricultural-science-pack", 1 },
			},
		},
		prerequisites = { "kr-advanced-tech-card", "carbon-fiber" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-advanced-chemical-plant" },
			{ type = "unlock-recipe", recipe = "kr-electronic-components-with-lithium" },
		},
	},
	{
		type = "technology",
		name = "kr-biter-virus",
		icon = "__Krastorio2Assets__/technologies/biter-virus.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 3000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "agricultural-science-pack", 1 },
			},
		},
		prerequisites = { "biter-egg-handling", "kr-military-5" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-biter-virus" },
		},
	},
	{
		type = "technology",
		name = "kr-gleba-greenhouse",
		icon = "__k2so-assets__/technologies/gleba-greenhouse.png",
		icon_size = 256,
		unit = {
			time = 45,
			count = 1000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "agricultural-science-pack", 1 },
			},
		},
		prerequisites = { "agricultural-science-pack", "kr-advanced-tech-card" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-jellynut" },
			{ type = "unlock-recipe", recipe = "kr-yumako" },
		},
	},

	--Multiplanetary

	{
		type = "technology",
		name = "kr-singularity-tech-card",
		icon = "__Krastorio2Assets__/technologies/singularity-tech-card.png",
		icon_size = 256,
		essential = true,
		unit = {
			time = 45,
			count = 5000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-matter-tech-card", 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "agricultural-science-pack", 1 },
				{ "metallurgic-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
			},
		},
		prerequisites = { "kr-matter-processing" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-singularity-tech-card" },
		},
	},
	{
		type = "technology",
		name = "kr-laser-artillery-turret",
		icon = "__Krastorio2Assets__/technologies/laser-artillery-turret.png",
		icon_size = 256,
		order = "g-f-z",
		unit = {
			time = 30,
			count = 2000,
			ingredients = {
				{ "military-science-pack", 1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "metallurgic-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
			},
		},
		prerequisites = {
			"kr-military-5",
			"kr-advanced-tech-card",
			"artillery",
			"kr-energy-control-unit",
			"electromagnetic-science-pack",
		},
		effects = {
			{ type = "unlock-recipe", recipe = "kr-laser-artillery-turret" },
		},
	},

	--Aquilo

	{
		type = "technology",
		name = "kr-matter-tech-card",
		icon = "__Krastorio2Assets__/technologies/matter-tech-card.png",
		icon_size = 256,
		essential = true,
		unit = {
			time = 60,
			count = 3000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "kr-matter-tech-card", 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
			},
		},
		prerequisites = { "cryogenic-plant" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-matter-research-data" },
			{ type = "unlock-recipe", recipe = "kr-matter-tech-card" },
		},
	},
	{
		type = "technology",
		name = "kr-quantum-computer",
		icon = "__Krastorio2Assets__/technologies/quantum-computer.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 5000,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "kr-advanced-tech-card", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "cryogenic-science-pack", 1 },
			},
		},
		prerequisites = { "kr-ai-core", "quantum-processor" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-quantum-computer" },
		},
	},
	{
		type = "technology",
		name = "kr-energy-shield-mk4-equipment",
		icon_size = 256,
		icons = util.technology_icon_constant_equipment(
			"__Krastorio2Assets__/technologies/energy-shield-mk4-equipment.png"
		),
		upgrade = false,
		unit = {
			time = 30,
			count = 2000,
			ingredients = {
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "cryogenic-science-pack", 1 },
			},
		},
		prerequisites = { "kr-energy-shield-mk3-equipment", "quantum-processor" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-energy-shield-mk4-equipment" },
		},
	},
	{
		type = "technology",
		name = "kr-personal-laser-defense-mk4-equipment",
		icons = util.technology_icon_constant_equipment(
			"__Krastorio2Assets__/technologies/personal-laser-defense-mk4-equipments.png"
		),
		icon_size = 256,
		order = "g-m",
		unit = {
			time = 90,
			count = 2000,
			ingredients = {
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "cryogenic-science-pack", 1 },
			},
		},
		prerequisites = {
			"kr-personal-laser-defense-mk3-equipment",
			"quantum-processor",
		},
		effects = {
			{ type = "unlock-recipe", recipe = "kr-personal-laser-defense-mk4-equipment" },
		},
	},

	--Shattered Planet

	{
		type = "technology",
		name = "kr-singularity-lab",
		icon = "__Krastorio2Assets__/technologies/singularity-lab.png",
		icon_size = 256,
		unit = {
			time = 30,
			count = 10000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "kr-matter-tech-card", 1 },
				{ "kr-singularity-tech-card", 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "cryogenic-science-pack", 1 },
				{ "promethium-science-pack", 1 },
			},
		},
		prerequisites = { "promethium-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-singularity-lab" },
		},
	},
	{
		type = "technology",
		name = "kr-antimatter-ammo",
		icon = "__Krastorio2Assets__/technologies/antimatter-ammo.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 10000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "cryogenic-science-pack", 1 },
				{ "kr-matter-tech-card", 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "kr-singularity-tech-card", 1 },
				{ "promethium-science-pack", 1 },
			},
		},
		prerequisites = { "kr-antimatter-reactor" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-antimatter-turret-rocket" },
			{ type = "unlock-recipe", recipe = "kr-antimatter-artillery-shell" },
			{ type = "unlock-recipe", recipe = "kr-antimatter-rocket" },
			{ type = "unlock-recipe", recipe = "kr-antimatter-railgun-shell" },
		},
	},
	{
		type = "technology",
		name = "kr-antimatter-reactor",
		icon = "__Krastorio2Assets__/technologies/antimatter-reactor.png",
		icon_size = 256,
		prerequisites = { "kr-fusion-energy", "kr-singularity-tech-card", "promethium-science-pack" },
		unit = {
			time = 60,
			count = 10000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "cryogenic-science-pack", 1 },
				{ "kr-matter-tech-card", 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "kr-singularity-tech-card", 1 },
				{ "promethium-science-pack", 1 },
			},
		},
		order = "g-f-z",
		effects = {
			{ type = "unlock-recipe", recipe = "kr-antimatter-reactor" },
			{ type = "unlock-recipe", recipe = "kr-empty-antimatter-fuel-cell" },
			{ type = "unlock-recipe", recipe = "kr-charged-antimatter-fuel-cell" },
		},
	},
	{
		type = "technology",
		name = "kr-antimatter-reactor-equipment",
		icons = util.technology_icon_constant_equipment(
			"__Krastorio2Assets__/technologies/antimatter-reactor-equipment.png"
		),
		upgrade = false,
		unit = {
			time = 45,
			count = 10000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "cryogenic-science-pack", 1 },
				{ "kr-matter-tech-card", 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "kr-singularity-tech-card", 1 },
				{ "promethium-science-pack", 1 },
			},
		},
		prerequisites = { "fusion-reactor-equipment", "kr-antimatter-reactor" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-antimatter-reactor-equipment" },
		},
	},
	{
		type = "technology",
		name = "kr-intergalactic-transceiver",
		icon = "__Krastorio2Assets__/technologies/intergalactic-transceiver.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 100000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "cryogenic-science-pack", 1 },
				{ "kr-matter-tech-card", 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "kr-singularity-tech-card", 1 },
				{ "promethium-science-pack", 1 },
			},
		},
		prerequisites = { "kr-antimatter-reactor", "kr-singularity-lab" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-intergalactic-transceiver" },
		},
	},
	{
		type = "technology",
		name = "kr-logo",
		enabled = false,
		icon = "__Krastorio2Assets__/technologies/k-logo.png",
		icon_size = 256,
		ignore_tech_cost_multiplier = true,
		unit = {
			time = 60,
			count = 42000000,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ kr_optimization_tech_card_name, 1 },
				{ "kr-advanced-tech-card", 1 },
				{ "kr-matter-tech-card", 1 },
				{ "kr-singularity-tech-card", 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "cryogenic-science-pack", 1 },
				{ "promethium-science-pack", 1 },
			},
		},
		prerequisites = { "kr-intergalactic-transceiver" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-logo" },
		},
	},
})
