local data_util = require("data-util")

data_util.add_prerequisite("automation-science-pack", "automation")
data_util.add_prerequisite("military", "automation-science-pack")
data_util.add_prerequisite("rocket-fuel", "kr-atmosphere-condensation")
data_util.add_prerequisite(kr_optimization_tech_card_name, "kr-research-server")
data_util.add_prerequisite("energy-shield-mk2-equipment", "power-armor-mk2")
data_util.add_prerequisite("big-mining-drill", "kr-electric-mining-drill-mk2")
data_util.add_prerequisite("promethium-science-pack", "kr-singularity-tech-card")
data_util.add_prerequisite("research-productivity", "kr-singularity-lab")
data_util.add_prerequisite("kr-superior-exoskeleton-equipment", "speed-module-3")
data_util.add_prerequisite("fish-breeding", "agricultural-science-pack")
data_util.add_prerequisite("space-platform-thruster", "kr-advanced-chemistry")
data_util.add_prerequisite("uranium-processing", "concrete")
data_util.add_prerequisite("uranium-processing", "chemical-science-pack")
data_util.add_prerequisite("planet-discovery-aquilo", "kr-advanced-tech-card")
data_util.add_prerequisite("kr-advanced-tank", "kr-military-5")
data_util.add_prerequisite("kr-imersium-processing", "kr-quarry-minerals-extraction")
data_util.add_prerequisite("kr-advanced-tech-card", "utility-science-pack")
data_util.add_prerequisite("kr-energy-control-unit", "kr-advanced-tech-card")
data_util.add_prerequisite("worker-robots-speed-7", "electromagnetic-science-pack")

data_util.remove_prerequisite("energy-shield-mk2-equipment", "power-armor")
data_util.remove_prerequisite("energy-shield-mk2-equipment", "military-4")
data_util.remove_prerequisite("energy-shield-mk2-equipment", "electromagnetic-science-pack")
data_util.remove_prerequisite("big-mining-drill", "electric-mining-drill")
data_util.remove_prerequisite("health", "military-science-pack")
data_util.remove_prerequisite("research-productivity", "promethium-science-pack")
data_util.remove_prerequisite("fish-breeding", "tree-seeding")
data_util.remove_prerequisite("space-science-pack", "kr-singularity-lab")
data_util.remove_prerequisite("kr-advanced-tank", "kr-railgun-turret")
data_util.remove_prerequisite("kr-imersium-processing", "kr-matter-tech-card")
data_util.remove_prerequisite("kr-energy-control-unit", "kr-matter-tech-card")
data_util.remove_prerequisite("worker-robots-speed-7", "kr-advanced-tech-card")

data_util.remove_research_unit_ingredient("energy-shield-mk2-equipment", "electromagnetic-science-pack")
data_util.remove_research_unit_ingredient("kr-advanced-pickaxe", "kr-matter-tech-card")
data_util.remove_research_unit_ingredient("kr-energy-control-unit", "kr-matter-tech-card")
data_util.remove_research_unit_ingredient("kr-advanced-tank", "kr-matter-tech-card")
data_util.remove_research_unit_ingredient("kr-automation", "kr-matter-tech-card")
data_util.remove_research_unit_ingredient("kr-robot-battery-plus", "kr-matter-tech-card")
data_util.remove_research_unit_ingredient("kr-imersium-processing", "kr-matter-tech-card")
data_util.remove_research_unit_ingredient("kr-advanced-tech-card", "kr-matter-tech-card")
data_util.remove_research_unit_ingredient("worker-robots-speed-7", "kr-advanced-tech-card")
data_util.remove_research_unit_ingredient("worker-robots-speed-7", "kr-matter-tech-card")

data_util.add_research_unit_ingredient("research-productivity", "kr-matter-tech-card")
data_util.add_research_unit_ingredient("research-productivity", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("research-productivity", "kr-singularity-tech-card")
data_util.add_research_unit_ingredient("kr-energy-control-unit", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("kr-robot-battery-plus", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("worker-robots-speed-7", "electromagnetic-science-pack")

data_util.add_recipe_unlock("electronics", "kr-electronic-circuit-wood")
data_util.add_recipe_unlock(kr_optimization_tech_card_name, "kr-space-research-data")
data_util.add_recipe_unlock("rocket-fuel", "ammonia-rocket-fuel")
data_util.add_recipe_unlock("steel-processing", "kr-coke-carbon")
data_util.add_recipe_unlock("foundry", "molten-enriched-copper")
data_util.add_recipe_unlock("foundry", "molten-enriched-iron")
data_util.add_recipe_unlock("foundry", "kr-casting-iron-beam")
data_util.add_recipe_unlock("foundry", "kr-casting-steel-beam")
data_util.add_recipe_unlock("foundry", "kr-casting-steel-gear")
data_util.add_recipe_unlock("foundry", "kr-casting-steel-pipe")
data_util.add_recipe_unlock("foundry", "kr-casting-steel-pipe-to-ground")
data_util.add_recipe_unlock("foundry", "kr-refined-concrete-from-molten-iron")
data_util.add_recipe_unlock("foundry", "kr-molten-rare-metals")
data_util.add_recipe_unlock("foundry", "kr-molten-enriched-rare-metals")
data_util.add_recipe_unlock("foundry", "kr-molten-rare-metals-from-lava")
data_util.add_recipe_unlock("foundry", "kr-casting-rare-metals")
data_util.add_recipe_unlock("biochamber", "kr-bio-processing-circuit")
data_util.add_recipe_unlock("bioflux-processing", "kr-spoilage-decomposition")
data_util.add_recipe_unlock("rocket-turret", "kr-rocket-turret")
data_util.add_recipe_unlock("rocket-turret", "kr-explosive-turret-rocket")
data_util.add_recipe_unlock("rocket-turret", "kr-nuclear-turret-rocket")
data_util.add_recipe_unlock("railgun", "kr-railgun-turret")
data_util.add_recipe_unlock("railgun", "kr-basic-railgun-shell")
data_util.add_recipe_unlock("railgun", "kr-explosive-railgun-shell")
data_util.add_recipe_unlock("captivity", "kr-biter-biomass")
data_util.add_recipe_unlock("biochamber", "kr-pentapod-biomass")
data_util.add_recipe_unlock("fusion-reactor", "kr-high-fusion")
data_util.add_recipe_unlock("electromagnetic-science-pack", "kr-electromagnetic-research-data")
data_util.add_recipe_unlock("metallurgic-science-pack", "kr-metallurgic-research-data")
data_util.add_recipe_unlock("agricultural-science-pack", "kr-agricultural-research-data")
data_util.add_recipe_unlock("cryogenic-science-pack", "kr-cryogenic-research-data")
data_util.add_recipe_unlock("promethium-science-pack", "kr-promethium-research-data")
data_util.add_recipe_unlock("cryogenic-plant", "kr-liquid-hydrogen")
data_util.add_recipe_unlock("cryogenic-plant", "kr-liquid-oxygen")

if settings.startup["kr-loaders"].value then
	data_util.add_recipe_unlock("turbo-transport-belt", "kr-advanced-loader")
	data_util.add_recipe_unlock("kr-logistic-5", "kr-superior-loader")
end

data_util.remove_recipe_unlock("rocket-fuel", "kr-rocket-fuel-with-ammonia")
data_util.remove_recipe_unlock("planet-discovery-aquilo", "ammonia-rocket-fuel")
data_util.remove_recipe_unlock("battery-equipment", "kr-big-battery-equipment")
data_util.remove_recipe_unlock("battery-mk2-equipment", "kr-big-battery-mk2-equipment")

data.raw.technology["kr-rocket-turret"].hidden = true
data.raw.technology["kr-rocket-turret"].hidden_in_factoriopedia = true
data.raw.technology["kr-railgun-turret"].hidden = true
data.raw.technology["kr-railgun-turret"].hidden_in_factoriopedia = true
data.raw.technology["kr-logistic-4"] = nil
data.raw.technology["kr-electric-mining-drill-mk3"] = nil
data.raw.technology["kr-power-armor-mk3"] = nil
data.raw.technology["kr-power-armor-mk4"] = nil
data.raw.technology["kr-battery-mk3-equipment"] = nil
data.raw.technology["laser-weapons-damage-16"] = nil
data.raw.technology["laser-weapons-damage-11"] = nil
data.raw.technology["physical-projectile-damage-16"] = nil
data.raw.technology["physical-projectile-damage-11"] = nil
data.raw.technology["refined-flammables-16"] = nil
data.raw.technology["refined-flammables-11"] = nil
data.raw.technology["stronger-explosives-16"] = nil
data.raw.technology["stronger-explosives-11"] = nil
data.raw.technology["artillery-shell-range-3"] = nil
data.raw.technology["artillery-shell-range-5"] = nil
data.raw.technology["artillery-shell-speed-3"] = nil
data.raw.technology["artillery-shell-speed-5"] = nil
data.raw.technology["follower-robot-count-9"] = nil
data.raw.technology["follower-robot-count-6"] = nil
data.raw.technology["worker-robots-speed-9"] = nil

data.raw.technology["follower-robot-count-5"].max_level = "infinite"
data.raw.technology["worker-robots-speed-7"].max_level = "infinite"
data.raw.technology["laser-weapons-damage-7"].max_level = "infinite"
data.raw.technology["stronger-explosives-7"].max_level = "infinite"
data.raw.technology["refined-flammables-7"].max_level = "infinite"
data.raw.technology["physical-projectile-damage-7"].max_level = "infinite"
data.raw.technology["artillery-shell-range-1"].max_level = "infinite"
data.raw.technology["artillery-shell-speed-1"].max_level = "infinite"

data.raw.technology["follower-robot-count-5"].unit.count_formula = "1000*(L-4)"
data.raw.technology["worker-robots-speed-7"].unit.count_formula = "2^(L-6)*1000"
data.raw.technology["laser-weapons-damage-7"].unit.count_formula = "2^(L-7)*1000"
data.raw.technology["stronger-explosives-7"].unit.count_formula = "2^(L-7)*1000"
data.raw.technology["refined-flammables-7"].unit.count_formula = "2^(L-7)*1000"
data.raw.technology["physical-projectile-damage-7"].unit.count_formula = "2^(L-7)*1000"
data.raw.technology["artillery-shell-range-1"].unit.count_formula = "2^(L-1)*1000"
data.raw.technology["artillery-shell-speed-1"].unit.count_formula = "2^(L-1)*1000"

-- if has mod,set nil after compatibility handled
if not mods["Age-of-Production"] and not mods["lignumis"] then
	data.raw.technology["tree-seeding"].hidden = true
	data.raw.technology["tree-seeding"].hidden_in_factoriopedia = true
end

data.raw.technology["steel-plate-productivity"].max_level = 5
data.raw.technology["mining-productivity-3"].max_level = 5

function generate_upgrade(previous, new_name, new_science_pack, max)
	local previous = data.raw.technology[previous]
	local next = table.deepcopy(previous)
	next.name = new_name
	next.max_level = max
	next.prerequisites = { previous.name, new_science_pack }
	data:extend({ next })
	data_util.add_research_unit_ingredient(next.name, new_science_pack)
end

generate_upgrade("steel-plate-productivity", "steel-plate-productivity-6", kr_optimization_tech_card_name, "infinite")
if not mods["planet_erimos_prime"] then
	generate_upgrade("mining-productivity-3", "mining-productivity-6", kr_optimization_tech_card_name, "infinite")
end
data_util.add_research_unit_ingredient("military", "automation-science-pack")
data_util.add_research_unit_ingredient("stone-wall", "automation-science-pack")

data_util.add_research_unit_ingredient("plastic-bar-productivity", kr_optimization_tech_card_name)
data_util.add_research_unit_ingredient("rocket-fuel-productivity", kr_optimization_tech_card_name)
data_util.add_research_unit_ingredient("low-density-structure-productivity", kr_optimization_tech_card_name)
data_util.add_research_unit_ingredient("scrap-recycling-productivity", kr_optimization_tech_card_name)
data_util.add_research_unit_ingredient("processing-unit-productivity", kr_optimization_tech_card_name)
data_util.add_research_unit_ingredient("rocket-part-productivity", kr_optimization_tech_card_name)
data_util.add_research_unit_ingredient("health", kr_optimization_tech_card_name)

data_util.add_research_unit_ingredient("planet-discovery-aquilo", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("legendary-quality", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("quantum-processor", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("foundation", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("captive-biter-spawner", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("railgun", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("fusion-reactor", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("fusion-reactor-equipment", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("rocket-part-productivity", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("railgun-damage-1", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("railgun-shooting-speed-1", "kr-advanced-tech-card")

data_util.add_research_unit_ingredient("promethium-science-pack", "kr-advanced-tech-card")
data_util.add_research_unit_ingredient("promethium-science-pack", "kr-matter-tech-card")
data_util.add_research_unit_ingredient("promethium-science-pack", "kr-singularity-tech-card")

data.raw.technology["promethium-science-pack"].unit.count = 10000

data_util.set_icons(
	data.raw.technology["turbo-transport-belt"],
	util.technology_icon_constant_mining("__Krastorio2Assets__/technologies/logistics-4.png")
)

data.raw.technology["electromagnetic-science-pack"].localised_name = { "item-name.kr-electromagnetic-tech-card" }
data.raw.technology["metallurgic-science-pack"].localised_name = { "item-name.kr-metallurgic-tech-card" }
data.raw.technology["agricultural-science-pack"].localised_name = { "item-name.kr-agricultural-tech-card" }
data.raw.technology["cryogenic-science-pack"].localised_name = { "item-name.kr-cryogenic-tech-card" }
data.raw.technology["promethium-science-pack"].localised_name = { "item-name.kr-promethium-tech-card" }

table.insert(
	data.raw["technology"]["processing-unit-productivity"].effects,
	{ type = "change-recipe-productivity", recipe = "kr-bio-processing-circuit", change = 0.1 }
)
table.insert(
	data.raw["technology"]["rocket-fuel-productivity"].effects,
	{ type = "change-recipe-productivity", recipe = "kr-rocket-fuel-with-hydrogen-chloride", change = 0.1 }
)
-- stylua: ignore start
data_util.set_icon(data.raw.technology["metallurgic-science-pack"],"__k2so-assets__/technologies/metallurgy-tech-card.png",256)
data_util.set_icon(data.raw.technology["electromagnetic-science-pack"],"__k2so-assets__/technologies/electromagnetic-tech-card.png",256)
data_util.set_icon(data.raw.technology["agricultural-science-pack"],  "__k2so-assets__/technologies/agricultural-tech-card.png",256)
data_util.set_icon(data.raw.technology["cryogenic-science-pack"],  "__k2so-assets__/technologies/cryogenic-tech-card.png",256)
data_util.set_icon(data.raw.technology["promethium-science-pack"],"__k2so-assets__/technologies/promethium-tech-card.png",256)
-- stylua: ignore end
