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
