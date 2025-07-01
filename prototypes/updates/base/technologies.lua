local data_util = require("data-util")

data_util.add_prerequisite("advanced-circuit", "kr-silicon-processing")
data_util.add_prerequisite("atomic-bomb", "kr-military-5")
data_util.add_prerequisite("automation", "kr-automation-core")
data_util.add_prerequisite("automation-science-pack", "kr-laboratory")
data_util.add_prerequisite("automobilism", "kr-fuel")
data_util.add_prerequisite("battery-equipment", "modular-armor")
data_util.add_prerequisite("efficiency-module-2", "chemical-science-pack")
data_util.add_prerequisite("efficiency-module-3", "processing-unit")
data_util.add_prerequisite("electronics", "kr-automation-core")
data_util.add_prerequisite("fast-inserter", "logistics")
data_util.add_prerequisite("fast-inserter", "steel-processing")
data_util.add_prerequisite("fluid-handling", "steam-power")
data_util.add_prerequisite("gate", "logistic-science-pack")
data_util.add_prerequisite("gate", "steel-processing")
data_util.add_prerequisite("heavy-armor", "kr-light-armor")
data_util.add_prerequisite("kr-advanced-tech-card", "kr-lithium-sulfur-battery")
data_util.add_prerequisite("kr-iron-pickaxe", "kr-automation-core")
data_util.add_prerequisite("kr-matter-tech-card", "kr-lithium-processing")
data_util.add_prerequisite("lamp", "kr-stone-processing")
data_util.add_prerequisite("logistics-2", "steel-processing")
data_util.add_prerequisite("military", "electronics")
data_util.add_prerequisite("military-science-pack", "advanced-circuit")
data_util.add_prerequisite("modular-armor", "military-2")
data_util.add_prerequisite("oil-processing", "kr-fluids-chemistry")
data_util.add_prerequisite("physical-projectile-damage-1", "automation-science-pack")
data_util.add_prerequisite("production-science-pack", "kr-advanced-lab")
data_util.add_prerequisite("production-science-pack", "kr-research-server")
data_util.add_prerequisite("production-science-pack", "uranium-processing")
data_util.add_prerequisite("productivity-module-2", "chemical-science-pack")
data_util.add_prerequisite("productivity-module-3", "processing-unit")
data_util.add_prerequisite("rocket-fuel", "kr-fuel")
data_util.add_prerequisite("rocket-fuel", "kr-atmosphere-condensation")
data_util.add_prerequisite("solar-energy", "kr-silicon-processing")
data_util.add_prerequisite("speed-module-2", "chemical-science-pack")
data_util.add_prerequisite("speed-module-3", "processing-unit")
data_util.add_prerequisite("spidertron", "kr-ai-core")
data_util.add_prerequisite("spidertron", "kr-fusion-reactor-equipment")
data_util.add_prerequisite("steam-power", "kr-automation-core")
data_util.add_prerequisite("steel-axe", "kr-iron-pickaxe")
data_util.add_prerequisite("stone-wall", "military")
data_util.add_prerequisite("utility-science-pack", "kr-advanced-lab")
data_util.add_prerequisite("utility-science-pack", "kr-research-server")
data_util.add_prerequisite("utility-science-pack", "rocket-fuel")
data_util.add_prerequisite("weapon-shooting-speed-1", "automation-science-pack")
data_util.add_prerequisite(kr_optimization_tech_card_name, "kr-research-server")
data_util.add_prerequisite("energy-shield-mk2-equipment", "power-armor-mk2")
data_util.add_prerequisite("big-mining-drill", "kr-electric-mining-drill-mk2")
data_util.add_prerequisite("promethium-science-pack", "kr-singularity-tech-card")

data_util.remove_prerequisite("spidertron", "fission-reactor-equipment")
data_util.remove_prerequisite("atomic-bomb", "military-4")
data_util.remove_prerequisite("automation-2", "automation")
data_util.remove_prerequisite("automation", "automation-science-pack")
data_util.remove_prerequisite("automation-science-pack", "steam-power")
data_util.remove_prerequisite("automobilism", "engine")
data_util.remove_prerequisite("engine", "steel-processing")
data_util.remove_prerequisite("fast-inserter", "automation-science-pack")
data_util.remove_prerequisite("fission-reactor-equipment", "utility-science-pack")
data_util.remove_prerequisite("fluid-handling", "automation-2")
data_util.remove_prerequisite("gate", "military-2")
data_util.remove_prerequisite("heavy-armor", "military")
data_util.remove_prerequisite("rocket-silo", "concrete")
data_util.remove_prerequisite("rocket-silo", "rocket-fuel")
data_util.remove_prerequisite("solar-energy", "logistic-science-pack")
data_util.remove_prerequisite("solar-energy", "steel-processing")
data_util.remove_prerequisite("energy-shield-mk2-equipment", "power-armor")
data_util.remove_prerequisite("energy-shield-mk2-equipment", "military-4")
data_util.remove_prerequisite("energy-shield-mk2-equipment", "electromagnetic-science-pack")
data_util.remove_prerequisite("big-mining-drill", "electric-mining-drill")

data_util.remove_research_unit_ingredient("fission-reactor-equipment", "utility-science-pack")

data_util.add_research_unit_ingredient("promethium-science-pack", "kr-singularity-tech-card")
data_util.add_research_unit_ingredient("research-productivity", "kr-matter-tech-card")
data_util.add_research_unit_ingredient("research-productivity", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("research-productivity", "kr-singularity-tech-card")

data_util.add_recipe_unlock("advanced-circuit", "kr-electronic-components")
data_util.add_recipe_unlock("atomic-bomb", "kr-nuclear-artillery-shell")
data_util.add_recipe_unlock("automation-science-pack", "kr-blank-tech-card")
data_util.add_recipe_unlock("battery-equipment", "kr-small-portable-generator-equipment")
data_util.add_recipe_unlock("coal-liquefaction", "kr-coke-liquefaction")
data_util.add_recipe_unlock("electric-engine", "kr-additional-engine-equipment")
data_util.add_recipe_unlock(kr_optimization_tech_card_name, "kr-space-research-data")
data_util.add_recipe_unlock("landfill", "kr-landfill-with-sand")
data_util.add_recipe_unlock("logistics", "long-handed-inserter")
data_util.add_recipe_unlock("military-science-pack", "kr-biter-research-data")
data_util.add_recipe_unlock("military", "slowdown-capsule")
data_util.add_recipe_unlock("personal-roboport-equipment", "kr-vehicle-roboport-equipment")
data_util.add_recipe_unlock("rocket-fuel", "kr-rocket-fuel-with-ammonia")
data_util.add_recipe_unlock("rocket-fuel", "kr-rocket-fuel-with-hydrogen-chloride")
data_util.add_recipe_unlock("solar-panel-equipment", "kr-big-solar-panel-equipment")
data_util.add_recipe_unlock("steel-processing", "kr-coke")
data_util.add_recipe_unlock("steel-processing", "kr-coke-carbon")
data_util.add_recipe_unlock("steel-processing", "kr-steel-beam")
data_util.add_recipe_unlock("steel-processing", "kr-steel-gear-wheel")
data_util.add_recipe_unlock("coal-liquefaction", "kr-coal-filtration")
data_util.add_recipe_unlock("foundry", "molten-enriched-copper")
data_util.add_recipe_unlock("foundry", "molten-enriched-iron")
data_util.add_recipe_unlock("foundry", "kr-casting-iron-beam")
data_util.add_recipe_unlock("foundry", "kr-casting-steel-beam")
data_util.add_recipe_unlock("foundry", "kr-casting-steel-gear")
data_util.add_recipe_unlock("foundry", "kr-casting-steel-pipe")
data_util.add_recipe_unlock("foundry", "kr-casting-steel-pipe-to-ground")
data_util.add_recipe_unlock("tungsten-carbide", "kr-carbide-processing-circuit")
data_util.add_recipe_unlock("biochamber", "kr-bio-processing-circuit")
data_util.add_recipe_unlock("bioflux-processing", "kr-spoilage-decomposition")
data_util.add_recipe_unlock("rocket-turret", "kr-rocket-turret")
data_util.add_recipe_unlock("rocket-turret", "kr-explosive-turret-rocket")
data_util.add_recipe_unlock("rocket-turret", "kr-nuclear-turret-rocket")
data_util.add_recipe_unlock("railgun", "kr-railgun-turret")
data_util.add_recipe_unlock("railgun", "kr-basic-railgun-shell")
data_util.add_recipe_unlock("railgun", "kr-explosive-railgun-shell")
data_util.add_recipe_unlock("captivity", "kr-biter-biomass")
data_util.add_recipe_unlock("fusion-reactor", "kr-high-fusion")
data_util.add_recipe_unlock("electromagnetic-science-pack", "kr-electromagnetic-research-data")
data_util.add_recipe_unlock("metallurgic-science-pack", "kr-metallurgic-research-data")
data_util.add_recipe_unlock("agricultural-science-pack", "kr-agricultural-research-data")
data_util.add_recipe_unlock("cryogenic-science-pack", "kr-cryogenic-research-data")
data_util.add_recipe_unlock("promethium-science-pack", "kr-promethium-research-data")

if settings.startup["kr-loaders"].value then
  data_util.add_recipe_unlock("logistics", "kr-loader")
  data_util.add_recipe_unlock("logistics-2", "kr-fast-loader")
  data_util.add_recipe_unlock("logistics-3", "kr-express-loader")
  data_util.add_recipe_unlock("turbo-transport-belt", "kr-advanced-loader")
end

data_util.remove_recipe_unlock("automation", "long-handed-inserter")
data_util.remove_recipe_unlock("electronics", "copper-cable")
data_util.remove_recipe_unlock("electronics", "lab")
data_util.remove_recipe_unlock("electronics", "small-electric-pole")
data_util.remove_recipe_unlock("kovarex-enrichment-process", "nuclear-fuel")
data_util.remove_recipe_unlock("military-3", "slowdown-capsule")
data_util.remove_recipe_unlock("oil-processing", "chemical-plant")

data.raw.technology["steel-plate-productivity"].max_level = 5
data.raw.technology["mining-productivity-3"].max_level = 5

function generate_upgrade(previous, new_name, new_science_pack, max)
local previous = data.raw.technology[previous]
local next = table.deepcopy(previous)
next.name = new_name
next.max_level = max
next.prerequisites = {previous.name, new_science_pack}
data:extend({ next })
data_util.add_research_unit_ingredient(next.name, new_science_pack )
end

generate_upgrade("steel-plate-productivity","steel-plate-productivity-6",kr_optimization_tech_card_name, "infinite")
if not mods["planet_erimos_prime"] then
   generate_upgrade("mining-productivity-3","mining-productivity-6",kr_optimization_tech_card_name, "infinite")
end

data_util.add_research_unit_ingredient("plastic-bar-productivity", kr_optimization_tech_card_name )
data_util.add_research_unit_ingredient("rocket-fuel-productivity", kr_optimization_tech_card_name )
data_util.add_research_unit_ingredient("low-density-structure-productivity", kr_optimization_tech_card_name )
data_util.add_research_unit_ingredient("scrap-recycling-productivity", kr_optimization_tech_card_name )
data_util.add_research_unit_ingredient("processing-unit-productivity", kr_optimization_tech_card_name )
data_util.add_research_unit_ingredient("rocket-part-productivity", kr_optimization_tech_card_name )
data.raw.technology["automation-science-pack"].icon = "__Krastorio2Assets__/technologies/automation-tech-card.png"

data.raw.technology["artillery"].unit.count = 1000
data.raw.technology["atomic-bomb"].unit.count = 1500
data.raw.technology["automation-3"].unit.count = 350
data.raw.technology["coal-liquefaction"].unit.count = 150
data.raw.technology["destroyer"].unit.count = 350
data.raw.technology["discharge-defense-equipment"].unit.count = 300
data.raw.technology["effect-transmission"].unit.count = 500
data.raw.technology["fission-reactor-equipment"].unit.count = 350
if not mods["atan-nuclear-science"] then
  data.raw.technology["kovarex-enrichment-process"].unit.count = 500
end
data.raw.technology["laser"].unit.count = 200
data.raw.technology["logistic-system"].unit.count = 250
if not mods["any-planet-start"] then
  data.raw.technology["low-density-structure"].unit.count = 500
end
data.raw.technology["military-4"].unit.count = 350
data.raw.technology["nuclear-fuel-reprocessing"].unit.count = 250
data.raw.technology["nuclear-power"].unit.count = 500
data.raw.technology["production-science-pack"].unit.count = 250
data.raw.technology["uranium-ammo"].unit.count = 300
data.raw.technology["utility-science-pack"].unit.count = 250

data_util.set_icons(
  data.raw.technology["fission-reactor-equipment"],
  util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/fission-reactor-equipment.png")
)

data_util.set_icons(
  data.raw.technology["steel-axe"],
  util.technology_icon_constant_mining("__Krastorio2Assets__/technologies/steel-pickaxe.png")
)

data.raw.technology["personal-laser-defense-equipment"].localised_name = {
  "technology-name.kr-personal-laser-defense-mk1-equipment",
}

data.raw.technology["logistic-science-pack"].localised_name = { "item-name.logistic-tech-card" }
data.raw.technology["military-science-pack"].localised_name = { "item-name.military-tech-card" }
data.raw.technology["chemical-science-pack"].localised_name = { "item-name.chemical-tech-card" }
data.raw.technology["production-science-pack"].localised_name = { "item-name.production-tech-card" }
data.raw.technology["utility-science-pack"].localised_name = { "item-name.utility-tech-card" }
data.raw.technology[kr_optimization_tech_card_name].localised_name = { "item-name.optimization-tech-card" }
data.raw.technology[kr_optimization_tech_card_name].localised_description =
  { "technology-description.optimization-tech-card" }
data.raw.technology["electromagnetic-science-pack"].localised_name = { "item-name.kr-electromagnetic-tech-card" }
data.raw.technology["metallurgic-science-pack"].localised_name = {"item-name.kr-metallurgic-tech-card"}
data.raw.technology["agricultural-science-pack"].localised_name = {"item-name.kr-agricultural-tech-card"}
data.raw.technology["cryogenic-science-pack"].localised_name = {"item-name.kr-cryogenic-tech-card"}
data.raw.technology["promethium-science-pack"].localised_name = {"item-name.kr-promethium-tech-card"}

--Remove once aai industry updates
data.raw.technology["kr-automation-core"].unit = nil
data.raw.technology["kr-automation-core"].research_trigger = {
      type = "craft-item",
      item = "iron-gear-wheel",
      count = 10
    }

table.insert(data.raw["technology"]["processing-unit-productivity"].effects, { type = "change-recipe-productivity", recipe = "kr-bio-processing-circuit", change = 0.1 } )
table.insert(data.raw["technology"]["processing-unit-productivity"].effects, { type = "change-recipe-productivity", recipe = "kr-carbide-processing-circuit", change = 0.1 } )
table.insert(data.raw["technology"]["rocket-fuel-productivity"].effects, { type = "change-recipe-productivity", recipe = "kr-rocket-fuel-with-ammonia", change = 0.1 } )
table.insert(data.raw["technology"]["rocket-fuel-productivity"].effects, { type = "change-recipe-productivity", recipe = "kr-rocket-fuel-with-hydrogen-chloride", change = 0.1 } )

-- stylua: ignore start
data_util.set_icons(data.raw.technology["battery-mk2-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/battery-mk2-equipment.png"))
data_util.set_icon(data.raw.technology["chemical-science-pack"], "__Krastorio2Assets__/technologies/chemical-tech-card.png", 256)
data_util.set_icon(data.raw.technology["coal-liquefaction"], "__Krastorio2Assets__/technologies/coal-liquefaction.png", 256)
data_util.set_icons(data.raw.technology["energy-shield-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/energy-shield-mk1-equipment.png"))
data_util.set_icons(data.raw.technology["energy-shield-mk2-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/energy-shield-mk2-equipment.png"))
data_util.set_icon(data.raw.technology["heavy-armor"], "__Krastorio2Assets__/technologies/heavy-armor.png", 256)
data_util.set_icon(data.raw.technology[kr_optimization_tech_card_name], "__Krastorio2Assets__/technologies/optimization-tech-card.png", 256)
data_util.set_icon(data.raw.technology["logistics-2"], "__Krastorio2Assets__/technologies/logistics-2.png", 256)
data_util.set_icon(data.raw.technology["logistics-3"], "__Krastorio2Assets__/technologies/logistics-3.png", 256)
data_util.set_icon(data.raw.technology["logistic-science-pack"], "__Krastorio2Assets__/technologies/logistic-tech-card.png", 256)
data_util.set_icon(data.raw.technology["logistics"], "__Krastorio2Assets__/technologies/logistics-1.png", 256)
data_util.set_icon(data.raw.technology["military-science-pack"], "__Krastorio2Assets__/technologies/military-tech-card.png", 256)
data_util.set_icons(data.raw.technology["night-vision-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/night-vision-equipment.png"))
data_util.set_icon(data.raw.technology["oil-processing"], "__Krastorio2Assets__/technologies/oil-gathering.png", 256)
data_util.set_icons(data.raw.technology["personal-laser-defense-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/personal-laser-defense-mk1-equipments.png"))
data_util.set_icon(data.raw.technology["production-science-pack"], "__Krastorio2Assets__/technologies/production-tech-card.png", 256)
data_util.set_icon(data.raw.technology["steel-processing"], "__Krastorio2Assets__/technologies/steel-processing.png", 256)
data_util.set_icon(data.raw.technology["utility-science-pack"], "__Krastorio2Assets__/technologies/utility-tech-card.png", 256)
data_util.set_icon(data.raw.technology["metallurgic-science-pack"],"__Krastorio2-spaced-out__/graphics/technologies/metallurgy-tech-card.png",256)
data_util.set_icon(data.raw.technology["electromagnetic-science-pack"],"__Krastorio2-spaced-out__/graphics/technologies/electromagnetic-tech-card.png",256)
data_util.set_icon(data.raw.technology["agricultural-science-pack"],  "__Krastorio2-spaced-out__/graphics/technologies/agricultural-tech-card.png",256)
data_util.set_icon(data.raw.technology["cryogenic-science-pack"],  "__Krastorio2-spaced-out__/graphics/technologies/cryogenic-tech-card.png",256)
data_util.set_icon(data.raw.technology["promethium-science-pack"],"__Krastorio2-spaced-out__/graphics/technologies/promethium-tech-card.png",256)
-- stylua: ignore end

