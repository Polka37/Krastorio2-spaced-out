if not settings.startup["kr-loaders"].value then
	return
end

for _, loader in pairs(data.raw["loader-1x1"]) do
	loader.heating_energy = "50kW"
	loader.max_belt_stack_size = 4
	loader.adjustable_belt_stack_size = true
	--loader.wait_for_full_stack = true
end

data.raw.item["kr-advanced-loader"].default_import_location = "vulcanus"

data:extend({
	{
		type = "recipe",
		name = "kr-express-loader",
		categories = { "crafting-with-fluid", "metallurgy" },
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ type = "item", name = "express-transport-belt", amount = 1 },
			{ type = "item", name = "kr-fast-loader", amount = 2 },
			{ type = "item", name = "kr-steel-gear-wheel", amount = 10 },
			{ type = "fluid", name = "lubricant", amount = 40 },
		},
		results = { { type = "item", name = "kr-express-loader", amount = 1 } },
	},
	{
		type = "recipe",
		name = "kr-superior-loader",
		categories = { "metallurgy" },
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ type = "item", name = "kr-superior-transport-belt", amount = 1 },
			{ type = "item", name = "kr-advanced-loader", amount = 2 },
			{ type = "item", name = "kr-imersium-gear-wheel", amount = 10 },
		},
		results = { { type = "item", name = "kr-superior-loader", amount = 1 } },
	},
	{
		type = "recipe",
		name = "kr-advanced-loader",
		categories = { "metallurgy" },
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ type = "item", name = "turbo-transport-belt", amount = 1 },
			{ type = "item", name = "kr-express-loader", amount = 2 },
			{ type = "item", name = "tungsten-plate", amount = 20 },
			{ type = "fluid", name = "lubricant", amount = 40 },
		},
		results = { { type = "item", name = "kr-advanced-loader", amount = 1 } },
		surface_conditions = { { property = "pressure", min = 4000, max = 4000 } },
	},
	{
		type = "recipe",
		name = "kr-fast-loader",
		categories = { "crafting", "metallurgy" },
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ type = "item", name = "fast-transport-belt", amount = 1 },
			{ type = "item", name = "kr-loader", amount = 2 },
			{ type = "item", name = "iron-gear-wheel", amount = 10 },
		},
		results = { { type = "item", name = "kr-fast-loader", amount = 1 } },
	},
	{
		type = "recipe",
		name = "kr-loader",
		categories = { "crafting", "metallurgy" },
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ type = "item", name = "transport-belt", amount = 1 },
			{ type = "item", name = "iron-gear-wheel", amount = 10 },
			{ type = "item", name = "kr-iron-beam", amount = 2 },
		},
		results = { { type = "item", name = "kr-loader", amount = 1 } },
	},
})
