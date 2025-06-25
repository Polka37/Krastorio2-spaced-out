data:extend({
  -- 1.5 GW output, 75% Effieciency
  {
    type = "recipe",
    name = "kr-fusion",
    icon = "__Krastorio2Assets__/icons/recipes/fusion-energy.png",
    subgroup = "intermediate-product",
    order = "z2[fusion]",
    enabled = true,
    category = "kr-nuclear-fusion",
    energy_required = 5, --2.5GW
    ingredients = {
      { type = "fluid", name = "water", amount = 1000 },
      { type = "item", name = "kr-dt-fuel-cell", amount = 1 }, --10GW
    },
    results = {
      { type = "fluid", name = "steam", amount = 10000, temperature = 2015 }, --10GW
      { type = "item", name = "kr-empty-dt-fuel-cell", amount = 1 },
    },
    auto_recycle = false,
  },
  -- 0.5 GW output, 100% Effieciency
  {
    type = "recipe",
    name = "kr-fusion-underdrive",
    icon = "__Krastorio2-spaced-out__/graphics/icons/fusion-underdrive.png",
    subgroup = "intermediate-product",
    order = "z1[fusion]",
    enabled = true,
    category = "kr-nuclear-fusion",
    energy_required = 20, --10GW
    ingredients = {
      { type = "fluid", name = "water", amount = 40000 },
      { type = "item", name = "kr-dt-fuel-cell", amount = 1 }, --10GW
    },
    results = {
      { type = "fluid", name = "steam", amount = 40000, temperature = 1015 }, --20GW
      { type = "item", name = "kr-empty-dt-fuel-cell", amount = 1 },
    },
    auto_recycle = false,
  },
  --2.5 GW output, 50% Effieciency
  {
    type = "recipe",
    name = "kr-fusion-overdrive",
    icon = "__Krastorio2-spaced-out__/graphics/icons/fusion-overdrive.png",
    subgroup = "intermediate-product",
    order = "z3[fusion]",
    enabled = true,
    category = "kr-nuclear-fusion",
    energy_required = 2, --1GW
    ingredients = {
      { type = "fluid", name = "water", amount = 400 },
      { type = "item", name = "kr-dt-fuel-cell", amount = 1 }, --10GW
    },
    results = {
      { type = "fluid", name = "steam", amount = 4000, temperature = 3015 }, --6GW
      { type = "item", name = "kr-empty-dt-fuel-cell", amount = 1 },
    },
    auto_recycle = false,
  },
  --3.5GW output,  87.5% Effieciency
  {
    type = "recipe",
    name = "kr-high-fusion",
    icon = "__Krastorio2-spaced-out__/graphics/icons/high-fusion.png",
    subgroup = "intermediate-product",
    order = "z4[fusion-high]",
    enabled = false,
    category = "kr-nuclear-fusion",
    energy_required = 10, --5GW
    ingredients = {
      { type = "fluid", name = "water", amount = 1000 },
      { type = "item", name = "fusion-power-cell", amount = 1 }, --40GW
    },
    results = {
      { type = "fluid", name = "steam", amount = 20000, temperature = 4015 }, --40GW
    },
    auto_recycle = false,
  }
})
