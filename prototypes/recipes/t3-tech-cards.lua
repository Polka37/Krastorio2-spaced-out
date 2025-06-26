data:extend({
  {
    type = "recipe",
    name = "kr-advanced-tech-card",
    enabled = false,
    category = "kr-tech-cards",
    energy_required = 20,
    ingredients = {
      { type = "item", name = "kr-blank-tech-card", amount = 5 },
      { type = "item", name = "kr-imersium-gear-wheel", amount = 20 },
      { type = "item", name = "kr-lithium-sulfur-battery", amount = 10 },
      { type = "item", name = "electric-engine-unit", amount = 5 },
    },
    results = {
      { type = "item", name = "kr-advanced-tech-card", amount = 5 },
    },
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "kr-matter-research-data",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "kr-imersite-crystal", amount = 5 },
      { type = "item", name = "kr-rare-metals", amount = 5 },
      { type = "item", name = "kr-lithium", amount = 5 },
      { type = "item", name = "plastic-bar", amount = 5 },
    },
    results = {
      { type = "item", name = "kr-matter-research-data", amount = 5 },
    },
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "kr-matter-tech-card",
    enabled = false,
    category = "kr-tech-cards",
    energy_required = 20,
    ingredients = {
      { type = "item", name = "kr-blank-tech-card", amount = 5 },
      { type = "item", name = "kr-matter-research-data", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = {
      { type = "item", name = "kr-matter-tech-card", amount = 5 },
    },
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "kr-singularity-tech-card",
    enabled = false,
    category = "kr-tech-cards",
    energy_required = 20,
    ingredients = {
      { type = "item", name = "kr-blank-tech-card", amount = 5 },
      { type = "item", name = "kr-charged-matter-stabilizer", amount = 5 },
      { type = "item", name = "kr-ai-core", amount = 5 },
      { type = "item", name = "biter-egg", amount = 1 },
    },
    results = {
      { type = "item", name = "kr-singularity-tech-card", amount = 5 },
    },
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = kr_optimization_tech_card_name,
    enabled = false,
    category = "kr-tech-cards",
    energy_required = 20,
    ingredients = {
      { type = "item", name = "kr-blank-tech-card", amount = 5 },
      { type = "item", name = "kr-space-research-data", amount = 5 },
    },
    results = {
      { type = "item", name = kr_optimization_tech_card_name, amount = 5 },
    },
    allow_productivity = true,
  },
    {
    type = "recipe",
    name = "kr-space-research-data",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "carbon", amount = 1 },
      { type = "item", name = "ice", amount = 1 },
      { type = "item", name = "iron-plate", amount = 2 },
    },
       surface_conditions =
    {
      {
        property = "gravity",
        min = 0,
        max = 0
      }
    },
    results = {
      { type = "item", name = "kr-space-research-data", amount = 5 },
    },
    allow_productivity = true,
    main_product = "kr-space-research-data"
  },
})
