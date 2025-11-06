if not mods["any-planet-start"] then
	return
end

local data_util = require("data-util")

if settings.startup["aps-planet"].value == "gleba" then
	data.raw.technology["agriculture"].research_trigger = {
		type = "craft-item",
		item = "landfill",
		count = 1,
	}
	data_util.remove_recipe_unlock("biochamber", "kr-bio-processing-circuit")
	data_util.add_recipe_unlock("processing-unit", "kr-bio-processing-circuit")
end

if settings.startup["aps-planet"].value == "vulcanus" then
	data.raw.technology["kr-crusher"].research_trigger = { type = "mine-entity", entity = "big-volcanic-rock" }
	data_util.remove_prerequisite("solar-energy", "kr-silicon-processing")
	data_util.add_prerequisite("solar-energy", "kr-stone-processing")
	data_util.remove_ingredient("solar-panel", "silicon")
	data_util.add_or_replace_ingredient(
		"solar-panel",
		"kr-silicon",
		{ type = "item", name = "copper-plate", amount = 5 }
	)
end

if settings.startup["aps-planet"].value == "fulgora" then
	data_util.remove_prerequisite("advanced-circuit", "kr-silicon-processing")
	data_util.remove_prerequisite("steam-power", "fluid-handling")
end
