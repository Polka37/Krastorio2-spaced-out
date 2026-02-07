crushing_lib = require("__Krastorio2__.prototypes.libraries.crushing")

crushing_lib.make_recipe(data.raw.item["stack-inserter"], {
	subgroup = "intermediate-product",
	order = "e[ei-electronic-components]",
	energy_required = 1,
	results = {
		{ type = "item", name = "kr-inserter-parts", amount = 1 },
		{ type = "item", name = "kr-electronic-components", amount = 4 },
		{ type = "item", name = "carbon-fiber", amount = 1 },
	},
})

data:extend({
	{
		type = "recipe",
		name = "kr-biter-biomass",
		enabled = false,
		category = "kr-crushing",
		energy_required = 1,
		icons = {
			{ icon = "__Krastorio2Assets__/icons/items/biomass.png", scale = 1, shift = { 8, 8 } },
			{ icon = "__space-age__/graphics/icons/biter-egg.png", scale = 1, shift = { -8, -16 } },
		},
		ingredients = {
			{ type = "item", name = "biter-egg", amount = 1 },
		},
		results = {
			{ type = "item", name = "kr-biomass", amount_min = 3, amount_max = 5 },
		},
		allow_as_intermediate = false,
		allow_intermediates = false,
		allow_productivity = true,
		always_show_made_in = true,
		always_show_products = true,
		hide_from_signal_gui = false,
	},
	{
		type = "recipe",
		name = "kr-pentapod-biomass",
		enabled = false,
		category = "kr-crushing",
		energy_required = 1,
		icons = {
			{ icon = "__Krastorio2Assets__/icons/items/biomass.png", scale = 1, shift = { 8, 8 } },
			{ icon = "__space-age__/graphics/icons/pentapod-egg.png", scale = 1, shift = { -8, -16 } },
		},
		ingredients = {
			{ type = "item", name = "pentapod-egg", amount = 1 },
		},
		results = {
			{ type = "item", name = "kr-biomass", amount_min = 2, amount_max = 4 },
		},
		allow_as_intermediate = false,
		allow_intermediates = false,
		allow_productivity = true,
		always_show_made_in = true,
		always_show_products = true,
		hide_from_signal_gui = false,
	},
	{
		type = "recipe",
		name = "kr-imersite-powder",
		icon = "__Krastorio2Assets__/icons/items/imersite-powder.png",
		enabled = false,
		category = "kr-crushing",
		energy_required = 3,
		ingredients = {
			{ type = "item", name = "kr-imersite", amount = 3 },
		},
		results = {
			{ type = "item", name = "kr-imersite-powder", amount = 3 },
			{ type = "item", name = "kr-sand", amount = 3 },
		},
		main_product = "kr-imersite-powder",
		allow_productivity = true,
		subgroup = "raw-resource",
	},
	{
		type = "recipe",
		name = "kr-sand",
		enabled = false,
		category = "kr-crushing",
		energy_required = 1,
		ingredients = {
			{ type = "item", name = "stone", amount = 3 },
		},
		results = {
			{ type = "item", name = "kr-sand", amount_min = 7, amount_max = 8 },
		},
		allow_productivity = true,
	},
})
