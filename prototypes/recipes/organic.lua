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
		show_amount_in_title = false,
		ingredients = {
			{ type = "item", name = "spoilage", amount = 30 },
			{ type = "item", name = "bioflux", amount = 2 },
		},
		results = {
			{ type = "fluid", name = "kr-biomethanol", amount = 250 },
		},
	},
	{
		type = "recipe",
		name = "kr-bio-processing-circuit",
		enabled = false,
		order = "b[circuits]-c[processing-circuit-bio]",
		icons = {
			{ icon = "__base__/graphics/icons/processing-unit.png" },
			{ icon = "__space-age__/graphics/icons/pentapod-egg.png", scale = 0.26, shift = { -8, -8 } },
		},
		category = "organic",
		energy_required = 6,
		auto_recycle = false,
		ingredients = {
			{ type = "fluid", name = "sulfuric-acid", amount = 10 },
			{ type = "item", name = "advanced-circuit", amount = 6 },
			{ type = "item", name = "pentapod-egg", amount = 1 },
		},
		additional_categories = { "electronics" },
		results = { { type = "item", name = "processing-unit", amount = 2 } },
		allow_productivity = true,
		hide_from_signal_gui = false,
	},
})
