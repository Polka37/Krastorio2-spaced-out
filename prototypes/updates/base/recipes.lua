local data_util = require("data-util")

local recipe = data.raw.recipe

recipe["advanced-circuit"].energy_required = 4
data_util.add_or_replace_ingredient(
	"advanced-circuit",
	"electronic-circuit",
	{ type = "item", name = "electronic-circuit", amount = 4 }
)
data_util.add_or_replace_ingredient(
	"advanced-circuit",
	"copper-cable",
	{ type = "item", name = "copper-cable", amount = 4 }
)
data_util.add_or_replace_ingredient(
	"advanced-circuit",
	"plastic-bar",
	{ type = "item", name = "kr-electronic-components", amount = 2 }
)
data_util.add_or_replace_ingredient("biolab", "lab", { type = "item", name = "kr-advanced-lab", amount = 1 })
recipe["advanced-circuit"].results = {
	{ type = "item", name = "advanced-circuit", amount = 2 },
}
recipe["artillery-turret"].energy_required = 60

recipe["artillery-wagon"].energy_required = 40
recipe["artillery-wagon"].ingredients = {
	{ type = "item", name = "artillery-turret", amount = 1 },
	{ type = "item", name = "cargo-wagon", amount = 1 },
	{ type = "item", name = "kr-rare-metals", amount = 20 },
	{ type = "item", name = "steel-plate", amount = 20 },
	{ type = "item", name = "kr-steel-gear-wheel", amount = 20 },
}

recipe["assembling-machine-1"].energy_required = 1
data_util.add_or_replace_ingredient(
	"assembling-machine-1",
	"iron-plate",
	{ type = "item", name = "kr-iron-beam", amount = 4 }
)
data_util.add_or_replace_ingredient(
	"assembling-machine-1",
	"electronic-circuit",
	{ type = "item", name = "kr-automation-core", amount = 3 }
)

recipe["assembling-machine-2"].energy_required = 2

recipe["assembling-machine-3"].energy_required = 3
data_util.add_or_replace_ingredient(
	"assembling-machine-3",
	"assembling-machine-2",
	{ type = "item", name = "assembling-machine-2", amount = 1 }
)
data_util.add_or_replace_ingredient(
	"assembling-machine-3",
	"speed-module",
	{ type = "item", name = "speed-module", amount = 2 }
)
table.insert(recipe["assembling-machine-3"].ingredients, { type = "item", name = "advanced-circuit", amount = 3 })
table.insert(recipe["assembling-machine-3"].ingredients, { type = "item", name = "kr-steel-gear-wheel", amount = 5 })

data_util.add_or_replace_ingredient(
	"big-mining-drill",
	"electric-mining-drill",
	{ type = "item", name = "kr-electric-mining-drill-mk2", amount = 1 }
)
recipe["atomic-bomb"].energy_required = 10
table.insert(recipe["atomic-bomb"].ingredients, { type = "item", name = "kr-heavy-rocket", amount = 1 })
data_util.add_or_replace_ingredient("atomic-bomb", "uranium-235", { type = "item", name = "uranium-235", amount = 20 })

recipe["battery-equipment"].ingredients = {
	{ type = "item", name = "battery", amount = 2 },
	{ type = "item", name = "iron-plate", amount = 2 },
	{ type = "item", name = "electronic-circuit", amount = 1 },
}

recipe["battery-mk2-equipment"].ingredients = {
	{ type = "item", name = "battery-equipment", amount = 2 },
	{ type = "item", name = "steel-plate", amount = 2 },
	{ type = "item", name = "advanced-circuit", amount = 1 },
}

data_util.add_or_replace_ingredient(
	"big-electric-pole",
	"copper-cable",
	{ type = "item", name = "copper-cable", amount = 8 }
)
data_util.add_or_replace_ingredient(
	"big-electric-pole",
	"steel-plate",
	{ type = "item", name = "kr-steel-beam", amount = 4 }
)

recipe["boiler"].enabled = false

recipe["bulk-inserter"].ingredients = {
	{ type = "item", name = "kr-inserter-parts", amount = 1 },
	{ type = "item", name = "advanced-circuit", amount = 2 },
	{ type = "item", name = "steel-plate", amount = 1 },
	{ type = "item", name = "kr-steel-gear-wheel", amount = 2 },
}

recipe["burner-inserter"].ingredients = {
	{ type = "item", name = "kr-inserter-parts", amount = 1 },
	{ type = "item", name = "iron-plate", amount = 1 },
}

recipe["car"].energy_required = 30

recipe["cargo-wagon"].energy_required = 20
data_util.add_or_replace_ingredient(
	"cargo-wagon",
	"steel-plate",
	{ type = "item", name = "kr-steel-beam", amount = 10 }
)

data_util.add_or_replace_ingredient("combat-shotgun", "wood", { type = "item", name = "wood", amount = 3 })
data_util.add_or_replace_ingredient(
	"combat-shotgun",
	"steel-plate",
	{ type = "item", name = "steel-plate", amount = 4 }
)
data_util.add_or_replace_ingredient(
	"combat-shotgun",
	"copper-plate",
	{ type = "item", name = "copper-plate", amount = 2 }
)
data_util.add_or_replace_ingredient(
	"combat-shotgun",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 3 }
)

recipe["copper-cable"].enabled = true
data_util.add_or_replace_ingredient("copper-plate", "copper-ore", { type = "item", name = "copper-ore", amount = 2 })

data_util.add_or_replace_ingredient(
	"electric-mining-drill",
	"iron-plate",
	{ type = "item", name = "kr-iron-beam", amount = 2 }
)

recipe["electronic-circuit"].enabled = false
recipe["electronic-circuit"].energy_required = 2
data_util.add_or_replace_ingredient(
	"electronic-circuit",
	"iron-plate",
	{ type = "item", name = "iron-plate", amount = 2 }
)
data_util.add_or_replace_ingredient(
	"electronic-circuit",
	"copper-cable",
	{ type = "item", name = "copper-cable", amount = 4 }
)
recipe["electronic-circuit"].results = {
	{ type = "item", name = "electronic-circuit", amount = 2 },
}
recipe["electronic-circuit"].order = "b[circuits]-a[electronic-circuit-original]"

recipe["processing-unit"].order = "b[circuits]-c[processing-circuit-a]"

data_util.add_or_replace_ingredient(
	"energy-shield-mk2-equipment",
	"energy-shield-equipment",
	{ type = "item", name = "energy-shield-equipment", amount = 5 }
)

data_util.convert_ingredient("engine-unit", "steel-plate", "iron-plate")

recipe["exoskeleton-equipment"].ingredients = {
	{ type = "item", name = "electric-engine-unit", amount = 10 },
	{ type = "item", name = "advanced-circuit", amount = 10 },
	{ type = "item", name = "steel-plate", amount = 10 },
}

data_util.add_or_replace_ingredient(
	"express-splitter",
	"iron-gear-wheel",
	{ type = "item", name = "kr-steel-gear-wheel", amount = 4 }
)

data_util.add_or_replace_ingredient(
	"express-transport-belt",
	"iron-gear-wheel",
	{ type = "item", name = "kr-steel-gear-wheel", amount = 4 }
)

data_util.add_or_replace_ingredient(
	"express-underground-belt",
	"iron-gear-wheel",
	{ type = "item", name = "express-transport-belt", amount = 20 }
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

recipe["fast-inserter"].ingredients = {
	{ type = "item", name = "kr-inserter-parts", amount = 1 },
	{ type = "item", name = "electronic-circuit", amount = 2 },
	{ type = "item", name = "steel-plate", amount = 1 },
}

data_util.add_or_replace_ingredient(
	"fast-splitter",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 4 }
)
data_util.add_or_replace_ingredient(
	"fast-splitter",
	"electronic-circuit",
	{ type = "item", name = "electronic-circuit", amount = 2 }
)

data_util.add_or_replace_ingredient(
	"fast-transport-belt",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 4 }
)

data_util.add_or_replace_ingredient(
	"fast-underground-belt",
	"iron-gear-wheel",
	{ type = "item", name = "fast-transport-belt", amount = 10 }
)

recipe["fission-reactor-equipment"].ingredients = {
	{ type = "item", name = "copper-plate", amount = 50 },
	{ type = "item", name = "steel-plate", amount = 50 },
	{ type = "item", name = "advanced-circuit", amount = 50 },
}

data_util.convert_ingredient("flamethrower-ammo", "steel-plate", "iron-plate")

recipe["flamethrower-turret"].energy_required = 20
data_util.add_or_replace_ingredient(
	"flamethrower-turret",
	"steel-plate",
	{ type = "item", name = "steel-plate", amount = 20 }
)

data_util.add_or_replace_ingredient(
	"flying-robot-frame",
	"electronic-circuit",
	{ type = "item", name = "kr-electronic-components", amount = 10 }
)

recipe["fluid-wagon"].energy_required = 20

recipe["gun-turret"].energy_required = 10
data_util.add_or_replace_ingredient("gun-turret", "iron-plate", { type = "item", name = "kr-iron-beam", amount = 5 })
data_util.add_or_replace_ingredient(
	"gun-turret",
	"copper-plate",
	{ type = "item", name = "kr-automation-core", amount = 3 }
)
data_util.add_or_replace_ingredient(
	"gun-turret",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 4 }
)

data_util.convert_ingredient("heat-pipe", "steel-plate", "kr-quartz")

data_util.add_or_replace_ingredient("heavy-armor", "light-armor", { type = "item", name = "light-armor", amount = 1 })
data_util.remove_ingredient("heavy-armor", "copper-plate")

recipe["inserter"].enabled = false
recipe["inserter"].ingredients = {
	{ type = "item", name = "kr-inserter-parts", amount = 1 },
	{ type = "item", name = "kr-automation-core", amount = 1 },
	{ type = "item", name = "electronic-circuit", amount = 1 },
}

data_util.add_or_replace_ingredient("iron-plate", "iron-ore", { type = "item", name = "iron-ore", amount = 2 })

data_util.add_or_replace_ingredient("iron-gear-wheel", "iron-plate", { type = "item", name = "iron-plate", amount = 1 })
recipe["iron-gear-wheel"].results = { { type = "item", name = "iron-gear-wheel", amount = 1 } }

recipe["iron-stick"].enabled = true

recipe["kovarex-enrichment-process"].energy_required = 60
data_util.add_or_replace_ingredient(
	"kovarex-enrichment-process",
	"uranium-235",
	{ type = "item", name = "uranium-235", amount = 30, ignored_by_stats = 30 }
)
data_util.add_or_replace_ingredient(
	"kovarex-enrichment-process",
	"uranium-238",
	{ type = "item", name = "uranium-238", amount = 3 }
)
data_util.add_or_replace_product(
	"kovarex-enrichment-process",
	"uranium-235",
	{ type = "item", name = "uranium-235", amount = 31, ignored_by_stats = 30, ignored_by_productivity = 30 }
)
data_util.add_or_replace_product(
	"kovarex-enrichment-process",
	"uranium-238",
	{ type = "item", name = "stone", amount = 2 }
)
data_util.add_or_replace_product("molten-iron", "molten-iron", { type = "fluid", name = "molten-iron", amount = 300 })
data_util.add_or_replace_product(
	"molten-copper",
	"molten-copper",
	{ type = "fluid", name = "molten-copper", amount = 300 }
)

data_util.add_or_replace_ingredient("lab", "electronic-circuit", { type = "item", name = "kr-iron-beam", amount = 10 })
data_util.add_or_replace_ingredient("lab", "iron-gear-wheel", { type = "item", name = "copper-plate", amount = 10 })
data_util.add_or_replace_ingredient("lab", "transport-belt", { type = "item", name = "copper-cable", amount = 10 })

recipe["laser-turret"].energy_required = 30
table.insert(recipe["laser-turret"].ingredients, { type = "item", name = "kr-quartz", amount = 5 })
data_util.add_or_replace_ingredient("laser-turret", "steel-plate", { type = "item", name = "steel-plate", amount = 15 })

recipe["locomotive"].energy_required = 60
data_util.add_or_replace_ingredient("locomotive", "steel-plate", { type = "item", name = "steel-plate", amount = 80 })

recipe["light-armor"].enabled = false

recipe["long-handed-inserter"].ingredients = {
	{ type = "item", name = "kr-inserter-parts", amount = 1 },
	{ type = "item", name = "kr-automation-core", amount = 1 },
	{ type = "item", name = "iron-stick", amount = 2 },
}

data_util.add_or_replace_ingredient(
	"low-density-structure",
	"copper-plate",
	{ type = "item", name = "copper-plate", amount = 10 }
)

data_util.add_or_replace_ingredient(
	"medium-electric-pole",
	"copper-cable",
	{ type = "item", name = "copper-cable", amount = 4 }
)
data_util.add_or_replace_ingredient(
	"medium-electric-pole",
	"steel-plate",
	{ type = "item", name = "kr-iron-beam", amount = 2 }
)

data_util.add_or_replace_ingredient("modular-armor", "heavy-armor", { type = "item", name = "heavy-armor", amount = 1 })
data_util.remove_ingredient("modular-armor", "steel-plate")

recipe["night-vision-equipment"].ingredients = {
	{ type = "item", name = "advanced-circuit", amount = 2 },
	{ type = "item", name = "iron-plate", amount = 1 },
	{ type = "item", name = "plastic-bar", amount = 1 },
	{ type = "item", name = "kr-glass", amount = 1 },
}

data_util.add_or_replace_ingredient(
	"nuclear-fuel-reprocessing",
	"depleted-uranium-fuel-cell",
	{ type = "item", name = "depleted-uranium-fuel-cell", amount = 1 }
)
data_util.add_or_replace_product(
	"nuclear-fuel-reprocessing",
	"uranium-238",
	{ type = "item", name = "uranium-238", amount = 6 }
)
data_util.add_or_replace_product("nuclear-fuel-reprocessing", "stone", { type = "item", name = "stone", amount = 4 })
table.insert(
	recipe["nuclear-fuel-reprocessing"].results,
	{ type = "item", name = "kr-tritium", probability = 0.15, amount = 1 }
)

recipe["nuclear-reactor"].energy_required = 120
recipe["nuclear-reactor"].category = "crafting-with-fluid"
data_util.add_or_replace_ingredient("nuclear-reactor", "concrete", { type = "item", name = "concrete", amount = 500 })
data_util.add_or_replace_ingredient(
	"nuclear-reactor",
	"steel-plate",
	{ type = "item", name = "steel-plate", amount = 200 }
)
data_util.add_or_replace_ingredient(
	"nuclear-reactor",
	"advanced-circuit",
	{ type = "item", name = "advanced-circuit", amount = 200 }
)
data_util.add_or_replace_ingredient(
	"nuclear-reactor",
	"copper-plate",
	{ type = "item", name = "heat-pipe", amount = 20 }
)
table.insert(recipe["nuclear-reactor"].ingredients, { type = "item", name = "kr-rare-metals", amount = 200 })

data_util.add_or_replace_ingredient(
	"oil-refinery",
	"steel-plate",
	{ type = "item", name = "kr-steel-beam", amount = 4 }
)
data_util.convert_ingredient("oil-refinery", "iron-gear-wheel", "kr-steel-gear-wheel")

data_util.add_or_replace_ingredient(
	"personal-laser-defense-equipment",
	"processing-unit",
	{ type = "item", name = "kr-electronic-components", amount = 50 }
)

data_util.add_or_replace_ingredient(
	"personal-roboport-equipment",
	"battery",
	{ type = "item", name = "battery", amount = 45 }
)
data_util.add_or_replace_ingredient(
	"personal-roboport-equipment",
	"advanced-circuit",
	{ type = "item", name = "advanced-circuit", amount = 5 }
)
data_util.add_or_replace_ingredient(
	"personal-roboport-equipment",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 20 }
)
data_util.remove_ingredient("personal-roboport-equipment", "steel-plate")

recipe["pipe"].enabled = false

recipe["pipe-to-ground"].enabled = false

data_util.add_or_replace_ingredient("pistol", "iron-plate", { type = "item", name = "iron-plate", amount = 2 })
data_util.add_or_replace_ingredient("pistol", "copper-plate", { type = "item", name = "copper-plate", amount = 1 })

data_util.add_or_replace_ingredient(
	"personal-roboport-mk2-equipment",
	"processing-unit",
	{ type = "item", name = "processing-unit", amount = 20 }
)

data_util.add_or_replace_ingredient(
	"piercing-shotgun-shell",
	"shotgun-shell",
	{ type = "item", name = "shotgun-shell", amount = 1 }
)
data_util.add_or_replace_ingredient(
	"piercing-shotgun-shell",
	"steel-plate",
	{ type = "item", name = "steel-plate", amount = 3 }
)
data_util.remove_ingredient("piercing-shotgun-shell", "copper-plate")

data_util.add_or_replace_ingredient(
	"power-armor",
	"modular-armor",
	{ type = "item", name = "modular-armor", amount = 1 }
)
data_util.remove_ingredient("power-armor", "steel-plate")

data_util.add_or_replace_ingredient(
	"power-armor-mk2",
	"power-armor",
	{ type = "item", name = "power-armor", amount = 1 }
)
data_util.remove_ingredient("power-armor-mk2", "processing-unit")

recipe["processing-unit"].energy_required = 12
data_util.remove_ingredient("processing-unit", "electronic-circuit")
data_util.add_or_replace_ingredient(
	"processing-unit",
	"advanced-circuit",
	{ type = "item", name = "advanced-circuit", amount = 6 }
)
data_util.add_or_replace_ingredient(
	"processing-unit",
	"sulfuric-acid",
	{ type = "fluid", name = "sulfuric-acid", amount = 10 }
)
table.insert(recipe["processing-unit"].ingredients, { type = "item", name = "kr-rare-metals", amount = 3 })
recipe["processing-unit"].results = {
	{ type = "item", name = "processing-unit", amount = 2 },
}

data_util.convert_ingredient("pumpjack", "iron-gear-wheel", "kr-steel-gear-wheel")
data_util.add_or_replace_ingredient("pumpjack", "iron-plate", { type = "item", name = "kr-steel-beam", amount = 4 })

recipe["radar"].enabled = false

recipe["rail"].ingredients = {
	{ type = "item", name = "kr-steel-beam", amount = 1 },
	{ type = "item", name = "stone", amount = 2 },
}

data_util.add_or_replace_ingredient(
	"refined-concrete",
	"steel-plate",
	{ type = "item", name = "kr-iron-beam", amount = 5 }
)
data_util.remove_ingredient("refined-concrete", "iron-stick")

data_util.add_or_replace_ingredient(
	"repair-pack",
	"iron-gear-wheel",
	{ type = "item", name = "iron-plate", amount = 2 }
)
data_util.add_or_replace_ingredient(
	"repair-pack",
	"electronic-circuit",
	{ type = "item", name = "copper-plate", amount = 2 }
)

data_util.add_or_replace_ingredient("roboport", "steel-plate", { type = "item", name = "kr-steel-beam", amount = 20 })

recipe["rocket-fuel"].category = "kr-fuel-refinery"
recipe["rocket-fuel"].energy_required = 16
recipe["rocket-fuel"].auto_recycle = false
data_util.add_or_replace_ingredient("rocket-fuel", "light-oil", { type = "fluid", name = "light-oil", amount = 30 })
data_util.add_or_replace_ingredient("rocket-fuel", "solid-fuel", { type = "item", name = "iron-plate", amount = 1 })
table.insert(recipe["rocket-fuel"].ingredients, { type = "fluid", name = "kr-oxygen", amount = 50 })
recipe["rocket-fuel"].crafting_machine_tint = {
	primary = { r = 0.692, g = 0.800, b = 0.550, a = 0.100 },
	secondary = { r = 0.581, g = 0.817, b = 0.670, a = 0.250 },
	tertiary = { r = 0.554, g = 0.417, b = 0.529, a = 0.500 },
	quaternary = { r = 0.462, g = 0.607, b = 0.839, a = 0.900 },
}

recipe["wood-processing"].surface_conditions = nil
recipe["pentapod-egg"].surface_conditions = { { property = "pressure", min = 1000, max = 2000 } }
data_util.add_or_replace_ingredient("shotgun", "wood", { type = "item", name = "wood", amount = 2 })
data_util.add_or_replace_ingredient("shotgun", "iron-plate", { type = "item", name = "iron-plate", amount = 3 })
data_util.add_or_replace_ingredient("shotgun", "copper-plate", { type = "item", name = "copper-plate", amount = 2 })
data_util.add_or_replace_ingredient(
	"shotgun",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 3 }
)

data_util.remove_ingredient("slowdown-capsule", "electronic-circuit")

data_util.remove_ingredient("lithium", "holmium-plate")

data_util.add_or_replace_ingredient(
	"small-electric-pole",
	"copper-cable",
	{ type = "item", name = "copper-cable", amount = 1 }
)
data_util.add_or_replace_product(
	"small-electric-pole",
	"small-electric-pole",
	{ type = "item", name = "small-electric-pole", amount = 1 }
)
recipe["small-electric-pole"].enabled = true

recipe["ammonia-rocket-fuel"] = {
	type = "recipe",
	name = "ammonia-rocket-fuel",
	icons = {
		{ icon = "__Krastorio2Assets__/icons/recipes/rocket-fuel.png" },
		{ icon = "__Krastorio2Assets__/icons/fluids/ammonia.png", scale = 0.26, shift = { 8, -8 } },
	},
	enabled = false,
	energy_required = 16,
	category = "kr-fuel-refinery",
	ingredients = {
		{ type = "item", name = "iron-plate", amount = 1 },
		{ type = "fluid", name = "ammonia", amount = 50 },
		{ type = "fluid", name = "kr-oxygen", amount = 50 },
	},
	results = {
		{ type = "item", name = "rocket-fuel", amount = 1 },
	},
	allow_productivity = true,
	always_show_made_in = true,
	crafting_machine_tint = {
		primary = { r = 0.261, g = 0.200, b = 0.650, a = 0.100 },
		secondary = { r = 0.211, g = 0.447, b = 0.670, a = 0.250 },
		tertiary = { r = 0.204, g = 0.417, b = 0.529, a = 0.500 },
		quaternary = { r = 0.312, g = 0.407, b = 0.739, a = 0.900 },
	},
	auto_recycle = false,
}

-- data_util.add_or_replace_ingredient("small-lamp", { type = "item", name = "kr-glass", amount = 1 })
data_util.convert_ingredient("small-lamp", "electronic-circuit", "kr-glass")

data_util.add_or_replace_ingredient("solar-panel", "copper-plate", { type = "item", name = "kr-glass", amount = 10 })
data_util.add_or_replace_ingredient("solar-panel", "steel-plate", { type = "item", name = "steel-plate", amount = 5 })
data_util.add_or_replace_ingredient(
	"solar-panel",
	"electronic-circuit",
	{ type = "item", name = "electronic-circuit", amount = 10 }
)
data_util.add_or_replace_ingredient("solar-panel", "iron-plate", { type = "item", name = "kr-iron-beam", amount = 4 })
table.insert(recipe["solar-panel"].ingredients, { type = "item", name = "kr-silicon", amount = 5 })

table.insert(recipe["solar-panel-equipment"].ingredients, { type = "item", name = "kr-glass", amount = 5 })

--update modules recipes
modules = { "efficiency-module", "speed-module", "productivity-module", "quality-module" }
for _, module in pairs(modules) do
	recipe[module].energy_required = 15
	recipe[module].ingredients = {
		{ type = "item", name = "electronic-circuit", amount = 5 },
		{ type = "item", name = "kr-electronic-components", amount = 10 },
	}
	recipe[module .. "-2"].energy_required = 15
	recipe[module .. "-2"].ingredients = {
		{ type = "item", name = "advanced-circuit", amount = 5 },
		{ type = "item", name = "electronic-circuit", amount = 5 },
		{ type = "item", name = module, amount = 5 },
	}
end

data_util.add_or_replace_ingredient(
	"spidertron",
	"fission-reactor-equipment",
	{ type = "item", name = "kr-fusion-reactor-equipment", amount = 1 }
)
data_util.convert_ingredient("spidertron", "raw-fish", "kr-ai-core")

data_util.add_or_replace_ingredient("splitter", "iron-plate", { type = "item", name = "iron-gear-wheel", amount = 5 })
data_util.add_or_replace_ingredient(
	"splitter",
	"kr-automation-core",
	{ type = "item", name = "kr-automation-core", amount = 1 }
)

recipe["steam-engine"].energy_required = 5

recipe["steam-turbine"].energy_required = 10
data_util.add_or_replace_ingredient(
	"steam-turbine",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 14 }
)
data_util.add_or_replace_ingredient("steam-turbine", "pipe", { type = "item", name = "pipe", amount = 10 })
table.insert(recipe["steam-turbine"].ingredients, { type = "item", name = "steam-engine", amount = 2 })

recipe["steel-plate"].energy_required = 16
recipe["steel-plate"].ingredients = {
	{ type = "item", name = "iron-plate", amount = 10 },
	{ type = "item", name = "kr-coke", amount = 2 },
}
recipe["steel-plate"].results = {
	{ type = "item", name = "steel-plate", amount = 5 },
}

recipe["steam-engine"].enabled = false

data_util.add_or_replace_ingredient("storage-tank", "iron-plate", { type = "item", name = "iron-plate", amount = 10 })
data_util.convert_ingredient("storage-tank", "steel-plate", "kr-iron-beam")

data_util.add_or_replace_ingredient("submachine-gun", "iron-plate", { type = "item", name = "iron-plate", amount = 3 })
data_util.add_or_replace_ingredient(
	"submachine-gun",
	"copper-plate",
	{ type = "item", name = "copper-plate", amount = 2 }
)
data_util.add_or_replace_ingredient(
	"submachine-gun",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 5 }
)

data_util.add_or_replace_ingredient("substation", "copper-cable", { type = "item", name = "copper-cable", amount = 16 })
data_util.add_or_replace_ingredient("substation", "steel-plate", { type = "item", name = "kr-steel-beam", amount = 8 })

recipe["tank"].energy_required = 60
data_util.add_or_replace_ingredient("tank", "engine-unit", { type = "item", name = "engine-unit", amount = 20 })
data_util.add_or_replace_ingredient("tank", "steel-plate", { type = "item", name = "steel-plate", amount = 60 })
data_util.add_or_replace_ingredient(
	"tank",
	"iron-gear-wheel",
	{ type = "item", name = "kr-steel-gear-wheel", amount = 30 }
)

data_util.add_or_replace_ingredient(
	"underground-belt",
	"iron-plate",
	{ type = "item", name = "kr-iron-beam", amount = 2 }
)

data_util.add_or_replace_ingredient(
	"uranium-fuel-cell",
	"uranium-235",
	{ type = "item", name = "uranium-235", amount = 2 }
)
data_util.add_or_replace_ingredient(
	"uranium-fuel-cell",
	"uranium-238",
	{ type = "item", name = "uranium-238", amount = 10 }
)
data_util.add_or_replace_ingredient(
	"uranium-fuel-cell",
	"iron-plate",
	{ type = "item", name = "steel-plate", amount = 1 }
)
data_util.add_or_replace_product(
	"uranium-fuel-cell",
	"uranium-fuel-cell",
	{ type = "item", name = "uranium-fuel-cell", amount = 1 }
)
data_util.add_or_replace_ingredient(
	"fusion-power-cell",
	"kr-tritium",
	{ type = "item", name = "kr-tritium", amount = 4 }
)

recipe["uranium-processing"].results = {
	{ type = "item", name = "uranium-235", probability = 0.007, amount = 1 },
	{ type = "item", name = "uranium-238", probability = 0.993, amount = 1 },
	{ type = "item", name = "iron-ore", probability = 0.25, amount = 1 },
	{ type = "item", name = "stone", probability = 0.5, amount = 1 },
}

recipe["casting-steel"].icons = {
	{ icon = "__Krastorio2Assets__/icons/items/steel-plate.png" },
	{ icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.33, shift = { 8, -8 } },
}
recipe["casting-steel"].hide_from_signal_gui = false
recipe["casting-iron-gear-wheel"].icons = {
	{ icon = "__Krastorio2Assets__/icons/items/iron-gear-wheel.png" },
	{ icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.33, shift = { 8, -8 } },
}
recipe["casting-iron-gear-wheel"].hide_from_signal_gui = false

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

data_util.add_or_replace_product("scrap-recycling", "solid-fuel", {
	type = "item",
	name = "electronic-circuit",
	amount = 1,
	probability = 0.10,
	show_details_in_recipe_tooltip = false,
})
table.insert(recipe["scrap-recycling"].results, 8, {
	type = "item",
	name = "kr-electronic-components",
	amount = 1,
	probability = 0.04,
	show_details_in_recipe_tooltip = false,
})

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
