if not mods["aai-industry"] then
	data.raw["offshore-pump"]["offshore-pump"].energy_usage = "19kW"
	data.raw["offshore-pump"]["offshore-pump"].energy_source = {
		type = "electric",
		usage_priority = "secondary-input",
		drain = "1kW",
	}
	return
end

local data_util = require("data-util")

data.raw.recipe["electronic-circuit"].energy_required = 0.5
data_util.add_or_replace_ingredient(
	"electronic-circuit",
	"copper-cable",
	{ type = "item", name = "copper-cable", amount = 3 }
)
data.raw.recipe["electronic-circuit"].results = { { type = "item", name = "electronic-circuit", amount = 1 } }

data_util.remove_ingredient("repair-pack", "stone")
data_util.remove_ingredient("repair-pack", "iron-plate")
data_util.remove_ingredient("repair-pack", "copper-plate")
data_util.remove_ingredient("assembling-machine-3", "advanced-circuit")
data_util.remove_ingredient("electronic-circuit", "iron-plate")
data_util.remove_ingredient("solar-panel", "glass")
data_util.remove_ingredient("lab", "copper-plate")

data_util.add_prerequisite("sand-processing", "kr-crusher")
data_util.add_prerequisite("electric-lab", "electricity")
data_util.add_prerequisite("kr-greenhouse", "glass-processing")
data_util.add_prerequisite("kr-fluids-chemistry", "glass-processing")
data_util.add_prerequisite("automation-science-pack", "electronics")

data_util.remove_prerequisite("kr-greenhouse", "kr-stone-processing")
data_util.remove_prerequisite("kr-fluids-chemistry", "kr-stone-processing")
data_util.remove_prerequisite("lamp", "kr-stone-processing")
data_util.remove_prerequisite("electronics", "electricity")
data_util.remove_prerequisite("fluid-handling", "steam-power")
data_util.remove_prerequisite("automation-science-pack", "kr-laboratory")
data_util.remove_prerequisite("automation-science-pack", "automation")

data_util.add_recipe_unlock("sand-processing", "kr-sand")
data_util.add_recipe_unlock("glass-processing", "kr-glass")

data_util.remove_recipe_unlock("sand-processing", "sand")
data_util.remove_recipe_unlock("glass-processing", "glass")

data.raw.recipe["glass"].hidden = true
data.raw.recipe["sand"].hidden = true
data.raw.recipe["kr-electronic-circuit-wood"].hidden = true

data.raw.technology["kr-stone-processing"] = nil
data.raw.technology["kr-laboratory"] = nil
data.raw.technology["electronics"].unit = nil
data.raw.technology["electronics"].research_trigger = { type = "craft-item", item = "copper-plate", count = 50 }

-- Mods compatibility
if mods["planet-muluna"] then
	data_util.remove_ingredient("muluna-silicon-solar-panel", "glass")
end

if mods["bzcarbon"] then
	data_util.remove_prerequisite("automation-science-pack", "electronics")
end
