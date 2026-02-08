data.raw["assembling-machine"]["kr-advanced-chemical-plant"].crafting_categories = {
	"chemistry",
	"kr-advanced-chemistry",
	"chemistry-or-cryogenics",
	"organic-or-chemistry",
	"kr-fluid-filtration",
	--"oil-processing",
}
data.raw["assembling-machine"]["kr-advanced-chemical-plant"].energy_usage = "4MW"
data.raw["assembling-machine"]["kr-advanced-chemical-plant"].effect_receiver = { base_effect = { productivity = 0.5 } }
data:extend({
	{
		type = "recipe",
		name = "kr-advanced-chemical-plant",
		energy_required = 30,
		enabled = false,
		additional_categories = { "kr-advanced-chemistry" },
		ingredients = {
			{ type = "item", name = "processing-unit", amount = 20 },
			{ type = "item", name = "kr-imersium-beam", amount = 20 },
			{ type = "item", name = "kr-rare-metals", amount = 80 },
			{ type = "item", name = "kr-electronic-components", amount = 40 },
			{ type = "item", name = "carbon-fiber", amount = 20 },
			{ type = "item", name = "kr-steel-pipe", amount = 10 },
		},
		results = { { type = "item", name = "kr-advanced-chemical-plant", amount = 1 } },
	},
})
