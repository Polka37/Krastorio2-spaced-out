data.raw.splitter["kr-superior-splitter"].heating_energy = "40kW"
data:extend({
	{
		type = "recipe",
		name = "kr-superior-splitter",
		category = "metallurgy",
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ type = "item", name = "turbo-splitter", amount = 1 },
			{ type = "item", name = "kr-imersium-gear-wheel", amount = 4 },
			{ type = "item", name = "kr-ai-core", amount = 1 },
		},
		results = { { type = "item", name = "kr-superior-splitter", amount = 1 } },
	},
})
