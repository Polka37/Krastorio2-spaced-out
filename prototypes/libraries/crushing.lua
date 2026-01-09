local flib_locale = require("__flib__.locale")
local data_util = require("data-util")

--- @class k2.CrushingRecipeOptions
--- @field category data.RecipeCategoryID? # Defaults to `kr-void-crushing` if no results are specified, or `kr-crushing` if there are results.
--- @field energy_required double? # Defaults to `2`.
--- @field factoriopedia_alternative string?
--- @field hidden boolean? # Defaults to `true` if the category is `kr-void-crushing`, and `false` otherwise.
--- @field hide_from_player_crafting boolean? # Defaults to `true`.
--- @field order string?
--- @field results data.ItemProductPrototype[]? # Default is no results (void crushing).
--- @field subgroup data.ItemSubGroupID?

--- Contains utilities related to crushing recipes.
--- @class k2.crushing_lib
local crushing_lib = {}

--- Returns the crushing recipe for the given item if it exists.
--- @param item data.ItemPrototype
--- @return data.RecipePrototype?
function crushing_lib.get_recipe(item)
	return data.raw.recipe["kr-crush-" .. item.name]
end

--- Generates and returns a crushing recipe icon for the given prototype.
--- @param prototype k2.PrototypeWithIcons
--- @return data.IconData[]
function crushing_lib.make_icons(prototype)
	local icons = data_util.get_icons(prototype)
	if not next(icons) then
		icons[#icons + 1] = { icon = "__core__/graphics/icons/unknown.png", icon_size = 64 }
	end

	data_util.transform_icons(icons, { scale = 0.4, shift = { 0, -2 } })

	icons[#icons + 1] = { icon = "__Krastorio2Assets__/icons/recipes/crushing-overlay.png", icon_size = 64 }

	return icons
end

--- Generates and returns a crushing recipe for the given item.
--- @param item data.ItemPrototype
--- @param options k2.CrushingRecipeOptions?
--- @return data.RecipePrototype
function crushing_lib.make_recipe(item, options)
	options = options or {}

	local category = options.category
	if not category then
		if not options.results then
			category = "kr-void-crushing"
		else
			category = "kr-crushing"
		end
	end

	local hidden = options.hidden
	if hidden == nil then -- Explicitly check for nil here!
		hidden = category == "kr-void-crushing"
	end

	local hide_from_player_crafting = options.hide_from_player_crafting
	if hide_from_player_crafting == nil then -- Explicitly check for nil here!
		hide_from_player_crafting = true
	end

	--- @type data.RecipePrototype
	local recipe = {
		type = "recipe",
		name = "kr-crush-" .. item.name,
		localised_name = { "recipe-name.kr-crush", flib_locale.of(item) },
		factoriopedia_alternative = options.factoriopedia_alternative,
		icons = crushing_lib.make_icons(item),
		subgroup = options.subgroup,
		order = options.order,
		hidden = hidden,
		hide_from_stats = hidden,
		hide_from_player_crafting = hide_from_player_crafting,
		category = category,
		energy_required = options.energy_required or 2,
		ingredients = { { type = "item", name = item.name, amount = 1 } },
		results = options.results,
		main_product = "",
		auto_recycle = false,
	}
	data:extend({ recipe })
	return recipe
end

return crushing_lib
