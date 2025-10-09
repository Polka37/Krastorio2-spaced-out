data:extend({
  {
    type = "technology",
    name = "kr-matter-cube",
    icon = "__Krastorio2Assets__/technologies/matter-cube.png",
    icon_size = 256,
    order = "g-f-z",
    unit = {
      time = 60,
      count = 5000,
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "kr-singularity-tech-card" },
    effects = {}, -- Populated by matter util
  },
  {
    type = "technology",
    name = "kr-planetary-teleporter",
    icon = "__Krastorio2Assets__/technologies/planetary-teleporter.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 2000,
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "effect-transmission", "kr-singularity-tech-card" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-planetary-teleporter" },
      { type = "unlock-recipe", recipe = "kr-teleportation-gps-module" },
    },
  },
  {
    type = "technology",
    name = "kr-singularity-beacon",
    icon = "__Krastorio2Assets__/technologies/singularity-beacon.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 5000,
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "effect-transmission", "kr-singularity-tech-card" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-singularity-beacon" },
    },
  },
  {
    type = "technology",
    name = "kr-logistic-5",
    localised_description = { "technology-description.logistics" },
    icon = "__Krastorio2Assets__/technologies/logistics-5.png",
    icon_size = 256,
    unit = {
      time = 45,
      count = 2000,
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "turbo-transport-belt", "kr-singularity-tech-card" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-superior-splitter" },
      { type = "unlock-recipe", recipe = "kr-superior-transport-belt" },
      { type = "unlock-recipe", recipe = "kr-superior-underground-belt" },
    },
  },
  {
    type = "technology",
    name = "kr-superior-inserters",
    icon = "__Krastorio2Assets__/technologies/superior-inserters.png",
    icon_size = 256,
    unit = {
      time = 45,
      count = 2000,
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "stack-inserter", "kr-singularity-tech-card" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-superior-inserter" },
      { type = "unlock-recipe", recipe = "kr-superior-long-inserter" },
    },
  },
})
