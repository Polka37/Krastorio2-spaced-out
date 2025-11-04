local data_util = require("data-util")
local flib_locale = require("__flib__.locale")
local flib_prototypes = require("__flib__.prototypes")
local flib_table = require("__flib__.table")

--- Allows the manipulation of Krastorio 2 matter recipes.
--- @class k2.matter_lib
local matter_lib = {}

--- @class k2.MatterRecipeDefinition
--- @field material data.IngredientPrototype|data.ProductPrototype The material involved in the conversion.
--- @field matter_count float How much matter is involved in one conversion.
--- @field energy_required double? Crafting energy of the recipe. Defaults to `2`.
--- @field needs_stabilizer boolean? If true, a matter stabilizer will be required for this recipe.
--- @field allow_productivity boolean? If true, productivity modules may be used in the deconversion recipe.
--- @field unlocked_by data.TechnologyID? Which technology will unlock the recipe. Defaults to `kr-matter-processing`.

--- Adds a matter conversion recipe (item -> matter).
--- @param def k2.MatterRecipeDefinition
function matter_lib.make_conversion_recipe(def)
	local material = def.material
	--- @cast material data.IngredientPrototype
	local recipe_name = "kr-" .. material.name .. "-to-matter"
	if data.raw.recipe[recipe_name] then
		data_util.error("Recipe '" .. recipe_name .. "' already exists.'")
		return
	end
	local prototype = flib_prototypes.get(material.type, material.name) --[[@as data.FluidPrototype|data.ItemPrototype]]
	data:extend({
		{
			type = "recipe",
			name = recipe_name,
			localised_name = { "recipe-name.kr-to-matter", flib_locale.of(prototype) },
			icons = {
				{ icon = "__Krastorio2Assets__/icons/arrows/arrow-m.png" },
				table.unpack(
					data_util.transform_icons(data_util.get_icons(prototype), { scale = 0.28, shift = { -8, -6 } })
				),
				{ icon = "__Krastorio2Assets__/icons/fluids/matter.png", scale = 0.28, shift = { 4, 8 } },
			},
			category = "kr-matter-conversion",
			subgroup = "kr-matter-conversion",
			hide_from_player_crafting = true,
			enabled = false,
			hide_from_signal_gui = false,
			energy_required = def.energy_required or 2,
			ingredients = {
				{ type = material.type, name = material.name, amount = material.amount },
				def.needs_stabilizer and { type = "item", name = "kr-charged-matter-stabilizer", amount = 1 } or nil,
			},
			results = {
				{ type = "fluid", name = "kr-matter", amount = def.matter_count },
				def.needs_stabilizer
						and { type = "item", name = "kr-matter-stabilizer", amount = 1, probability = 0.99 }
					or nil,
			},
			main_product = "",
			allow_as_intermediate = false,
			allow_productivity = def.allow_productivity,
			auto_recycle = false,
		},
	})
	data_util.add_recipe_unlock(def.unlocked_by or "kr-matter-processing", recipe_name)
end

--- Adds a matter deconversion recipe (matter -> item).
--- @param def k2.MatterRecipeDefinition
function matter_lib.make_deconversion_recipe(def)
	local material = def.material
	--- @cast material data.ProductPrototype
	local recipe_name = "kr-matter-to-" .. material.name
	if data.raw.recipe[recipe_name] then
		data_util.error("Recipe '" .. recipe_name .. "' already exists.'")
		return
	end
	if material.type == "research-progress" then
		data_util.error("research-progress is not supported in matter recipes.")
		return
	end
	local prototype = flib_prototypes.get(def.material.type --[[@as string]], def.material.name) --[[@as data.FluidPrototype|data.ItemPrototype]]
	data:extend({
		{
			type = "recipe",
			name = recipe_name,
			localised_name = { "recipe-name.kr-matter-to", flib_locale.of(prototype) },
			icons = flib_table.array_merge({
				{
					{ icon = "__Krastorio2Assets__/icons/arrows/arrow-i.png" },
					{ icon = "__Krastorio2Assets__/icons/fluids/matter.png", scale = 0.28, shift = { 8, -6 } },
				},
				data_util.transform_icons(data_util.get_icons(prototype), { scale = 0.28, shift = { -4, 8 } }),
			}),
			category = "kr-matter-deconversion",
			subgroup = "kr-matter-deconversion",
			hide_from_player_crafting = true,
			hide_from_signal_gui = false,
			enabled = false,
			energy_required = def.energy_required or 2,
			ingredients = {
				{ type = "fluid", name = "kr-matter", amount = def.matter_count },
				def.needs_stabilizer and { type = "item", name = "kr-charged-matter-stabilizer", amount = 1 } or nil,
			},
			results = {
				material,
				def.needs_stabilizer
						and { type = "item", name = "kr-matter-stabilizer", amount = 1, probability = 0.99 }
					or nil,
			},
			main_product = "",
			allow_as_intermediate = false,
			allow_productivity = def.allow_productivity,
			always_show_made_in = true,
			always_show_products = true,
			auto_recycle = false,
		},
	})
	data_util.add_recipe_unlock(def.unlocked_by or "kr-matter-processing", recipe_name)
end

--- Adds a matter conversion and deconversion recipe with the given data.
--- @param def k2.MatterRecipeDefinition
function matter_lib.make_recipes(def)
	matter_lib.make_conversion_recipe(def)
	matter_lib.make_deconversion_recipe(def)
end

return matter_lib
