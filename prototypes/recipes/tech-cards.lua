data:extend({
	{
		type = "recipe",
		name = "kr-matter-research-data",
		enabled = false,
		energy_required = 20,
		ingredients = {
			{ type = "item", name = "kr-imersite-crystal", amount = 5 },
			{ type = "item", name = "kr-rare-metals", amount = 5 },
			{ type = "item", name = "kr-lithium", amount = 5 },
			{ type = "item", name = "plastic-bar", amount = 5 },
		},
		results = {
			{ type = "item", name = "kr-matter-research-data", amount = 5 },
		},
		allow_productivity = true,
	},
	{
		type = "recipe",
		name = "kr-metallurgic-research-data",
		category = "metallurgy",
		surface_conditions = {
			{
				property = "pressure",
				min = 4000,
				max = 4000,
			},
		},
		enabled = false,
		ingredients = {
			{ type = "item", name = "tungsten-carbide", amount = 3 },
			{ type = "item", name = "tungsten-plate", amount = 2 },
			{ type = "fluid", name = "molten-copper", amount = 200 },
		},
		energy_required = 10,
		results = { { type = "item", name = "kr-metallurgic-research-data", amount = 1 } },
		allow_productivity = true,
	},
	{
		type = "recipe",
		name = "kr-agricultural-research-data",
		category = "organic",
		subgroup = "science-pack",
		surface_conditions = {
			{
				property = "pressure",
				min = 2000,
				max = 2000,
			},
		},
		enabled = false,
		ingredients = {
			{ type = "item", name = "bioflux", amount = 1 },
			{ type = "item", name = "pentapod-egg", amount = 1 },
		},
		energy_required = 4,
		results = { { type = "item", name = "kr-agricultural-research-data", amount = 1 } },
		allow_productivity = true,
		crafting_machine_tint = {
			primary = { 0.95, 1, 0, 1 },
			secondary = { 255, 233, 163, 1 },
		},
	},
	{
		type = "recipe",
		name = "kr-electromagnetic-research-data",
		category = "electromagnetics",
		surface_conditions = {
			{
				property = "magnetic-field",
				min = 99,
				max = 99,
			},
		},
		enabled = false,
		ingredients = {
			{ type = "item", name = "supercapacitor", amount = 1 },
			{ type = "item", name = "accumulator", amount = 1 },
			{ type = "fluid", name = "electrolyte", amount = 25 },
			{ type = "fluid", name = "holmium-solution", amount = 25 },
		},
		energy_required = 10,
		results = { { type = "item", name = "kr-electromagnetic-research-data", amount = 1 } },
		allow_productivity = true,
	},
	{
		type = "recipe",
		name = "kr-cryogenic-research-data",
		category = "cryogenics",
		surface_conditions = {
			{
				property = "pressure",
				min = 300,
				max = 300,
			},
		},
		enabled = false,
		ingredients = {
			{ type = "item", name = "ice", amount = 3 },
			{ type = "item", name = "lithium-plate", amount = 1 },
			{ type = "fluid", name = "fluoroketone-cold", amount = 6, ignored_by_stats = 3 },
		},
		energy_required = 20,
		results = {
			{ type = "item", name = "kr-cryogenic-research-data", amount = 1 },
			{
				type = "fluid",
				name = "fluoroketone-hot",
				amount = 3,
				ignored_by_stats = 3,
				ignored_by_productivity = 3,
			},
		},
		main_product = "kr-cryogenic-research-data",
		allow_productivity = true,
		crafting_machine_tint = {
			primary = { r = 0.040, g = 0.186, b = 1.000, a = 1.000 }, -- #0a2fffff
			secondary = { r = 0.200, g = 0.400, b = 1.000, a = 1.000 }, -- #3366ffff
			tertiary = { r = 0.600, g = 0.651, b = 1.000, a = 1.000 }, -- #99a6ffff
			quaternary = { r = 0.100, g = 0.300, b = 0.500, a = 1.000 }, -- #194c7fff
		},
	},
	{
		type = "recipe",
		name = "kr-promethium-research-data",
		energy_required = 5,
		surface_conditions = {
			{
				property = "gravity",
				min = 0,
				max = 0,
			},
		},
		enabled = false,
		allow_productivity = true,
		category = "cryogenics",
		ingredients = {
			{ type = "item", name = "promethium-asteroid-chunk", amount = 25 },
			{ type = "item", name = "quantum-processor", amount = 1 },
		},
		results = { { type = "item", name = "kr-promethium-research-data", amount = 10 } },
		crafting_machine_tint = {
			primary = { r = 0, g = 0, b = 0.1, a = 1 },
			secondary = { r = 0, g = 0, b = 0.4, a = 1 },
			tertiary = { r = 0.1, g = 0.1, b = 0.4, a = 1 },
			quaternary = { r = 0, g = 0, b = 0.1, a = 1 },
		},
	},
	{
		type = "recipe",
		name = "kr-space-research-data",
		enabled = false,
		energy_required = 15,
		ingredients = {
			{ type = "item", name = "carbon", amount = 1 },
			{ type = "item", name = "ice", amount = 1 },
			{ type = "item", name = "iron-plate", amount = 2 },
		},
		surface_conditions = {
			{
				property = "gravity",
				min = 0,
				max = 0,
			},
		},
		results = {
			{ type = "item", name = "kr-space-research-data", amount = 5 },
		},
		allow_productivity = true,
		main_product = "kr-space-research-data",
	},
})

--tech cards

local data_util = require("data-util")

data_util.make_tech_card("kr-singularity-tech-card", {
	{ type = "item", name = "kr-charged-matter-stabilizer", amount = 5 },
	{ type = "item", name = "tungsten-carbide", amount = 1 },
	{ type = "item", name = "superconductor", amount = 2 },
	{ type = "item", name = "bioflux", amount = 1 },
})

data_util.make_tech_card("kr-matter-tech-card", {
	{ type = "item", name = "kr-matter-research-data", amount = 5 },
	{ type = "item", name = "processing-unit", amount = 5 },
})

data_util.make_tech_card("kr-advanced-tech-card", {
	{ type = "item", name = "kr-imersium-gear-wheel", amount = 20 },
	{ type = "item", name = "kr-lithium-sulfur-battery", amount = 10 },
	{ type = "item", name = "electric-engine-unit", amount = 5 },
})
