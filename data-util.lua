local data_util = require("__Krastorio2__.data-util")

--- Adds or replaces the recipe's ingredient matching the given name.
--- @param recipe_name data.RecipeID
--- @param old_ingredient_name data.FluidID|data.ItemID
--- @param new_ingredient data.IngredientPrototype
function data_util.add_or_replace_ingredient(recipe_name, old_ingredient_name, new_ingredient)
	local recipe = data.raw.recipe[recipe_name]
	if not recipe then
		data_util.error("Recipe " .. recipe_name .. " does not exist.")
		return
	end
	if not recipe.ingredients then
		recipe.ingredients = { new_ingredient }
		return
	end
	for i, ingredient in pairs(recipe.ingredients) do
		if ingredient.name == old_ingredient_name then
			recipe.ingredients[i] = new_ingredient
			return
		end
	end
	table.insert(recipe.ingredients, new_ingredient)
end

function data_util.add_or_replace_product(recipe_name, old_product_name, new_product)
	local recipe = data.raw.recipe[recipe_name]
	if not recipe then
		data_util.error("Recipe " .. recipe_name .. " does not exist.")
		return
	end
	if not recipe.results then
		recipe.results = { new_product }
		return
	end
	for i, product in pairs(recipe.results) do
		if product.name == old_product_name then
			recipe.results[i] = new_product
			return
		end
	end
	table.insert(recipe.results, new_product)
end

--Make a recipe tech card
--- @param science_pack data.Name
--- @param ingredients data.Ingredients
--- @param no_server boolean?
function data_util.make_tech_card(science_pack, ingredients, no_server)
	data.raw.recipe[science_pack] = {
		type = "recipe",
		name = science_pack,
		enabled = false,
		energy_required = 20,
		ingredients = ingredients,
		results = { { type = "item", name = science_pack, amount = 5 } },
		allow_productivity = true,
		show_amount_in_title = false,
		always_show_products = true,
		main_product = science_pack,
		reset_freshness_on_craft = true,
		result_is_always_fresh = true,
	}
	local recipe = data.raw.recipe[science_pack]
	table.insert(recipe.ingredients, 1, { type = "item", name = "kr-blank-tech-card", amount = 5 })
	if no_server then
		for _, ingredients in pairs(recipe.ingredients) do
			if ingredients.type == "fluid" then
				recipe.category = "crafting-with-fluid"
				return
			end
		end
	else
		recipe.category = "kr-tech-cards"
	end
end

return data_util
