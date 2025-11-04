data:extend({
	{
		type = "recipe",
		name = "kr-charged-matter-stabilizer",
		subgroup = "intermediate-product",
		enabled = false,
		category = "kr-stabilizer-charging",
		energy_required = 2,
		ingredients = {
			{ type = "item", name = "kr-matter-stabilizer", amount = 1 },
		},
		results = {
			{ type = "item", name = "kr-charged-matter-stabilizer", amount = 1 },
		},
		allow_as_intermediate = false,
		auto_recycle = false,
	},
})
