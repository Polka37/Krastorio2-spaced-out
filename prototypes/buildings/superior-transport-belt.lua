local sounds = require("__base__.prototypes.entity.sounds")
data.raw["transport-belt"]["kr-superior-transport-belt"].heating_energy = "10kW"
data:extend({
	{
		type = "recipe",
		name = "kr-superior-transport-belt",
		category = "metallurgy",
		energy_required = 0.5,
		enabled = false,
		ingredients = {
			{ type = "item", name = "turbo-transport-belt", amount = 1 },
			{ type = "item", name = "kr-imersium-gear-wheel", amount = 4 },
			{ type = "item", name = "low-density-structure", amount = 1 },
		},
		results = { { type = "item", name = "kr-superior-transport-belt", amount = 1 } },
	},
})
