local recycling = require("__quality__.prototypes.recycling")

-- Generating the recycle (reverse) recipes
for _, recipe in pairs(data.raw.recipe) do
	if recipe.subgroup ~= "barreling" or recipe.subgroup == nil then --compat for barreling group mod
		recycling.generate_recycling_recipe(recipe)
	end
end

data.raw["furnace"]["recycler"].result_inventory_size = #data.raw.recipe["scrap-recycling"].results
