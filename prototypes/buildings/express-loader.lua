if not settings.startup["kr-loaders"].value then
  return
end

local graphics = require("prototypes.buildings.loader-graphics")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "recipe",
    name = "kr-express-loader",
    category = "pressing",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "express-transport-belt", amount = 1 },
      { type = "item", name = "kr-fast-loader", amount = 2 },
      { type = "item", name = "kr-steel-gear-wheel", amount = 10 },
      { type = "fluid", name = "lubricant", amount = 40 },
    },
    results = { { type = "item", name = "kr-express-loader", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-express-loader",
    icon = "__Krastorio2Assets__/icons/entities/express-loader.png",
    subgroup = "belt",
    order = "d[loader]-a3[kr-express-loader]",
    place_result = "kr-express-loader",
    stack_size = 50,
    weight = 20*kg,
  },
  {
    type = "loader-1x1",
    name = "kr-express-loader",
    icon = "__Krastorio2Assets__/icons/entities/express-loader.png",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.25, result = "kr-express-loader" },
    placeable_by = { item = "kr-express-loader", count = 1 },
    fast_replaceable_group = "transport-belt",
    next_upgrade = "kr-advanced-loader",
    collision_box = { { -0.4, -0.45 }, { 0.4, 0.45 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    speed = data.raw["transport-belt"]["express-transport-belt"].speed,
    max_belt_stack_size = 4,
    adjustable_belt_stack_size = true,
    container_distance = 0.75,
    filter_count = 5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "500W",
    },
    energy_per_item = "9kJ",
    max_health = 300,
    heating_energy = "50kW",
    corpse = "small-remnants",
    resistances = { { type = "fire", percent = 90 } },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    belt_animation_set = data.raw["transport-belt"]["express-transport-belt"].belt_animation_set,
    animation_speed_coefficient = 32,
    icon_draw_specification = {scale = 0.7},
    structure = graphics.structure({ 90, 190, 220 }),
    structure_render_layer = graphics.structure_render_layer,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
