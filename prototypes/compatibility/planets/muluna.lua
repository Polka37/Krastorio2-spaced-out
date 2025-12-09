if not mods["planet-muluna"] then
	return
end

local data_util = require("data-util")

table.insert(data.raw["assembling-machine"]["muluna-steam-crusher"].crafting_categories, "kr-crushing")
table.insert(data.raw["assembling-machine"]["crusher-2"].crafting_categories, "kr-crushing")

for _, effects in
	pairs(data.raw["technology"]["thruster-fuel-productivity"].PlanetsLib_recipe_productivity_effects.effects)
do
	effects.allow_multiple_results = true
end

data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].effectivity = 0.95
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].max_fluid_usage = 100 / 60
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].input_fluid_box.maximum_temperature = nil
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].energy_source.output_flow_limit = "190MW"
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].localised_description =
	{ "entity-description.muluna-cycling-steam-turbine-k2" }
