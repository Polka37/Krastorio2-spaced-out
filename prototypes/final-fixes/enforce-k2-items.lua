local data_util = require("data-util")

local convert = {
	["oxygen"] = true,
	["hydrogen"] = true,
	["chlorine"] = true,
	["sand"] = true,
	["glass"] = true,
	["silicon"] = true,
	["lithium"] = true,
	["ammonia"] = true,
}

for _, recipe in pairs(data.raw.recipe) do
	if recipe.ingredients then
		for _, ingredient in pairs(recipe.ingredients) do
			if convert[ingredient.name] then
				data_util.convert_ingredient(recipe.name, ingredient.name, "kr-" .. ingredient.name)
			end
		end
	end

	if recipe.results then
		for _, result in pairs(recipe.results) do
			if convert[result.name] then
				if recipe.main_product == result.name then
					recipe.main_product = "kr-" .. result.name
				end
				result.name = "kr-" .. result.name
			end
		end
	end
end

for _, item in pairs(data.raw.item) do
	if convert[item.name] then
		item.hidden = true
		item.hidden_in_factoriopedia = true
		if data.raw.recipe[item.name .. "-recycling"] then
			data.raw.recipe[item.name .. "-recycling"] = nil
		end
	end
end

for _, fluid in pairs(data.raw.fluid) do
	if convert[fluid.name] then
		fluid.hidden = true
		fluid.hidden_in_factoriopedia = true
		if not mods["nulls-k2so-tweaks"] and data.raw.item[fluid.name .. "-barrel"] then
			data.raw.recipe[fluid.name .. "-barrel"].hidden = true
			data.raw.recipe[fluid.name .. "-barrel"].hidden_in_factoriopedia = true
			data.raw.recipe["empty-" .. fluid.name .. "-barrel"].hidden = true
			data.raw.recipe["empty-" .. fluid.name .. "-barrel"].hidden_in_factoriopedia = true
		end
	end
end

for _, tile in pairs(data.raw.tile) do
	if convert[tile.fluid] then
		tile.fluid = "kr-" .. tile.fluid
	end
end

for _, ore in pairs(data.raw.resource) do
	if ore.minable.results then
		for _, item in pairs(ore.minable.results) do
			if convert[item.name] then
				item.name = "kr-" .. item.name
			end
		end
	end
end
