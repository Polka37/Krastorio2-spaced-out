data:extend({
	{
		type = "recipe",
		name = "kr-oxygen",
		category = "kr-atmosphere-condensation",
		icon = "__Krastorio2Assets__/icons/fluids/oxygen.png",
		subgroup = "raw-material",
		order = "a[atmosphere-condensation]-a2[oxygen]",
		enabled = false,
		always_show_made_in = true,
		always_show_products = true,
		hide_from_player_crafting = true,
		energy_required = 5,
		surface_conditions = {
			{
				property = "pressure",
				min = 1000,
				max = 2000,
			},
		},
		ingredients = {},
		results = {
			{ type = "fluid", name = "kr-oxygen", amount = 30 },
		},
	},
})
