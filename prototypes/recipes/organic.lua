data:extend({
	{
		type = "recipe",
		name = "kr-spoilage-decomposition",
		icons = {
			{ icon = "__Krastorio2Assets__/icons/fluids/biomethanol.png" },
			{ icon = "__space-age__/graphics/icons/spoilage.png", scale = 0.5, shift = { -12, -12 } },
		},
		icon_size = 128,
		subgroup = "agriculture-processes",
		order = "a1[organics]-a[compost]",
		enabled = false,
		category = "organic",
		allow_productivity = true,
		energy_required = 30,
		ingredients = {
			{ type = "item", name = "spoilage", amount = 30 },
			{ type = "item", name = "bioflux", amount = 2 },
		},
		results = {
			{ type = "fluid", name = "kr-biomethanol", amount = 250 },
		},
	},
})
