data:extend({
  {
    type = "recipe",
    name = "kr-coke",
    enabled = false,
    category = "smelting",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "coal", amount = 6 },
      { type = "item", name = "wood", amount = 6 },
    },
    results = {
      { type = "item", name = "kr-coke", amount = 6 },
    },
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "kr-coke-carbon",
    enabled = false,
    category = "smelting",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "carbon", amount = 6 },
      { type = "item", name = "wood", amount = 6 },
    },
    results = {
      { type = "item", name = "kr-coke", amount = 6 },
    },
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "kr-copper-plate-from-enriched-copper",
    icons = {
      { icon = "__Krastorio2Assets__/icons/items/copper-plate.png" },
      {
        icon = "__Krastorio2Assets__/icons/items/enriched-copper.png",
        scale = 0.22,
        shift = { -8, -8 },
      },
    },
    order = "c[copper-plate]-b[enriched-copper-plate]",
    enabled = false,
    category = "smelting",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "kr-enriched-copper", amount = 5 },
    },
    results = {
      { type = "item", name = "copper-plate", amount = 5 },
    },
    allow_productivity = true,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "kr-iron-plate-from-enriched-iron",
    icons = {
      { icon = "__Krastorio2Assets__/icons/items/iron-plate.png" },
      {
        icon = "__Krastorio2Assets__/icons/items/enriched-iron.png",
        scale = 0.22,
        shift = { -8, -8 },
      },
    },
    order = "b[iron-plate]-b[enriched-iron-plate]",
    enabled = false,
    category = "smelting",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "kr-enriched-iron", amount = 5 },
    },
    results = {
      { type = "item", name = "iron-plate", amount = 5 },
    },
    allow_productivity = true,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "kr-molten-enriched-rare-metals",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "a[melting]-f[molten-rare-metals]",
    icon = "__Krastorio2-spaced-out__/graphics/icons/melting-enriched-rare-metals.png",
    enabled = false,
    ingredients = {
      {type = "item", name = "calcite", amount = 2, fluidbox_multiplier = 10},
      {type = "item", name = "kr-enriched-rare-metals", amount = 40, fluidbox_multiplier = 10},
    },
    energy_required = 24,
    allow_decomposition = false,
    results = {
      {type = "fluid", name = "kr-molten-rare-metals", amount = 600},
    },
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "kr-glass",
    enabled = false,
    category = "smelting",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "kr-sand", amount = 16 },
    },
    results = {
      { type = "item", name = "kr-glass", amount = 8 },
    },
    allow_productivity = true,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "kr-imersium-plate",
    enabled = false,
    category = "smelting",
    energy_required = 32,
    ingredients = {
      { type = "item", name = "kr-imersite-powder", amount = 9 },
      { type = "item", name = "kr-rare-metals", amount = 6 },
    },
    results = {
      { type = "item", name = "kr-imersium-plate", amount = 3 },
    },
    allow_productivity = true,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "kr-rare-metals",
    icons = {
      { icon = "__Krastorio2Assets__/icons/items/rare-metals.png" },
      {
        icon = "__Krastorio2Assets__/icons/items/rare-metal-ore.png",
        scale = 0.22,
        shift = { -8, -8 },
      },
    },
    subgroup = "raw-material",
    enabled = true,
    category = "smelting",
    energy_required = 3.2,
    ingredients = {
      { type = "item", name = "kr-rare-metal-ore", amount = 2 },
    },
    results = {
      { type = "item", name = "kr-rare-metals", amount = 1 },
    },
    allow_productivity = true,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "kr-rare-metals-from-enriched-rare-metals",
    icons = {
      { icon = "__Krastorio2Assets__/icons/items/rare-metals.png" },
      {
        icon = "__Krastorio2Assets__/icons/items/enriched-rare-metals.png",
        scale = 0.22,
        shift = { -8, -8 },
      },
    },
    subgroup = "raw-material",
    order = "c[rare-metals]-b[enriched-rare-metals]",
    enabled = false,
    category = "smelting",
    energy_required = 3.2,
    ingredients = {
      { type = "item", name = "kr-enriched-rare-metals", amount = 1 },
    },
    results = {
      { type = "item", name = "kr-rare-metals", amount = 1 },
    },
    allow_productivity = true,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "kr-silicon",
    enabled = false,
    category = "smelting",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "kr-quartz", amount = 18 },
    },
    results = {
      { type = "item", name = "kr-silicon", amount = 9 },
    },
    allow_productivity = true,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "molten-enriched-copper",
    icon = "__Krastorio2-spaced-out__/graphics/icons/melting-enriched-copper.png",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "a[melting]-e[molten-copper]",
    auto_recycle = false,
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "kr-enriched-copper", amount = 40},
      {type = "item", name = "calcite", amount = 1},
    },
    energy_required = 24,
    results =
    {
      {type = "fluid", name = "molten-copper", amount = 600},
    },
    allow_productivity = true,
    hide_from_signal_gui = false,
    main_product =  "molten-copper"
  },
  {
    type = "recipe",
    name = "molten-enriched-iron",
    icon = "__Krastorio2-spaced-out__/graphics/icons/melting-enriched-iron.png",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "a[melting]-d[molten-iron]",
    auto_recycle = false,
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "kr-enriched-iron", amount = 40},
      {type = "item", name = "calcite", amount = 1},
    },
    energy_required = 24,
    results =
    {
      {type = "fluid", name = "molten-iron", amount = 600},
    },
    allow_productivity = true,
    hide_from_signal_gui = false,
    main_product =  "molten-iron"
  },
  {
    type = "recipe",
    name = "kr-casting-iron-beam",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "b[casting]-e[casting-iron-beam]",
    localised_name = {"", {"recipe-name.casting"}, " ", {"item-name.kr-iron-beam"} },
    icons = {
      { icon = "__Krastorio2Assets__/icons/items/iron-beam.png" },
      { icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.33, shift = { 8, -8 }, },
    },
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 20, fluidbox_multiplier = 10},
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "kr-iron-beam", amount = 1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "kr-casting-steel-beam",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "b[casting]-e[casting-steel-beam]",
    localised_name = {"", {"recipe-name.casting"}, " ", {"item-name.kr-steel-beam"} },
    icons = {
      { icon = "__Krastorio2Assets__/icons/items/steel-beam.png" },
      { icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.33, shift = { 8, -8 }, },
    },
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 40, fluidbox_multiplier = 10},
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "kr-steel-beam", amount = 1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "kr-casting-steel-gear",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "b[casting]-d[casting-steel-gear]",
    localised_name = {"", {"recipe-name.casting"}, " ", {"item-name.kr-steel-gear-wheel"} },
    icons = {
      { icon = "__Krastorio2Assets__/icons/items/steel-gear-wheel.png" },
      { icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.33, shift = { 8, -8 }, },
    },
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 20, fluidbox_multiplier = 10},
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "kr-steel-gear-wheel", amount = 1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "kr-casting-steel-pipe",
    category = "metallurgy",
    subgroup = "energy-pipe-distribution",
    order = "b[casting]-f[steel-pipe]",
       localised_name = {"", {"recipe-name.casting"}, " ", {"entity-name.kr-steel-pipe"} },
    icons = {
      { icon = "__Krastorio2Assets__/icons/entities/steel-pipe.png", scale = 0.5, shift = { -8, 8 }, },
      { icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.5, shift = { 8, -8 }, },
    },
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 20, fluidbox_multiplier = 10},
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "kr-steel-pipe", amount = 1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "kr-casting-steel-pipe-to-ground",
    category = "metallurgy",
    subgroup = "energy-pipe-distribution",
    order = "b[casting]-g[steel-pipe-to-ground.png]",
    localised_name = {"", {"recipe-name.casting"}, " ", {"entity-name.kr-steel-pipe-to-ground"} },
    icons = {
      { icon = "__Krastorio2Assets__/icons/entities/steel-pipe-to-ground.png", scale = 0.5, shift = { -8, 8 }, },
      { icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.5, shift = { 8, -8 }, },
    },
    enabled = false,
    ingredients =
    {
      {type = "item", name = "kr-steel-pipe", amount = 10, fluidbox_multiplier = 10},
      {type = "fluid", name = "molten-iron", amount = 100, fluidbox_multiplier = 10},
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "kr-steel-pipe-to-ground", amount = 2}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "kr-molten-rare-metals-from-lava",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "a[melting]-a[lava-c]",
    icon = "__Krastorio2-spaced-out__/graphics/icons/molten-rare-metals-from-lava.png",
    enabled = false,
    ingredients = {
      {type = "item", name = "calcite", amount = 2, fluidbox_multiplier = 10},
      {type = "fluid", name = "lava", amount = 500, fluidbox_multiplier = 10},
      {type = "fluid", name = "kr-hydrogen-chloride", amount = 10, fluidbox_multiplier = 10},
    },
    energy_required = 16,
    allow_decomposition = false,
    results = {
      {type = "fluid", name = "kr-molten-rare-metals", amount = 100},
      {type = "fluid", name = "molten-iron", amount = 20},
    },
    allow_productivity = true,
    main_product = "kr-molten-rare-metals"
  },
  {
    type = "recipe",
    name = "kr-molten-rare-metals",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "a[melting]-c[molten-rare-metals]",
    icon = "__Krastorio2-spaced-out__/graphics/icons/melting-rare-metals.png",
    enabled = false,
    ingredients = {
      {type = "item", name = "calcite", amount = 2, fluidbox_multiplier = 10},
      {type = "item", name = "kr-rare-metal-ore", amount = 50, fluidbox_multiplier = 10},
    },
    energy_required = 32,
    allow_decomposition = false,
    results = {
      {type = "fluid", name = "kr-molten-rare-metals", amount = 300},
    },
    allow_productivity = true,
    always_show_products = true
  },
  {
    type = "recipe",
    name = "kr-casting-rare-metals",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "b[casting]-ca[casting-molten-rare-metals]",
    icons = {
      {icon = "__Krastorio2Assets__/icons/items/rare-metals.png",},
      {icon = "__Krastorio2-spaced-out__/graphics/icons/molten-rare-metals.png", scale = 0.35, shift = { 8, -8 }, }, 
    },
    enabled = false,
    ingredients = {
      {type = "fluid", name = "kr-molten-rare-metals", amount = 10, fluidbox_multiplier = 10},
      {type = "fluid", name = "water", amount = 10, fluidbox_multiplier = 10},
    },
    energy_required = 1.6,
    allow_decomposition = false,
    results = {
      {type = "item", name = "kr-rare-metals", amount = 1 },
      {type = "fluid", name = "kr-dirty-water", amount = 5, fluidbox_multiplier = 10, ignored_by_productivity = 5 },
    },
    allow_productivity = true,
    main_product = "kr-rare-metals",
  }
})
