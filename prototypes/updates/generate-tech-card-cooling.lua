local data_util = require("data-util")
local flib_locale = require("__flib__.locale")

for _, original_recipe in pairs(data.raw.recipe) do
    if original_recipe.category == "kr-tech-cards" then
        local recipe = table.deepcopy(original_recipe)
            recipe.name = original_recipe.name .. "-cooling"
            recipe.energy_required = original_recipe.energy_required/2
            recipe.category = "kr-tech-cards-cooling"
            recipe.subgroup = "kr-tech-cards-cooling"
            recipe.localised_name = {"", flib_locale.of(original_recipe), " ", {"recipe-name.kr-cooling"} }
            local pack = original_recipe.name
            recipe.order = data.raw.tool[pack].order
            recipe.icons = {
                { icon = data.raw.tool[pack].icon, },
                { icon = "__space-age__/graphics/icons/fluid/fluoroketone-cold.png", scale = 0.26, shift = { 8, 8 } },
            }
            data:extend({ recipe })
            data_util.add_or_replace_ingredient(  recipe.name, "fluoroketone-cold",  { type = "fluid", name = "fluoroketone-cold" , amount = 10 } )
            data_util.add_or_replace_ingredient(  recipe.name, "kr-blank-tech-card",  { type = "item", name = "kr-blank-tech-card" , amount = 6 } )
            data_util.add_or_replace_product(  recipe.name, original_recipe.name,  { type = "item", name = original_recipe.name , amount = 6 } )
            data_util.add_or_replace_product(  recipe.name, "fluoroketone-hot",  { type = "fluid", name = "fluoroketone-hot" , amount = 10 , ignored_by_productivity = 10} )
            data_util.add_recipe_unlock("kr-quantum-computer", recipe.name )
    end
end
