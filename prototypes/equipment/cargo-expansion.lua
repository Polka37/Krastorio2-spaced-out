data:extend({
	{
		type = "recipe",
		name = "kr-cargo-expansion-equipment",
		energy_required = 20,
		enabled = true,
		ingredients = {
			{ type = "item", name = "carbon-fiber", amount = 50 },
			{ type = "item", name = "low-density-structure", amount = 30 },
			{ type = "item", name = "steel-chest", amount = 4 },
		},
		results = { { type = "item", name = "kr-cargo-expansion-equipment", amount = 1 } },
	},
	{
		type = "item",
		name = "kr-cargo-expansion-equipment",
		localised_description = { "equipment-description.energy-absorber-equipment" },
		icon = "__k2so-assets__/icons/items/cargo-expansion.png",
		place_as_equipment_result = "kr-cargo-expansion-equipment",
		subgroup = "kr-vehicle-motor",
		order = "f[vehicle]-a[cargo-expansion]",
		stack_size = 10,
		weight = 100 * kg,
	},
	{
		type = "inventory-bonus-equipment",
		name = "kr-cargo-expansion-equipment",
		sprite = {
			filename = "__k2so-assets__/equipment/cargo-expansion.png",
			width = 256,
			height = 256,
			scale = 0.5,
			priority = "medium",
		},
		shape = {
			width = 4,
			height = 4,
			type = "full",
		},
		inventory_size_bonus = 20,
		categories = { "kr-vehicle" },
	},
})
