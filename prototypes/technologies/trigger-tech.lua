data:extend({
	{
		type = "technology",
		name = "kr-automation-core",
		icon = "__Krastorio2Assets__/technologies/automation-core.png",
		icon_size = 256,
		-- Only used to spoof aai industry. trigger one is true one. change it back later once it updates
		unit = {
			time = 10,
			count = 10,
			ingredients = {
				{ "automation-science-pack", 1 },
			},
		},
		--[[
      research_trigger = {
      type = "craft-item",
      item = "iron-gear-wheel",
      count = 10
    }, ]]
		--
		prerequisites = {},
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
			item = "electronic-circuit",
			count = 20,
		},
		prerequisites = { "electronics" },
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
