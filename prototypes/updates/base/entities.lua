local data_util = require("data-util")

data.raw.reactor["heating-tower"].consumption = "50MW"

table.remove(data.raw.lab["lab"].inputs, 1)
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

table.insert(
	data.raw["tree"]["ashland-lichen-tree"].minable.results,
	{ type = "item", name = "wood", amount_min = 4, amount_max = 4 }
)
table.insert(
	data.raw["tree"]["ashland-lichen-tree-flaming"].minable.results,
	{ type = "item", name = "wood", amount_min = 4, amount_max = 4 }
)
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

--Add heat dissipations

data.raw["assembling-machine"]["kr-advanced-chemical-plant"].heating_energy = "100kW"
data.raw["assembling-machine"]["kr-electrolysis-plant"].heating_energy = "100kW"
data.raw["assembling-machine"]["kr-filtration-plant"].heating_energy = "100kW"
data.raw["assembling-machine"]["kr-fuel-refinery"].heating_energy = "100kW"
data.raw["assembling-machine"]["kr-atmospheric-condenser"].heating_energy = "100kW"
data.raw["assembling-machine"]["kr-matter-associator"].heating_energy = "100kW"
data.raw["assembling-machine"]["kr-quantum-computer"].heating_energy = "100kW"
data.raw["assembling-machine"]["kr-research-server"].heating_energy = "100kW"
data.raw["assembling-machine"]["kr-matter-plant"].heating_energy = "100kW"
data.raw["assembling-machine"]["kr-fusion-reactor"].heating_energy = "400kW"
data.raw["assembling-machine"]["kr-advanced-furnace"].heating_energy = "400kW"
data.raw["assembling-machine"]["kr-advanced-assembling-machine"].heating_energy = "400kW"
data.raw["assembling-machine"]["kr-greenhouse"].heating_energy = "1000kW"
data.raw["assembling-machine"]["kr-bio-lab"].heating_energy = "1000kW"

data.raw.generator["kr-gas-power-station"].heating_energy = "100kW"
data.raw.generator["kr-advanced-steam-turbine"].max_power_output = "200MW"
data.raw["burner-generator"]["kr-antimatter-reactor"].heating_energy = "1000kW"

data.raw.lab["kr-advanced-lab"].heating_energy = "100kW"

data.raw.furnace["kr-air-purifier"].heating_energy = "100kW"
data.raw.furnace["kr-crusher"].heating_energy = "100kW"
data.raw.furnace["kr-stabilizer-charging-station"].heating_energy = "50kW"

data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].heating_energy = "100kW"

data.raw["beacon"]["kr-singularity-beacon"].heating_energy = "400kW"

data.raw.roboport["kr-big-roboport"].heating_energy = "300kW"
data.raw.roboport["kr-small-roboport"].heating_energy = "300kW"

data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].heating_energy = "150kW"
data.raw.pipe["kr-steel-pipe"].heating_energy = "1kW"
data.raw.pump["kr-steel-pump"].heating_energy = "30kW"

data.raw.inserter["kr-superior-inserter"].heating_energy = "40kW"
data.raw.inserter["kr-superior-long-inserter"].heating_energy = "50kW"

data.raw["transport-belt"]["kr-superior-transport-belt"].heating_energy = "10kW"
data.raw.splitter["kr-superior-splitter"].heating_energy = "40kW"
data.raw["underground-belt"]["kr-superior-underground-belt"].heating_energy = "250kW"

--Add stacking to superior inserters

data.raw.inserter["kr-superior-inserter"].stack_size_bonus = 4
data.raw.inserter["kr-superior-long-inserter"].stack_size_bonus = 4

--surface conditions

data.raw["assembling-machine"]["kr-atmospheric-condenser"].surface_conditions = {
	{ property = "pressure", min = 300 },
}
data.raw.roboport["kr-big-roboport"].surface_conditions = {
	{ property = "pressure", min = 10 },
}
data.raw["assembling-machine"]["kr-bio-lab"].surface_conditions = {
	{ property = "pressure", min = 1000, max = 1000 },
}
data.raw["assembling-machine"]["kr-greenhouse"].surface_conditions = {
	{ property = "pressure", min = 1000, max = 2000 },
}
data.raw["accumulator"]["kr-planetary-teleporter"].surface_conditions = {
	{ property = "pressure", min = 0.1 },
}
data.raw.lab["kr-singularity-lab"].surface_conditions = {
	{
		property = "gravity",
		min = 0,
		max = 0,
	},
}
data.raw["electric-energy-interface"]["kr-tesla-coil"].surface_conditions = {
	{ property = "pressure", min = 0.1 },
}
data.raw["container"]["kr-strongbox"].surface_conditions = {
	{ property = "gravity", min = 0.1 },
}
data.raw["container"]["kr-warehouse"].surface_conditions = {
	{ property = "gravity", min = 0.1 },
}
for _, container in pairs(data.raw["logistic-container"]) do
	container.surface_conditions = {
		{ property = "gravity", min = 0.1 },
	}
end

--emissions

data.raw.furnace["kr-air-purifier"].energy_source.emissions_per_minute = { pollution = -50, spores = -5 }
data.raw["assembling-machine"]["kr-greenhouse"].energy_source.emissions_per_minute = { pollution = -5, spores = 3 }

--module effects

table.insert(data.raw["assembling-machine"]["kr-greenhouse"].allowed_effects, "quality")

--crafting catefories

data.raw["assembling-machine"]["kr-research-server"].crafting_categories = { "kr-research-data", "kr-tech-cards" }
data.raw["assembling-machine"]["kr-quantum-computer"].crafting_categories =
	{ "kr-research-data", "kr-tech-cards", "kr-tech-cards-cooling" }

--quality effects

data.raw["beacon"]["kr-singularity-beacon"].distribution_effectivity_bonus_per_quality_level = 0.25
