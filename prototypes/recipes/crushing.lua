local crushing_lib = require("prototypes.libraries.crushing")

crushing_lib.make_recipe(data.raw.item["bulk-inserter"], {
	subgroup = "intermediate-product",
	order = "e[ei-electronic-components]",
	energy_required = 1,
	results = {
		{ type = "item", name = "kr-inserter-parts", amount = 1 },
		{ type = "item", name = "kr-electronic-components", amount = 2 },
	},
})

crushing_lib.make_recipe(data.raw.item["burner-inserter"], {
	subgroup = "intermediate-product",
	order = "e[ei-electronic-components]",
	energy_required = 1,
	results = {
		{ type = "item", name = "kr-inserter-parts", amount = 1 },
	},
})
data.raw.recipe["kr-crush-burner-inserter"].auto_recycle = false

crushing_lib.make_recipe(data.raw.item["fast-inserter"], {
	subgroup = "intermediate-product",
	order = "e[ei-electronic-components]",
	energy_required = 1,
	results = {
		{ type = "item", name = "kr-inserter-parts", amount = 1 },
	},
})
data.raw.recipe["kr-crush-fast-inserter"].auto_recycle = false

crushing_lib.make_recipe(data.raw.item["inserter"], {
	subgroup = "intermediate-product",
	order = "e[ei-electronic-components]",
	energy_required = 1,
	results = {
		{ type = "item", name = "kr-inserter-parts", amount = 1 },
	},
})
data.raw.recipe["kr-crush-inserter"].auto_recycle = false

crushing_lib.make_recipe(data.raw.item["long-handed-inserter"], {
	subgroup = "intermediate-product",
	order = "e[ei-electronic-components]",
	energy_required = 1,
	results = {
		{ type = "item", name = "kr-inserter-parts", amount = 1 },
	},
})
data.raw.recipe["kr-crush-long-handed-inserter"].auto_recycle = false

crushing_lib.make_recipe(data.raw.item["kr-superior-inserter"], {
	subgroup = "intermediate-product",
	order = "e[ei-electronic-components]",
	energy_required = 1,
	results = {
		{ type = "item", name = "kr-inserter-parts", amount = 1 },
		{ type = "item", name = "kr-electronic-components", amount = 4 },
		{ type = "item", name = "kr-imersite-powder", amount = 3 },
	},
})

crushing_lib.make_recipe(data.raw.item["kr-superior-long-inserter"], {
	subgroup = "intermediate-product",
	order = "e[ei-electronic-components]",
	energy_required = 1,
	results = {
		{ type = "item", name = "kr-inserter-parts", amount = 1 },
		{ type = "item", name = "kr-electronic-components", amount = 4 },
		{ type = "item", name = "kr-imersite-powder", amount = 6 },
	},
})

crushing_lib.make_recipe(data.raw.item["kr-imersite-crystal"], {
	subgroup = "intermediate-product",
	order = "e[ei-electronic-components]",
	energy_required = 1,
	results = {
		{ type = "item", name = "kr-imersite-powder", amount_min = 1, amount_max = 2 },
	},
})
data.raw.recipe["kr-crush-kr-imersite-crystal"].auto_recycle = false

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
