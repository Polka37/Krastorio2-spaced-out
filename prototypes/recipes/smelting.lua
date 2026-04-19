data:extend({
	{
		type = "recipe",
		name = "kr-coke-carbon",
		icons = {
			{ icon = "__Krastorio2Assets__/icons/items/coke.png" },
			{
				icon = "__space-age__/graphics/icons/carbon.png",
				scale = 0.33,
				shift = { -8, -8 },
			},
		},
		enabled = false,
		category = "smelting",
		energy_required = 16,
		ingredients = {
			{ type = "item", name = "carbon", amount = 6 },
			{ type = "item", name = "wood", amount = 6 },
		},
		results = {
			{ type = "item", name = "kr-coke", amount = 6 },
		},
		allow_productivity = true,
		hide_from_signal_gui = false,
	},
})
