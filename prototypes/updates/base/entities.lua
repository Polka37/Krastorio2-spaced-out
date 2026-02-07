local data_util = require("data-util")

data.raw.gate["gate"].resistances = {
	{ type = "physical", decrease = 3, percent = 20 },
	{ type = "impact", decrease = 45, percent = 60 },
	{ type = "explosion", decrease = 50, percent = 80 },
	{ type = "kr-radioactive", percent = 100 },
	{ type = "fire", percent = 100 },
	{ type = "acid", percent = 80 },
	{ type = "laser", percent = 70 },
}

data.raw.reactor["heating-tower"].consumption = "50MW"

table.insert(data.raw.lab["lab"].inputs, "production-science-pack")
table.insert(data.raw.lab["lab"].inputs, "utility-science-pack")
table.insert(data.raw.lab["lab"].inputs, "space-science-pack")
table.insert(data.raw.lab["lab"].inputs, "kr-matter-tech-card")
table.insert(data.raw.lab["lab"].inputs, "kr-advanced-tech-card")
table.insert(data.raw.lab["lab"].inputs, "kr-singularity-tech-card")
if mods["rubia"] then
	table.insert(data.raw.lab["lab"].inputs, "rubia-biofusion-science-pack")
end

data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "turbo-transport-belt"
data.raw["transport-belt"]["turbo-transport-belt"].next_upgrade = "kr-superior-transport-belt"

data.raw["underground-belt"]["express-underground-belt"].max_distance = 15
data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "turbo-underground-belt"

data.raw["underground-belt"]["turbo-underground-belt"].next_upgrade = "kr-superior-underground-belt"
data.raw["underground-belt"]["turbo-underground-belt"].max_distance = 20

data.raw["splitter"]["express-splitter"].next_upgrade = "turbo-splitter"
data.raw["splitter"]["turbo-splitter"].next_upgrade = "kr-superior-splitter"

table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "organic-or-assembling")
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "organic-or-hand-crafting")
table.insert(data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories, "kr-electrolysis")
table.insert(data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories, "kr-fuel-refinery")
table.insert(data.raw["assembling-machine"]["crusher"].crafting_categories, "kr-crushing")
data.raw["assembling-machine"]["crusher"].surface_conditions = nil

data.raw["tree"]["ashland-lichen-tree"].minable = {
	mining_time = 0.5,
	results = {
		{ type = "item", name = "carbon", amount_min = 2, amount_max = 2 },
		{ type = "item", name = "wood", amount_min = 4, amount_max = 4 },
	},
}
data.raw["tree"]["ashland-lichen-tree-flaming"].minable = {
	mining_time = 0.5,
	results = {
		{ type = "item", name = "carbon", amount_min = 2, amount_max = 2 },
		{ type = "item", name = "wood", amount_min = 4, amount_max = 4 },
	},
}

data.raw["simple-entity"]["lithium-iceberg-big"].minable.results = {
	{ type = "item", name = "ice-platform", amount = 1 },
	{ type = "item", name = "ice", amount_min = 3, amount_max = 7 },
	{ type = "item", name = "kr-lithium", amount_min = 1, amount_max = 3 },
}
data.raw["simple-entity"]["lithium-iceberg-huge"].minable.results = {
	{ type = "item", name = "ice-platform", amount_min = 2, amount_max = 4 },
	{ type = "item", name = "ice", amount_min = 6, amount_max = 1 },
	{ type = "item", name = "kr-lithium", amount_min = 2, amount_max = 5 },
}

table.insert(
	data.raw["simple-entity"]["fulgoran-ruin-small"].minable.results,
	{ type = "item", name = "stone-brick", amount = 3 }
)
table.insert(
	data.raw["simple-entity"]["fulgoran-ruin-medium"].minable.results,
	{ type = "item", name = "stone-brick", amount = 5 }
)
table.insert(
	data.raw["simple-entity"]["fulgoran-ruin-stonehenge"].minable.results,
	{ type = "item", name = "stone-brick", amount = 9 }
)
table.insert(
	data.raw["simple-entity"]["fulgoran-ruin-big"].minable.results,
	{ type = "item", name = "stone-brick", amount = 11 }
)
table.insert(
	data.raw["simple-entity"]["fulgoran-ruin-colossal"].minable.results,
	{ type = "item", name = "stone-brick", amount = 37 }
)
table.insert(
	data.raw["simple-entity"]["fulgoran-ruin-huge"].minable.results,
	{ type = "item", name = "stone-brick", amount = 26 }
)
table.insert(
	data.raw["simple-entity"]["fulgoran-ruin-vault"].minable.results,
	{ type = "item", name = "stone-brick", amount = 111 }
)
