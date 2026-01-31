if not mods["castra"] and not mods["Age-of-Production"] then
	return
end

if not settings.startup["kr-realistic-weapons"].value then
	return
end

local data_util = require("data-util")

function add_group(group)
	data.raw.recipe["kr-rifle-magazine"].category = group
	data.raw.recipe["kr-armor-piercing-rifle-magazine"].category = group
	data.raw.recipe["kr-uranium-rifle-magazine"].category = group
	data.raw.recipe["kr-imersite-rifle-magazine"].category = group
	data.raw.recipe["kr-anti-materiel-rifle-magazine"].category = group
	data.raw.recipe["kr-armor-piercing-anti-materiel-rifle-magazine"].category = group
	data.raw.recipe["kr-uranium-anti-materiel-rifle-magazine"].category = group
	data.raw.recipe["kr-imersite-anti-materiel-rifle-magazine"].category = group
end

local category = data.raw.recipe["firearm-magazine"].category

add_group(category)
table.insert(data.raw["assembling-machine"]["kr-advanced-assembling-machine"].crafting_categories, category)

if not mods["castra"] then
	return
end

data_util.convert_ingredient("corrosive-firearm-magazine", "firearm-magazine", "kr-rifle-magazine")
data_util.convert_ingredient("piercing-rounds-catalyzing", "firearm-magazine", "kr-rifle-magazine")
data_util.convert_ingredient(
	"defender-capsule-castra-data",
	"piercing-rounds-magazine",
	"kr-armor-piercing-rifle-magazine"
)
data_util.add_or_replace_product(
	"firearm-magazine-nickel",
	"firearm-magazine",
	{ type = "item", name = "kr-rifle-magazine", amount = 1 }
)
data_util.add_or_replace_product(
	"piercing-rounds-catalyzing",
	"piercing-rounds-magazine",
	{ type = "item", name = "kr-armor-piercing-rifle-magazine", amount = 1 }
)
