local data_util = require("data-util")

local recipe = data.raw.recipe

data.raw["item-group"]["kr-smelting-crafting"] = nil
data.raw["item-subgroup"]["kr-smelting-crafting"].group = "intermediate-products"

data_util.add_or_replace_ingredient(
	"big-mining-drill",
	"electric-mining-drill",
	{ type = "item", name = "kr-electric-mining-drill-mk2", amount = 1 }
)
data_util.add_or_replace_ingredient(
	"electronic-circuit",
	"iron-plate",
	{ type = "item", name = "iron-plate", amount = 2 }
)
data_util.add_or_replace_ingredient(
	"turbo-underground-belt",
	"turbo-transport-belt",
	{ type = "item", name = "turbo-transport-belt", amount = 20 }
)
data_util.add_or_replace_ingredient(
	"turbo-underground-belt",
	"tungsten-plate",
	{ type = "item", name = "tungsten-plate", amount = 10 }
)
data_util.add_or_replace_ingredient(
	"splitter",
	"kr-automation-core",
	{ type = "item", name = "kr-automation-core", amount = 1 }
)
data_util.add_or_replace_ingredient(
	"fusion-power-cell",
	"kr-tritium",
	{ type = "item", name = "kr-tritium", amount = 4 }
)
data_util.add_or_replace_ingredient(
	"casting-iron-gear-wheel",
	"molten-iron",
	{ type = "fluid", name = "molten-iron", amount = 5 }
)
data_util.add_or_replace_ingredient(
	"casting-steel",
	"molten-iron",
	{ type = "fluid", name = "molten-iron", amount = 20 }
)
data_util.add_or_replace_ingredient(
	"casting-low-density-structure",
	"molten-iron",
	{ type = "fluid", name = "molten-iron", amount = 60 }
)
data_util.add_or_replace_ingredient(
	"casting-low-density-structure",
	"molten-copper",
	{ type = "fluid", name = "molten-copper", amount = 120 }
)
data_util.add_or_replace_ingredient("thruster-fuel", "water", { type = "fluid", name = "kr-hydrogen", amount = 6 })
data_util.add_or_replace_ingredient("thruster-oxidizer", "water", { type = "fluid", name = "kr-oxygen", amount = 4 })
data_util.add_or_replace_ingredient(
	"advanced-thruster-fuel",
	"water",
	{ type = "fluid", name = "kr-hydrogen", amount = 60 }
)
data_util.add_or_replace_ingredient(
	"advanced-thruster-oxidizer",
	"water",
	{ type = "fluid", name = "kr-oxygen", amount = 40 }
)

table.insert(recipe["scrap-recycling"].results, 8, {
	type = "item",
	name = "kr-electronic-components",
	amount = 1,
	probability = 0.04,
	show_details_in_recipe_tooltip = false,
})

data_util.add_or_replace_product("scrap-recycling", "solid-fuel", {
	type = "item",
	name = "electronic-circuit",
	amount = 1,
	probability = 0.10,
	show_details_in_recipe_tooltip = false,
})
data_util.add_or_replace_product("molten-iron", "molten-iron", { type = "fluid", name = "molten-iron", amount = 300 })
data_util.add_or_replace_product(
	"molten-copper",
	"molten-copper",
	{ type = "fluid", name = "molten-copper", amount = 300 }
)
data_util.add_or_replace_product(
	"express-underground-belt",
	"lubricant",
	{ type = "fluid", name = "lubricant", amount = 40 }
)
data_util.add_or_replace_product("express-splitter", "lubricant", { type = "fluid", name = "lubricant", amount = 80 })

recipe["express-underground-belt"].category = "pressing"
recipe["express-splitter"].category = "pressing"

recipe["express-underground-belt"].main_product = "express-underground-belt"
recipe["express-splitter"].main_product = "express-splitter"

data_util.remove_ingredient("electronic-circuit", "wood")
data_util.remove_ingredient("repair-pack", "stone")
data_util.remove_ingredient("lithium", "holmium-plate")
data_util.remove_ingredient("kr-logo", "kr-poop")

recipe["wood-processing"].surface_conditions = nil
recipe["pentapod-egg"].surface_conditions = { { property = "pressure", min = 1000, max = 2000 } }

recipe["electronic-circuit"].order = "b[circuits]-a[electronic-circuit-original]"
recipe["processing-unit"].order = "b[circuits]-c[processing-circuit-a]"

--replace vanilla ammonia fuel with K2 one while retaining prototype name
local ammonia_fuel = table.deepcopy(recipe["kr-rocket-fuel-with-ammonia"])
ammonia_fuel.name = "ammonia-rocket-fuel"
recipe["ammonia-rocket-fuel"] = ammonia_fuel
recipe["kr-rocket-fuel-with-ammonia"] = nil

recipe["casting-steel"].icons = {
	{ icon = "__Krastorio2Assets__/icons/items/steel-plate.png" },
	{ icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.33, shift = { 8, -8 } },
}
recipe["casting-iron-gear-wheel"].icons = {
	{ icon = "__Krastorio2Assets__/icons/items/iron-gear-wheel.png" },
	{ icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.33, shift = { 8, -8 } },
}
recipe["casting-iron-gear-wheel"].hide_from_signal_gui = false
recipe["casting-steel"].hide_from_signal_gui = false

-- Science packs

data_util.make_tech_card("automation-science-pack", {
	{ type = "item", name = "kr-automation-core", amount = 1 },
}, true)

data_util.make_tech_card("logistic-science-pack", {
	{ type = "item", name = "electronic-circuit", amount = 5 },
	{ type = "item", name = "iron-gear-wheel", amount = 5 },
}, true)

data_util.make_tech_card("military-science-pack", {
	{ type = "item", name = "kr-biter-research-data", amount = 1 },
	{ type = "item", name = "kr-electronic-components", amount = 5 },
}, true)

data_util.make_tech_card("chemical-science-pack", {
	{ type = "item", name = "kr-glass", amount = 15 },
	{ type = "item", name = "advanced-circuit", amount = 5 },
	{ type = "fluid", name = "sulfuric-acid", amount = 50 },
}, true)

data_util.make_tech_card("production-science-pack", {
	{ type = "item", name = "fast-transport-belt", amount = 10 },
	{ type = "item", name = "productivity-module", amount = 5 },
	{ type = "item", name = "uranium-238", amount = 5 },
})

data_util.make_tech_card("utility-science-pack", {
	{ type = "item", name = "processing-unit", amount = 5 },
	{ type = "item", name = "rocket-fuel", amount = 5 },
	{ type = "item", name = "low-density-structure", amount = 5 },
})

data_util.make_tech_card("space-science-pack", {
	{ type = "item", name = "kr-space-research-data", amount = 5 },
})

data_util.make_tech_card("metallurgic-science-pack", {
	{ type = "item", name = "kr-metallurgic-research-data", amount = 5 },
})

data_util.make_tech_card("electromagnetic-science-pack", {
	{ type = "item", name = "kr-electromagnetic-research-data", amount = 5 },
})

data_util.make_tech_card("agricultural-science-pack", {
	{ type = "item", name = "kr-agricultural-research-data", amount = 5 },
})

data_util.make_tech_card("cryogenic-science-pack", {
	{ type = "item", name = "kr-cryogenic-research-data", amount = 5 },
})

data_util.make_tech_card("promethium-science-pack", {
	{ type = "item", name = "kr-promethium-research-data", amount = 5 },
	{ type = "item", name = "biter-egg", amount = 5 },
})
