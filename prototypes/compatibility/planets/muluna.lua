if not mods["planet-muluna"] then
	return
end

local data_util = require("data-util")

table.insert(data.raw["assembling-machine"]["muluna-steam-crusher"].crafting_categories, "kr-crushing")
table.insert(data.raw["assembling-machine"]["crusher-2"].crafting_categories, "kr-crushing")

if data.raw["technology"]["thruster-fuel-productivity"] then
	table.insert(
		data.raw["technology"]["thruster-fuel-productivity"].effects,
		3,
		{ type = "change-recipe-productivity", recipe = "kr-liquid-hydrogen", change = 0.1 }
	)
	table.insert(
		data.raw["technology"]["thruster-fuel-productivity"].effects,
		{ type = "change-recipe-productivity", recipe = "kr-liquid-oxygen", change = 0.1 }
	)
end
