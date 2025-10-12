local data_util = require("data-util")

data.raw.recipe["advanced-circuit"].energy_required = 4
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
data.raw.recipe["advanced-circuit"].results = {
	{ type = "item", name = "advanced-circuit", amount = 2 },
}
data.raw.recipe["artillery-turret"].energy_required = 60

data.raw.recipe["artillery-wagon"].energy_required = 40
data.raw.recipe["artillery-wagon"].ingredients = {
	{ type = "item", name = "artillery-turret", amount = 1 },
	{ type = "item", name = "cargo-wagon", amount = 1 },
	{ type = "item", name = "kr-rare-metals", amount = 20 },
	{ type = "item", name = "steel-plate", amount = 20 },
	{ type = "item", name = "kr-steel-gear-wheel", amount = 20 },
}

data.raw.recipe["assembling-machine-1"].energy_required = 1
data_util.add_or_replace_ingredient(
	"assembling-machine-1",
	"iron-plate",
	{ type = "item", name = "kr-iron-beam", amount = 4 }
)
data_util.add_or_replace_ingredient(
	"big-mining-drill",
	"electric-mining-drill",
	{ type = "item", name = "kr-electric-mining-drill-mk2", amount = 1 }
)
data_util.add_or_replace_ingredient(
	"assembling-machine-1",
	"electronic-circuit",
	{ type = "item", name = "kr-automation-core", amount = 3 }
)

data.raw.recipe["assembling-machine-2"].energy_required = 2

data.raw.recipe["assembling-machine-3"].energy_required = 3
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
table.insert(
	data.raw.recipe["assembling-machine-3"].ingredients,
	{ type = "item", name = "advanced-circuit", amount = 3 }
)
table.insert(
	data.raw.recipe["assembling-machine-3"].ingredients,
	{ type = "item", name = "kr-steel-gear-wheel", amount = 5 }
)

data.raw.recipe["atomic-bomb"].energy_required = 10
table.insert(data.raw.recipe["atomic-bomb"].ingredients, { type = "item", name = "kr-heavy-rocket", amount = 1 })
data_util.add_or_replace_ingredient("atomic-bomb", "uranium-235", { type = "item", name = "uranium-235", amount = 20 })

data.raw.recipe["battery-equipment"].ingredients = {
	{ type = "item", name = "battery", amount = 2 },
	{ type = "item", name = "iron-plate", amount = 2 },
	{ type = "item", name = "electronic-circuit", amount = 1 },
}

data.raw.recipe["battery-mk2-equipment"].ingredients = {
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

data.raw.recipe["boiler"].enabled = false

data.raw.recipe["bulk-inserter"].ingredients = {
	{ type = "item", name = "kr-inserter-parts", amount = 1 },
	{ type = "item", name = "advanced-circuit", amount = 2 },
	{ type = "item", name = "steel-plate", amount = 1 },
	{ type = "item", name = "kr-steel-gear-wheel", amount = 2 },
}

data.raw.recipe["burner-inserter"].ingredients = {
	{ type = "item", name = "kr-inserter-parts", amount = 1 },
	{ type = "item", name = "iron-plate", amount = 1 },
}

data.raw.recipe["car"].energy_required = 30

data.raw.recipe["cargo-wagon"].energy_required = 20
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

data.raw.recipe["copper-cable"].enabled = true
data_util.add_or_replace_ingredient("copper-plate", "copper-ore", { type = "item", name = "copper-ore", amount = 2 })

data.raw.recipe["efficiency-module"].energy_required = 15
data.raw.recipe["efficiency-module"].ingredients = {
	{ type = "item", name = "electronic-circuit", amount = 5 },
	{ type = "item", name = "kr-electronic-components", amount = 10 },
}

data.raw.recipe["efficiency-module-2"].energy_required = 15
data.raw.recipe["efficiency-module-2"].ingredients = {
	{ type = "item", name = "advanced-circuit", amount = 5 },
	{ type = "item", name = "electronic-circuit", amount = 5 },
	{ type = "item", name = "efficiency-module", amount = 5 },
}

data_util.add_or_replace_ingredient(
	"electric-mining-drill",
	"iron-plate",
	{ type = "item", name = "kr-iron-beam", amount = 2 }
)

data.raw.recipe["electronic-circuit"].enabled = false
data.raw.recipe["electronic-circuit"].energy_required = 2
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
data.raw.recipe["electronic-circuit"].results = {
	{ type = "item", name = "electronic-circuit", amount = 2 },
}

data_util.add_or_replace_ingredient(
	"energy-shield-mk2-equipment",
	"energy-shield-equipment",
	{ type = "item", name = "energy-shield-equipment", amount = 5 }
)

data_util.convert_ingredient("engine-unit", "steel-plate", "iron-plate")

data.raw.recipe["exoskeleton-equipment"].ingredients = {
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

data.raw.recipe["fast-inserter"].ingredients = {
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

data.raw.recipe["fission-reactor-equipment"].ingredients = {
	{ type = "item", name = "copper-plate", amount = 50 },
	{ type = "item", name = "steel-plate", amount = 50 },
	{ type = "item", name = "advanced-circuit", amount = 50 },
}

data_util.convert_ingredient("flamethrower-ammo", "steel-plate", "iron-plate")

data.raw.recipe["flamethrower-turret"].energy_required = 20
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

data.raw.recipe["fluid-wagon"].energy_required = 20

data.raw.recipe["gun-turret"].energy_required = 10
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

data.raw.recipe["inserter"].enabled = false
data.raw.recipe["inserter"].ingredients = {
	{ type = "item", name = "kr-inserter-parts", amount = 1 },
	{ type = "item", name = "kr-automation-core", amount = 1 },
	{ type = "item", name = "electronic-circuit", amount = 1 },
}

data_util.add_or_replace_ingredient("iron-plate", "iron-ore", { type = "item", name = "iron-ore", amount = 2 })

data_util.add_or_replace_ingredient("iron-gear-wheel", "iron-plate", { type = "item", name = "iron-plate", amount = 1 })
data.raw.recipe["iron-gear-wheel"].results = { { type = "item", name = "iron-gear-wheel", amount = 1 } }

data.raw.recipe["iron-stick"].enabled = true

data.raw.recipe["kovarex-enrichment-process"].energy_required = 60
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

data.raw.recipe["laser-turret"].energy_required = 30
table.insert(data.raw.recipe["laser-turret"].ingredients, { type = "item", name = "kr-quartz", amount = 5 })
data_util.add_or_replace_ingredient("laser-turret", "steel-plate", { type = "item", name = "steel-plate", amount = 15 })

data.raw.recipe["locomotive"].energy_required = 60
data_util.add_or_replace_ingredient("locomotive", "steel-plate", { type = "item", name = "steel-plate", amount = 80 })

data.raw.recipe["light-armor"].enabled = false

data.raw.recipe["long-handed-inserter"].ingredients = {
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

data.raw.recipe["night-vision-equipment"].ingredients = {
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
	data.raw.recipe["nuclear-fuel-reprocessing"].results,
	{ type = "item", name = "kr-tritium", probability = 0.15, amount = 1 }
)

data.raw.recipe["nuclear-reactor"].energy_required = 120
data.raw.recipe["nuclear-reactor"].category = "crafting-with-fluid"
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
table.insert(data.raw.recipe["nuclear-reactor"].ingredients, { type = "item", name = "kr-rare-metals", amount = 200 })

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

data.raw.recipe["pipe"].enabled = false

data.raw.recipe["pipe-to-ground"].enabled = false

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

data.raw.recipe["processing-unit"].energy_required = 12
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
table.insert(data.raw.recipe["processing-unit"].ingredients, { type = "item", name = "kr-rare-metals", amount = 3 })
data.raw.recipe["processing-unit"].results = {
	{ type = "item", name = "processing-unit", amount = 2 },
}

data.raw.recipe["productivity-module"].energy_required = 15
data.raw.recipe["productivity-module"].ingredients = {
	{ type = "item", name = "electronic-circuit", amount = 5 },
	{ type = "item", name = "kr-electronic-components", amount = 10 },
}

data.raw.recipe["productivity-module-2"].energy_required = 15
data.raw.recipe["productivity-module-2"].ingredients = {
	{ type = "item", name = "advanced-circuit", amount = 5 },
	{ type = "item", name = "electronic-circuit", amount = 5 },
	{ type = "item", name = "productivity-module", amount = 5 },
}

data_util.convert_ingredient("pumpjack", "iron-gear-wheel", "kr-steel-gear-wheel")
data_util.add_or_replace_ingredient("pumpjack", "iron-plate", { type = "item", name = "kr-steel-beam", amount = 4 })

data.raw.recipe["radar"].enabled = false

data.raw.recipe["rail"].ingredients = {
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
table.insert(data.raw.recipe["repair-pack"].ingredients, { type = "item", name = "stone", amount = 2 })

data_util.add_or_replace_ingredient("roboport", "steel-plate", { type = "item", name = "kr-steel-beam", amount = 20 })

data.raw.recipe["rocket-fuel"].category = "kr-fuel-refinery"
data.raw.recipe["rocket-fuel"].energy_required = 16
data.raw.recipe["rocket-fuel"].auto_recycle = false
data_util.add_or_replace_ingredient("rocket-fuel", "light-oil", { type = "fluid", name = "light-oil", amount = 30 })
data_util.add_or_replace_ingredient("rocket-fuel", "solid-fuel", { type = "item", name = "iron-plate", amount = 1 })
table.insert(data.raw.recipe["rocket-fuel"].ingredients, { type = "fluid", name = "kr-oxygen", amount = 50 })
data.raw.recipe["rocket-fuel"].crafting_machine_tint = {
	primary = { r = 0.692, g = 0.800, b = 0.550, a = 0.100 },
	secondary = { r = 0.581, g = 0.817, b = 0.670, a = 0.250 },
	tertiary = { r = 0.554, g = 0.417, b = 0.529, a = 0.500 },
	quaternary = { r = 0.462, g = 0.607, b = 0.839, a = 0.900 },
}

data_util.add_or_replace_ingredient("shotgun", "wood", { type = "item", name = "wood", amount = 2 })
data_util.add_or_replace_ingredient("shotgun", "iron-plate", { type = "item", name = "iron-plate", amount = 3 })
data_util.add_or_replace_ingredient("shotgun", "copper-plate", { type = "item", name = "copper-plate", amount = 2 })
data_util.add_or_replace_ingredient(
	"shotgun",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 3 }
)

data_util.remove_ingredient("slowdown-capsule", "electronic-circuit")

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
data.raw.recipe["small-electric-pole"].enabled = true

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
table.insert(data.raw.recipe["solar-panel"].ingredients, { type = "item", name = "kr-silicon", amount = 5 })

table.insert(data.raw.recipe["solar-panel-equipment"].ingredients, { type = "item", name = "kr-glass", amount = 5 })

data.raw.recipe["speed-module"].energy_required = 15
data.raw.recipe["speed-module"].ingredients = {
	{ type = "item", name = "electronic-circuit", amount = 5 },
	{ type = "item", name = "kr-electronic-components", amount = 10 },
}

data.raw.recipe["speed-module-2"].energy_required = 15
data.raw.recipe["speed-module-2"].ingredients = {
	{ type = "item", name = "advanced-circuit", amount = 5 },
	{ type = "item", name = "electronic-circuit", amount = 5 },
	{ type = "item", name = "speed-module", amount = 5 },
}

data.raw.recipe["quality-module"].energy_required = 15
data.raw.recipe["quality-module"].ingredients = {
	{ type = "item", name = "electronic-circuit", amount = 5 },
	{ type = "item", name = "kr-electronic-components", amount = 10 },
}

data.raw.recipe["quality-module-2"].energy_required = 15
data.raw.recipe["quality-module-2"].ingredients = {
	{ type = "item", name = "advanced-circuit", amount = 5 },
	{ type = "item", name = "electronic-circuit", amount = 5 },
	{ type = "item", name = "quality-module", amount = 5 },
}
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

data.raw.recipe["steam-engine"].energy_required = 5

data.raw.recipe["steam-turbine"].energy_required = 10
data_util.add_or_replace_ingredient(
	"steam-turbine",
	"iron-gear-wheel",
	{ type = "item", name = "iron-gear-wheel", amount = 14 }
)
data_util.add_or_replace_ingredient("steam-turbine", "pipe", { type = "item", name = "pipe", amount = 10 })
table.insert(data.raw.recipe["steam-turbine"].ingredients, { type = "item", name = "steam-engine", amount = 2 })

data.raw.recipe["steel-plate"].energy_required = 16
data.raw.recipe["steel-plate"].ingredients = {
	{ type = "item", name = "iron-plate", amount = 10 },
	{ type = "item", name = "kr-coke", amount = 2 },
}
data.raw.recipe["steel-plate"].results = {
	{ type = "item", name = "steel-plate", amount = 5 },
}

data.raw.recipe["steam-engine"].enabled = false

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

data.raw.recipe["tank"].energy_required = 60
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

data.raw.recipe["uranium-processing"].results = {
	{ type = "item", name = "uranium-235", probability = 0.007, amount = 1 },
	{ type = "item", name = "uranium-238", probability = 0.993, amount = 1 },
	{ type = "item", name = "iron-ore", probability = 0.25, amount = 1 },
	{ type = "item", name = "stone", probability = 0.5, amount = 1 },
}

data.raw.recipe["casting-steel"].icons = {
	{ icon = "__Krastorio2Assets__/icons/items/steel-plate.png" },
	{ icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.33, shift = { 8, -8 } },
}
data.raw.recipe["casting-iron-gear-wheel"].icons = {
	{ icon = "__Krastorio2Assets__/icons/items/iron-gear-wheel.png" },
	{ icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.33, shift = { 8, -8 } },
}

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

data.raw.recipe["scrap-recycling"].results = {
	{
		type = "item",
		name = "iron-gear-wheel",
		amount = 1,
		probability = 0.20,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "electronic-circuit",
		amount = 1,
		probability = 0.10,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "concrete",
		amount = 1,
		probability = 0.06,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "ice",
		amount = 1,
		probability = 0.05,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "steel-plate",
		amount = 1,
		probability = 0.04,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "stone",
		amount = 1,
		probability = 0.04,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "battery",
		amount = 1,
		probability = 0.04,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "kr-electronic-components",
		amount = 1,
		probability = 0.04,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "advanced-circuit",
		amount = 1,
		probability = 0.03,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "copper-cable",
		amount = 1,
		probability = 0.03,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "processing-unit",
		amount = 1,
		probability = 0.02,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "low-density-structure",
		amount = 1,
		probability = 0.01,
		show_details_in_recipe_tooltip = false,
	},
	{
		type = "item",
		name = "holmium-ore",
		amount = 1,
		probability = 0.01,
		show_details_in_recipe_tooltip = false,
	},
}

-- Science packs

data.raw.recipe["automation-science-pack"] = {
	type = "recipe",
	name = "automation-science-pack",
	enabled = false,
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "kr-automation-core", amount = 1 },
	},
	results = { { type = "item", name = "automation-science-pack", amount = 5 } },
	allow_productivity = true,
}

data.raw.recipe["logistic-science-pack"] = {
	type = "recipe",
	name = "logistic-science-pack",
	enabled = false,
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "electronic-circuit", amount = 5 },
		{ type = "item", name = "iron-gear-wheel", amount = 5 },
	},
	results = { { type = "item", name = "logistic-science-pack", amount = 5 } },
	allow_productivity = true,
}

data.raw.recipe["military-science-pack"] = {
	type = "recipe",
	name = "military-science-pack",
	enabled = false,
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "kr-biter-research-data", amount = 1 },
		{ type = "item", name = "kr-electronic-components", amount = 5 },
	},
	results = { { type = "item", name = "military-science-pack", amount = 5 } },
	allow_productivity = true,
}

data.raw.recipe["chemical-science-pack"] = {
	type = "recipe",
	name = "chemical-science-pack",
	category = "crafting-with-fluid",
	enabled = false,
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "kr-glass", amount = 15 },
		{ type = "item", name = "advanced-circuit", amount = 5 },
		{ type = "fluid", name = "sulfuric-acid", amount = 50 },
	},
	results = { { type = "item", name = "chemical-science-pack", amount = 5 } },
	allow_productivity = true,
}

data_util.convert_ingredient("fluoroketone", "lithium", "kr-lithium")
data_util.convert_ingredient("lithium-plate", "lithium", "kr-lithium")
data_util.add_or_replace_product("lithium", "lithium", { type = "item", name = "kr-lithium", amount = 5 })

data.raw.recipe["production-science-pack"] = {
	type = "recipe",
	name = "production-science-pack",
	category = "kr-tech-cards",
	enabled = false,
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "fast-transport-belt", amount = 10 },
		{ type = "item", name = "productivity-module", amount = 5 },
		{ type = "item", name = "uranium-238", amount = 5 },
	},
	results = { { type = "item", name = "production-science-pack", amount = 5 } },
	allow_productivity = true,
}

data.raw.recipe["utility-science-pack"] = {
	type = "recipe",
	name = "utility-science-pack",
	category = "kr-tech-cards",
	enabled = false,
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "processing-unit", amount = 5 },
		{ type = "item", name = "rocket-fuel", amount = 5 },
		{ type = "item", name = "low-density-structure", amount = 5 },
	},
	results = { { type = "item", name = "utility-science-pack", amount = 5 } },
	allow_productivity = true,
}
data.raw.recipe["metallurgic-science-pack"] = {
	type = "recipe",
	name = "metallurgic-science-pack",
	enabled = false,
	category = "kr-tech-cards",
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "kr-metallurgic-research-data", amount = 5 },
		--{ type = "item", name = "kr-steel-beam", amount = 5 },
	},
	results = {
		{ type = "item", name = "metallurgic-science-pack", amount = 5 },
	},
	allow_productivity = true,
}
data.raw.recipe["electromagnetic-science-pack"] = {
	type = "recipe",
	name = "electromagnetic-science-pack",
	enabled = false,
	category = "kr-tech-cards",
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "kr-electromagnetic-research-data", amount = 5 },
		--{ type = "item", name = "copper-cable", amount = 5 },
	},
	results = {
		{ type = "item", name = "electromagnetic-science-pack", amount = 5 },
	},
	allow_productivity = true,
}
data.raw.recipe["agricultural-science-pack"] = {
	type = "recipe",
	name = "agricultural-science-pack",
	enabled = false,
	category = "kr-tech-cards",
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "kr-agricultural-research-data", amount = 5 },
	},
	results = {
		{ type = "item", name = "agricultural-science-pack", amount = 5 },
	},
	allow_productivity = true,
	reset_freshness_on_craft = true,
}
data.raw.recipe["cryogenic-science-pack"] = {
	type = "recipe",
	name = "cryogenic-science-pack",
	enabled = false,
	category = "kr-tech-cards",
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "kr-cryogenic-research-data", amount = 5 },
	},
	results = {
		{ type = "item", name = "cryogenic-science-pack", amount = 5 },
	},
	allow_productivity = true,
}
data.raw.recipe["promethium-science-pack"] = {
	type = "recipe",
	name = "promethium-science-pack",
	enabled = false,
	category = "kr-tech-cards",
	energy_required = 20,
	ingredients = {
		{ type = "item", name = "kr-blank-tech-card", amount = 5 },
		{ type = "item", name = "kr-promethium-research-data", amount = 5 },
		{ type = "item", name = "biter-egg", amount = 5 },
	},
	results = {
		{ type = "item", name = "promethium-science-pack", amount = 5 },
	},
	allow_productivity = true,
}
