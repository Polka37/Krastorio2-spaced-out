data:extend({
	{
		type = "recipe",
		name = "kr-coke",
		enabled = false,
		category = "smelting",
		energy_required = 16,
		ingredients = {
			{ type = "item", name = "coal", amount = 6 },
			{ type = "item", name = "wood", amount = 6 },
		},
		results = {
			{ type = "item", name = "kr-coke", amount = 6 },
		},
		allow_productivity = true,
	},
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
	},
	{
		type = "recipe",
		name = "kr-copper-plate-from-enriched-copper",
		icons = {
			{ icon = "__Krastorio2Assets__/icons/items/copper-plate.png" },
			{
				icon = "__Krastorio2Assets__/icons/items/enriched-copper.png",
				scale = 0.22,
				shift = { -8, -8 },
			},
		},
		order = "c[copper-plate]-b[enriched-copper-plate]",
		enabled = false,
		category = "smelting",
		energy_required = 16,
		ingredients = {
			{ type = "item", name = "kr-enriched-copper", amount = 5 },
		},
		results = {
			{ type = "item", name = "copper-plate", amount = 5 },
		},
		allow_productivity = true,
		always_show_made_in = true,
		always_show_products = true,
	},
	{
		type = "recipe",
		name = "kr-iron-plate-from-enriched-iron",
		icons = {
			{ icon = "__Krastorio2Assets__/icons/items/iron-plate.png" },
			{
				icon = "__Krastorio2Assets__/icons/items/enriched-iron.png",
				scale = 0.22,
				shift = { -8, -8 },
			},
		},
		order = "b[iron-plate]-b[enriched-iron-plate]",
		enabled = false,
		category = "smelting",
		energy_required = 16,
		ingredients = {
			{ type = "item", name = "kr-enriched-iron", amount = 5 },
		},
		results = {
			{ type = "item", name = "iron-plate", amount = 5 },
		},
		allow_productivity = true,
		always_show_made_in = true,
		always_show_products = true,
	},
	{
		type = "recipe",
		name = "kr-glass",
		enabled = false,
		category = "smelting",
		energy_required = 16,
		ingredients = {
			{ type = "item", name = "kr-sand", amount = 16 },
		},
		results = {
			{ type = "item", name = "kr-glass", amount = 8 },
		},
		allow_productivity = true,
		always_show_made_in = true,
		always_show_products = true,
	},
	{
		type = "recipe",
		name = "kr-imersium-plate",
		enabled = false,
		category = "smelting",
		energy_required = 32,
		ingredients = {
			{ type = "item", name = "kr-imersite-powder", amount = 9 },
			{ type = "item", name = "kr-rare-metals", amount = 6 },
		},
		results = {
			{ type = "item", name = "kr-imersium-plate", amount = 3 },
		},
		allow_productivity = true,
		always_show_made_in = true,
		always_show_products = true,
	},
	{
		type = "recipe",
		name = "kr-rare-metals",
		icons = {
			{ icon = "__Krastorio2Assets__/icons/items/rare-metals.png" },
			{
				icon = "__Krastorio2Assets__/icons/items/rare-metal-ore.png",
				scale = 0.22,
				shift = { -8, -8 },
			},
		},
		subgroup = "raw-material",
		enabled = true,
		category = "smelting",
		energy_required = 3.2,
		ingredients = {
			{ type = "item", name = "kr-rare-metal-ore", amount = 2 },
		},
		results = {
			{ type = "item", name = "kr-rare-metals", amount = 1 },
		},
		allow_productivity = true,
		always_show_made_in = true,
		always_show_products = true,
	},
	{
		type = "recipe",
		name = "kr-rare-metals-from-enriched-rare-metals",
		icons = {
			{ icon = "__Krastorio2Assets__/icons/items/rare-metals.png" },
			{
				icon = "__Krastorio2Assets__/icons/items/enriched-rare-metals.png",
				scale = 0.22,
				shift = { -8, -8 },
			},
		},
		subgroup = "raw-material",
		order = "c[rare-metals]-b[enriched-rare-metals]",
		enabled = false,
		category = "smelting",
		energy_required = 3.2,
		ingredients = {
			{ type = "item", name = "kr-enriched-rare-metals", amount = 1 },
		},
		results = {
			{ type = "item", name = "kr-rare-metals", amount = 1 },
		},
		allow_productivity = true,
		always_show_made_in = true,
		always_show_products = true,
	},
	{
		type = "recipe",
		name = "kr-silicon",
		enabled = false,
		category = "smelting",
		energy_required = 16,
		ingredients = {
			{ type = "item", name = "kr-quartz", amount = 18 },
		},
		results = {
			{ type = "item", name = "kr-silicon", amount = 9 },
		},
		allow_productivity = true,
		always_show_made_in = true,
		always_show_products = true,
	},
})
