local data_util = require("data-util")

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

table.insert(
	data.raw["tree"]["ashland-lichen-tree"].minable.results,
	{ type = "item", name = "wood", amount_min = 3, amount_max = 5 }
)
table.insert(
	data.raw["tree"]["ashland-lichen-tree-flaming"].minable.results,
	{ type = "item", name = "wood", amount_min = 3, amount_max = 5 }
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
data.raw.furnace["kr-flare-stack"].heating_energy = "100kW"
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

--Ammo catefories
data.raw["ammo-turret"]["kr-rocket-turret"].attack_parameters.ammo_categories = { "rocket", "kr-turret-missile" }
data.raw["ammo-turret"]["rocket-turret"].attack_parameters.ammo_categories = { "rocket", "kr-turret-missile" }

--surface conditions
data.raw["assembling-machine"]["crusher"].surface_conditions = nil
data.raw["assembling-machine"]["kr-atmospheric-condenser"].surface_conditions = {
	{ property = "pressure", min = 300 },
}
data.raw.roboport["kr-small-roboport"].surface_conditions = {
	{ property = "pressure", min = 10 },
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
data.raw["electric-energy-interface"]["kr-activated-intergalactic-transceiver"].surface_conditions = {
	{ property = "gravity", min = 0.1 },
}
data.raw["accumulator"]["kr-intergalactic-transceiver"].surface_conditions = {
	{ property = "gravity", min = 0.1 },
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
data.raw["solar-panel"]["kr-wind-turbine"].surface_conditions = {
	{
		property = "rubia-wind-speed",
		min = 1,
	},
}

--drain
data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].resource_drain_rate_percent = 75

--reactor consumption
data.raw.reactor["heating-tower"].consumption = "50MW"

--wind turbine
data.raw["solar-panel"]["kr-wind-turbine"].solar_coefficient_property = "rubia-wind-speed"

--emissions
data.raw.furnace["kr-air-purifier"].energy_source.emissions_per_minute = { pollution = -50, spores = -5 }
data.raw["assembling-machine"]["kr-greenhouse"].energy_source.emissions_per_minute = { pollution = -5, spores = 3 }
data.raw["assembling-machine"]["kr-advanced-furnace"].energy_source.emissions_per_minute = { pollution = 30 }

--module effects
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].allowed_effects, "quality")

--crafting catefories
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "organic-or-assembling")
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "organic-or-hand-crafting")
table.insert(data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories, "kr-electrolysis")
table.insert(data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories, "kr-fuel-refinery")
table.insert(data.raw["assembling-machine"]["crusher"].crafting_categories, "kr-crushing")
data.raw["assembling-machine"]["kr-research-server"].crafting_categories = { "kr-research-data", "kr-tech-cards" }
data.raw["assembling-machine"]["kr-quantum-computer"].crafting_categories =
	{ "kr-research-data", "kr-tech-cards", "kr-tech-cards-cooling" }
data.raw["assembling-machine"]["kr-advanced-assembling-machine"].crafting_categories = {
	"crafting",
	"advanced-crafting",
	"crafting-with-fluid",
	"electronics",
	"electronics-with-fluid",
	"kr-smelting-crafting",
	"pressing",
	"metallurgy-or-assembling",
	"organic-or-hand-crafting",
	"organic-or-assembling",
	"electronics-or-assembling",
	"cryogenics-or-assembling",
	"crafting-with-fluid-or-metallurgy",
}
data.raw["assembling-machine"]["kr-advanced-chemical-plant"].crafting_categories = {
	"chemistry",
	"kr-advanced-chemistry",
	"chemistry-or-cryogenics",
	"organic-or-chemistry",
	"kr-fluid-filtration",
	"oil-processing",
}
data.raw["assembling-machine"]["kr-advanced-furnace"].crafting_categories = {
	"smelting",
	"kr-advanced-smelting",
	"metallurgy",
	"pressing",
	"crafting-with-fluid-or-metallurgy",
	"metallurgy-or-assembling",
}

--quality effects
data.raw["beacon"]["kr-singularity-beacon"].distribution_effectivity_bonus_per_quality_level = 0.25

--next upgrade
data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "turbo-transport-belt"
data.raw["transport-belt"]["turbo-transport-belt"].next_upgrade = "kr-superior-transport-belt"

data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "turbo-underground-belt"
data.raw["underground-belt"]["turbo-underground-belt"].next_upgrade = "kr-superior-underground-belt"

data.raw["splitter"]["express-splitter"].next_upgrade = "turbo-splitter"
data.raw["splitter"]["turbo-splitter"].next_upgrade = "kr-superior-splitter"

data.raw["transport-belt"]["kr-advanced-transport-belt"].next_upgrade = nil
data.raw["underground-belt"]["kr-advanced-underground-belt"].next_upgrade = nil
data.raw["splitter"]["kr-advanced-splitter"].next_upgrade = nil
data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].next_upgrade = nil

--underground belt max distance
data.raw["underground-belt"]["express-underground-belt"].max_distance = 15
data.raw["underground-belt"]["turbo-underground-belt"].max_distance = 20

--energy usage
data.raw["assembling-machine"]["kr-advanced-chemical-plant"].energy_usage = "4MW"
data.raw["assembling-machine"]["kr-quantum-computer"].energy_usage = "5MW"
data.raw.lab["kr-singularity-lab"].energy_usage = "100MW"
data.raw["assembling-machine"]["kr-advanced-furnace"].energy_usage = "10MW"

--base effects
data.raw["assembling-machine"]["kr-advanced-chemical-plant"].effect_receiver = { base_effect = { productivity = 0.5 } }
data.raw["assembling-machine"]["kr-quantum-computer"].effect_receiver = { base_effect = { productivity = 0.5 } }
data.raw["assembling-machine"]["kr-advanced-furnace"].effect_receiver = { base_effect = { productivity = 0.5 } }

--fixed recipe
data.raw["assembling-machine"]["kr-fusion-reactor"].fixed_recipe = nil

--fluid boxes
data.raw["assembling-machine"]["kr-atmospheric-condenser"].fluid_boxes = {
	{
		production_type = "output",
		pipe_covers = pipecoverspictures(),
		pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
		volume = 100,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 2, -1 } },
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 2, 1 } },
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -2, -1 } },
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -2, 1 } },
			{ flow_direction = "input-output", direction = defines.direction.north, position = { 1, -2 } },
			{ flow_direction = "input-output", direction = defines.direction.north, position = { -1, -2 } },
			{ flow_direction = "input-output", direction = defines.direction.south, position = { 1, 2 } },
			{ flow_direction = "input-output", direction = defines.direction.south, position = { -1, 2 } },
		},
	},
}
local pipe_pictures = {
	north = {
		filename = "__Krastorio2Assets__/buildings/quantum-computer/quantum-computer-k-pipe-N.png",
		priority = "extra-high",
		width = 78,
		height = 71,
		shift = util.by_pixel(4.25, 23),
		scale = 0.5,
	},
	east = {
		filename = "__Krastorio2Assets__/buildings/quantum-computer/quantum-computer-k-pipe-E.png",
		priority = "extra-high",
		width = 42,
		height = 76,
		shift = util.by_pixel(-24.5, 1),
		scale = 0.5,
	},
	south = {
		filename = "__Krastorio2Assets__/buildings/quantum-computer/quantum-computer-k-pipe-S.png",
		priority = "extra-high",
		width = 88,
		height = 61,
		shift = util.by_pixel(0, -31.25),
		scale = 0.5,
	},
	west = {
		filename = "__Krastorio2Assets__/buildings/quantum-computer/quantum-computer-k-pipe-W.png",
		priority = "extra-high",
		width = 39,
		height = 73,
		shift = util.by_pixel(25.75, 1.25),
		scale = 0.5,
	},
}
data.raw["assembling-machine"]["kr-quantum-computer"].fluid_boxes = {
	{
		production_type = "input",
		pipe_picture = pipe_pictures,
		pipe_covers = pipecoverspictures(),
		volume = 100,
		pipe_connections = {
			{ flow_direction = "input", direction = defines.direction.north, position = { -0.5, -2.5 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		--reserved for muluna data wire
		production_type = "input",
		volume = 1,
		pipe_connections = {
			{ flow_direction = "input", direction = defines.direction.north, position = { 0, 0 } },
		},
	},
	{
		production_type = "input",
		pipe_picture = pipe_pictures,
		pipe_covers = pipecoverspictures(),
		volume = 100,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -2.5, -0.5 } },
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 2.5, 0.5 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures,
		pipe_covers = pipecoverspictures(),
		volume = 100,
		pipe_connections = {
			{ flow_direction = "output", direction = defines.direction.south, position = { 0.5, 2.5 } },
		},
		secondary_draw_orders = { north = -1 },
	},
}
local pipe_pictures = require("__Krastorio2__.prototypes.buildings.advanced-furnace-pipe-pictures")
data.raw["assembling-machine"]["kr-advanced-furnace"].fluid_boxes = {
	{
		production_type = "input",
		pipe_picture = pipe_pictures.a,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input", direction = defines.direction.north, position = { -1, -3 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "input",
		pipe_picture = pipe_pictures.b,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input", direction = defines.direction.north, position = { 1, -3 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "input",
		pipe_picture = pipe_pictures.b,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -3, -1 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "input",
		pipe_picture = pipe_pictures.a,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 3, -1 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures.b,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "output", direction = defines.direction.south, position = { -1, 3 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures.a,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "output", direction = defines.direction.south, position = { 1, 3 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures.a,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.west, position = { -3, 1 } },
		},
		secondary_draw_orders = { north = -1 },
	},
	{
		production_type = "output",
		pipe_picture = pipe_pictures.b,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {
			{ flow_direction = "input-output", direction = defines.direction.east, position = { 3, 1 } },
		},
		secondary_draw_orders = { north = -1 },
	},
}

--flare stack
data.raw.furnace["kr-flare-stack"].forced_symmetry = "diagonal-pos"
data.raw.furnace["kr-flare-stack"].graphics_set_flipped = {
	animation = {
		north = {
			layers = {
				{
					filename = "__k2so-assets__/buildings/flare-stack/flare-stack-n.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					shift = { 0, -1 },
				},
				{
					filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-sh.png",
					priority = "high",
					width = 258,
					height = 94,
					shift = { 1.1, 0.25 },
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5,
				},
			},
		},
		east = {
			layers = {
				{
					filename = "__k2so-assets__/buildings/flare-stack/flare-stack-w.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					shift = { 0, -1 },
				},
				{
					filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-sh.png",
					priority = "high",
					width = 258,
					height = 94,
					shift = { 1.1, 0.25 },
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5,
				},
			},
		},
		south = {
			layers = {
				{
					filename = "__k2so-assets__/buildings/flare-stack/flare-stack-s.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					shift = { 0, -1 },
				},
				{
					filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-sh.png",
					priority = "high",
					width = 258,
					height = 94,
					shift = { 1.1, 0.25 },
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5,
				},
			},
		},
		west = {
			layers = {
				{
					filename = "__k2so-assets__/buildings/flare-stack/flare-stack-e.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					shift = { 0, -1 },
				},
				{
					filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-sh.png",
					priority = "high",
					width = 258,
					height = 94,
					shift = { 1.1, 0.25 },
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5,
				},
			},
		},
	},
	working_visualisations = {
		{
			apply_recipe_tint = "quaternary",
			fadeout = true,
			animation = {
				filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-fire.png",
				line_length = 10,
				width = 40,
				height = 81,
				frame_count = 60,
				animation_speed = 0.75,
				scale = 0.50,
				shift = { 0, -3.25 },
			},
		},
		{
			light = {
				intensity = 0.75,
				size = 25,
				shift = { 0, 0 },
				color = { r = 1, g = 0.95, b = 0.75 },
			},
		},
	},
	water_reflection = {
		pictures = {
			filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-reflection.png",
			priority = "extra-high",
			width = 20,
			height = 30,
			shift = util.by_pixel(0, 40),
			variation_count = 1,
			scale = 5,
		},
		rotate = false,
		orientation_to_variation = false,
	},
}
