if not mods["corrundum"] then
	return
end

local data_util = require("data-util")

data:extend({
	{
		type = "recipe",
		name = "kr-reduction-rare-metals",
		subgroup = "sulfur",
		order = "h[rare-metals]",
		enabled = false,
		energy_required = 15,
		category = "chemistry",
		main_product = "kr-rare-metal-ore",
		ingredients = {
			{ type = "fluid", name = "mixed-sulfate-solution", amount = 300 },
			{ type = "fluid", name = "kr-chlorine", amount = 30 },
		},
		results = {
			{ type = "fluid", name = "sulfuric-acid-dilute", amount = 350 },
			{ type = "item", name = "kr-rare-metal-ore", amount = 5 },
		},
	},
})

data_util.remove_ingredient("stone-production", "carbon")

data_util.add_recipe_unlock("chalcopyrite-processing", "kr-reduction-rare-metals")
data_util.add_recipe_unlock("chalcopyrite-processing", "calcium-sulfate")
data_util.add_recipe_unlock("chalcopyrite-processing", "stone-production")

data_util.remove_recipe_unlock("calcium-sulfate", "calcium-sulfate")

data.raw.technology["stone-production"].hidden = true
data.raw.technology["stone-production"].hidden_in_factoriopedia = true
