data:extend({
	{
		type = "technology",
		name = "kr-automation-core",
		icon = "__Krastorio2Assets__/technologies/automation-core.png",
		icon_size = 256,
		research_trigger = {
			type = "craft-item",
			item = "iron-gear-wheel",
			count = 10,
		},
		effects = {
			{ type = "unlock-recipe", recipe = "kr-automation-core" },
		},
		ignore_tech_cost_multiplier = true,
	},
	{
		type = "technology",
		name = "kr-crusher",
		icon = "__Krastorio2Assets__/technologies/crusher.png",
		icon_size = 256,
		research_trigger = {
			type = "craft-item",
			item = "stone",
			count = 50,
		},
		prerequisites = { "kr-automation-core" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-crusher" },
		},
		ignore_tech_cost_multiplier = true,
	},
	{
		type = "technology",
		name = "kr-decorations",
		icon = "__Krastorio2Assets__/technologies/decorations.png",
		icon_size = 256,
		research_trigger = {
			type = "craft-item",
			item = "kr-greenhouse",
			count = 10,
		},
		prerequisites = { "kr-greenhouse" },
		effects = {}, -- This is populated during data-updates by prototypes/others/greenhouse.lua
	},
	{
		type = "technology",
		name = "kr-laboratory",
		icon = "__base__/graphics/technology/research-speed.png",
		icon_size = 256,
		research_trigger = {
			type = "craft-item",
			item = "copper-plate",
			count = 20,
		},
		prerequisites = { "kr-automation-core" },
		effects = {
			{ type = "unlock-recipe", recipe = "lab" },
		},
		ignore_tech_cost_multiplier = true,
	},
	{
		type = "technology",
		name = "kr-greenhouse",
		icon = "__Krastorio2Assets__/technologies/greenhouse.png",
		icon_size = 256,
		research_trigger = {
			type = "craft-item",
			item = "offshore-pump",
		},
		prerequisites = { "kr-stone-processing", "steam-power" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-greenhouse" },
			{ type = "unlock-recipe", recipe = "wood" },
			{ type = "unlock-recipe", recipe = "wood-processing" },
		},
		ignore_tech_cost_multiplier = true,
	},
	{
		type = "technology",
		name = "kr-iron-pickaxe",
		icons = util.technology_icon_constant_mining("__Krastorio2Assets__/technologies/iron-pickaxe.png"),
		order = "b-c-a",
		research_trigger = {
			type = "craft-item",
			item = "iron-plate",
			count = 200,
		},
		prerequisites = {},
		effects = {
			{ type = "character-mining-speed", modifier = 0.50 },
		},
	},
	{
		type = "technology",
		name = "kr-stone-processing",
		icon = "__Krastorio2Assets__/technologies/stone-processing.png",
		icon_size = 256,
		research_trigger = {
			type = "craft-item",
			item = "kr-crusher",
		},
		prerequisites = { "kr-crusher" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-sand" },
			{ type = "unlock-recipe", recipe = "kr-glass" },
		},
		ignore_tech_cost_multiplier = true,
	},
	{
		type = "technology",
		name = "kr-light-armor",
		icon = "__Krastorio2Assets__/technologies/light-armor.png",
		icon_size = 256,
		research_trigger = {
			type = "craft-item",
			item = "submachine-gun",
		},
		prerequisites = { "military" },
		effects = {
			{ type = "unlock-recipe", recipe = "light-armor" },
		},
	},
})

data.raw.technology["automation"].unit = nil
data.raw.technology["automation"].research_trigger = {
	type = "craft-item",
	item = "kr-automation-core",
	count = 10,
}
data.raw.technology["automation-science-pack"].unit = nil
data.raw.technology["automation-science-pack"].research_trigger = {
	type = "craft-item",
	item = "lab",
	count = 1,
}
data.raw.technology["steam-power"].unit = nil
data.raw.technology["steam-power"].research_trigger = {
	type = "craft-item",
	item = "iron-plate",
	count = 50,
}
data.raw.technology["steel-axe"].unit = nil
data.raw.technology["steel-axe"].research_trigger = {
	type = "craft-item",
	item = "steel-plate",
	count = 50,
}
