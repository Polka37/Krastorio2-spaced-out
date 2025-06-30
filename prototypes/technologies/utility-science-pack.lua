data:extend({
  {
    type = "technology",
    name = "kr-advanced-additional-engine-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/advanced-additional-engine-equipment.png"
    ),
    icon_size = 256,
    upgrade = false,
    unit = {
      time = 30,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-advanced-additional-engine-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-advanced-exoskeleton-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/advanced-exoskeleton-equipment.png"
    ),
    icon_size = 256,
    upgrade = false,
    unit = {
      time = 30,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "exoskeleton-equipment", "speed-module-2", "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-advanced-exoskeleton-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-ai-core",
    icon = "__Krastorio2Assets__/technologies/ai-core.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kr-quarry-minerals-extraction", "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-ai-core" },
    },
  },
  {
    type = "technology",
    name = "kr-advanced-radar",
    icon = "__Krastorio2Assets__/technologies/advanced-radar.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "radar", "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-advanced-radar" },
    },
  },
  {
    type = "technology",
    name = "kr-fusion-energy",
    icon = "__Krastorio2Assets__/technologies/fusion-energy.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 1500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kovarex-enrichment-process", "kr-lithium-processing", "nuclear-power", "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-fusion-reactor" },
      { type = "unlock-recipe", recipe = "kr-advanced-steam-turbine" },
      { type = "unlock-recipe", recipe = "kr-heavy-water" },
      { type = "unlock-recipe", recipe = "kr-tritium" },
      { type = "unlock-recipe", recipe = "kr-empty-dt-fuel-cell" },
      { type = "unlock-recipe", recipe = "kr-dt-fuel-cell" },
    },
  },
  {
    type = "technology",
    name = "kr-matter-tech-card",
    icon = "__Krastorio2Assets__/technologies/matter-tech-card.png",
    icon_size = 256,
    essential = true,
    unit = {
      time = 60,
      count = 750,
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "production-science-pack", "utility-science-pack"  },
    effects = {
      { type = "unlock-recipe", recipe = "kr-matter-research-data" },
      { type = "unlock-recipe", recipe = "kr-matter-tech-card" },
    },
  },
  {
    type = "technology",
    name = "kr-military-5",
    localised_description = { "technology-description.military" },
    icon = "__Krastorio2Assets__/technologies/military-5.png",
    icon_size = 256,
    order = "g-d-d",
    unit = {
      time = 45,
      count = 500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = {
      "military-4",
      "kr-lithium-sulfur-battery",
      "kr-quarry-minerals-extraction",
      "personal-laser-defense-equipment",
    },
    effects = {
      { type = "unlock-recipe", recipe = "kr-impulse-rifle" },
      { type = "unlock-recipe", recipe = "kr-impulse-rifle-ammo" },
      { type = "unlock-recipe", recipe = "kr-imersite-rounds-magazine" },
      { type = "unlock-recipe", recipe = "kr-heavy-rocket-launcher" },
      { type = "unlock-recipe", recipe = "kr-heavy-rocket" },
    },
  },
  {
    type = "technology",
    name = "kr-personal-laser-defense-mk2-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/personal-laser-defense-mk2-equipments.png"
    ),
    icon_size = 256,
    order = "g-m",
    unit = {
      count = 350,
      ingredients = {
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
      },
      time = 60,
    },
    prerequisites = { "personal-laser-defense-equipment", "power-armor-mk2", kr_optimization_tech_card_name },
    effects = {
      { type = "unlock-recipe", recipe = "kr-personal-laser-defense-mk2-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-superior-night-vision-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/superior-night-vision-equipment.png"
    ),
    icon_size = 256,
    upgrade = false,
    unit = {
      time = 30,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "night-vision-equipment", "kr-quarry-minerals-extraction", "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-superior-night-vision-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-superior-solar-panel-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/superior-solar-panel-equipment.png"
    ),
    icon_size = 256,
    upgrade = false,
    unit = {
      time = 30,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kr-quarry-minerals-extraction", "solar-panel-equipment", "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-superior-solar-panel-equipment" },
      { type = "unlock-recipe", recipe = "kr-big-superior-solar-panel-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-fusion-reactor-equipment",
    icons = util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/fusion-reactor-equipment.png"),
    upgrade = false,
    unit = {
      time = 60,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "fission-reactor-equipment", "kr-fusion-energy" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-fusion-reactor-equipment" },
    },
  },
})
