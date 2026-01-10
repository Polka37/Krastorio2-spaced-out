require("prototypes.final-fixes.enforce-science-tier-separation")
require("prototypes.final-fixes.internal-turret-logic")
require("prototypes.final-fixes.biter-nests")
require("prototypes.final-fixes.enforce-rifle-ammo")
require("prototypes.final-fixes.enforce-k2-items")

--sync all labs inputs
data.raw.lab["biolab"].inputs = data.raw.lab["lab"].inputs
data.raw.lab["kr-advanced-lab"].inputs = data.raw.lab["lab"].inputs
data.raw.lab["kr-singularity-lab"].inputs = data.raw.lab["lab"].inputs

--make sure rubia wind turbine uses K2SO default wind speed
if mods["rubia"] then
	data.raw["solar-panel"]["rubia-wind-turbine"].performance_at_day = 15 / 300
	data.raw["solar-panel"]["rubia-wind-turbine"].performance_at_night = 15 / 300
	data.raw["surface-property"]["rubia-wind-speed"].default_value = 15
end

local recycling = require("__quality__.prototypes.recycling")

-- Generating the recycle (reverse) recipes
for _, recipe in pairs(data.raw.recipe) do
	if not recipe.subgroup == "barreling" then --compat for barreling group mod
		recycling.generate_recycling_recipe(recipe)
	end
end

data.raw["furnace"]["recycler"].result_inventory_size = #data.raw.recipe["scrap-recycling"].results

--The code below had been made by Quezler
-- this file accomplishes the same as Krastroio 2's prototypes/final-fixes/steel-pipe-connectivity.lua file,
-- since there are only so many ways to write the same thing the code is earily similar,
-- therefore the contents of this file are best treated as falling under GNU LGPLv3.

local fluid_box_keys = {
	"fluid_box",
	"input_fluid_box",
	"output_fluid_box",
	"fuel_fluid_box",
	"oxidizer_fluid_box",
}

local function handle_fluidbox(fluidbox)
	if fluidbox == nil then
		return
	end

	for _, connection in pairs(fluidbox.pipe_connections) do
		if (connection.connection_type or "normal") == "normal" then
			local categories = connection.connection_category or { "default" }
			if #categories == 1 and categories[1] == "default" then
				categories[#categories + 1] = "kr-steel-pipe"
				connection.connection_category = categories
			end
		end
	end
end

local function handle_prototype(prototype)
	for _, fluid_box_key in pairs(fluid_box_keys) do
		handle_fluidbox(prototype[fluid_box_key])
	end
	for _, fluid_box in pairs(prototype.fluid_boxes or {}) do
		handle_fluidbox(fluid_box)
	end
	if prototype.energy_source and prototype.energy_source.type == "fluid" then
		handle_fluidbox(prototype.energy_source.fluid_box)
	end
end

for entity_type in pairs(defines.prototypes["entity"]) do
	for _, prototype in pairs(data.raw[entity_type] or {}) do
		if not names_ignored_by_steel_pipes[prototype.name] then
			handle_prototype(prototype)
		end
	end
end
