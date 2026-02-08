data.raw["underground-belt"]["kr-superior-underground-belt"].heating_energy = "250kW"
data:extend({
	{
		type = "recipe",
		name = "kr-superior-underground-belt",
		category = "metallurgy",
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ type = "item", name = "turbo-underground-belt", amount = 2 },
			{ type = "item", name = "kr-superior-transport-belt", amount = 40 },
			{ type = "item", name = "kr-imersium-gear-wheel", amount = 10 },
		},
		results = { { type = "item", name = "kr-superior-underground-belt", amount = 2 } },
	},
})
