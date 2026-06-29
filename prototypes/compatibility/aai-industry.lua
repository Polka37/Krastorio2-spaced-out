local data_util = require("data-util")

if mods["aai-loaders"] and settings.startup["aai-loaders-mode"].value ~= "graphics-only" then
	data_util.hide("aai-kr-advanced-loader")
	data.raw["loader-1x1"]["aai-kr-advanced-loader"].hidden = true
	data.raw["loader-1x1"]["aai-kr-advanced-loader"].hidden_in_factoriopedia = true
	data.raw["loader-1x1"]["aai-kr-advanced-loader"].next_upgrade = nil
	data.raw["loader-1x1"]["aai-express-loader"].next_upgrade = "aai-turbo-loader"
	data.raw["loader-1x1"]["aai-turbo-loader"].next_upgrade = "aai-kr-superior-loader"
	data.raw.technology["aai-kr-advanced-loader"].prerequisites = nil
	data_util.add_prerequisite("aai-kr-superior-loader", "aai-turbo-loader")
	data_util.add_or_replace_ingredient(
		"aai-kr-superior-loader",
		"aai-kr-advanced-loader",
		{ type = "item", name = "aai-turbo-loader", amount = 1 }
	)
end

if not mods["aai-industry"] then
	return
end

data_util.add_research_unit_ingredient("gun-turret", "automation-science-pack")
data_util.add_prerequisite("basic-logistics", "burner-mechanics")
data_util.add_prerequisite("kr-automation-core", "burner-mechanics")
data_util.hide("kr-laboratory")

data.raw.technology["automation-science-pack"].research_trigger = {
	type = "craft-item",
	item = "burner-lab",
	count = 1,
}

data.raw.recipe["automation-science-pack"].categories = { "crafting" }
data.raw.recipe["kr-blank-tech-card"].categories = { "crafting" }
