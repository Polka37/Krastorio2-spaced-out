local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "recipe",
    name = "kr-crusher",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "kr-iron-beam", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
      { type = "item", name = "copper-cable", amount = 6 },
      { type = "item", name = "kr-automation-core", amount = 2 },
    },
    results = { { type = "item", name = "kr-crusher", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-crusher",
    icon = "__Krastorio2Assets__/icons/entities/crusher.png",
    subgroup = "production-machine",
    order = "d-h1[crusher]",
    place_result = "kr-crusher",
    stack_size = 50,
    weight = 40*kg,
  },
  {
    type = "furnace",
    name = "kr-crusher",
    icon = "__Krastorio2Assets__/icons/entities/crusher.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { hardness = 1, mining_time = 1, result = "kr-crusher" },
    max_health = 750,
    heating_energy = "100kW",
    corpse = "kr-big-random-pipes-remnants",
    dying_explosion = "big-explosion",
    resistances = {
      { type = "physical", percent = 50 },
      { type = "fire", percent = 70 },
      { type = "impact", percent = 70 },
    },
    collision_box = { { -3.25, -3.25 }, { 3.25, 3.25 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    fast_replaceable_group = "kr-crusher",
    crafting_categories = { "kr-crushing", "kr-void-crushing" },
    crafting_speed = 1,
    source_inventory_size = 1,
    result_inventory_size = 3,
    return_ingredients_on_change = true,
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 20 },
    },
    energy_usage = "225kW",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = { filename = "__Krastorio2Assets__/sounds/buildings/crusher.ogg", volume = 1.25 },
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
    },
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__Krastorio2Assets__/buildings/crusher/crusher.png",
            priority = "high",
            width = 512,
            height = 512,
            frame_count = 30,
            line_length = 6,
            animation_speed = 0.75,
            scale = 0.5,
          },
          {
            filename = "__Krastorio2Assets__/buildings/crusher/crusher-shadow.png",
            priority = "high",
            width = 512,
            height = 512,
            repeat_count = 30,
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      water_reflection = {
        pictures = {
          filename = "__Krastorio2Assets__/buildings/crusher/crusher-reflection.png",
          priority = "extra-high",
          width = 80,
          height = 60,
          shift = util.by_pixel(0, 40),
          variation_count = 1,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = false,
      },
    },
    icon_draw_specification = { scale = 2, shift = { 0, -0.3 } },
    icons_positioning = { { inventory_index = defines.inventory.assembling_machine_modules, shift = { 0, 1.25 } } },

    circuit_wire_max_distance = default_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions.create_vector(
      universal_connector_template, 
      {
        { variation = 27, main_offset = util.by_pixel(96, 93), shadow_offset = util.by_pixel(88, 88), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel(96, 93), shadow_offset = util.by_pixel(88, 88), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel(96, 93), shadow_offset = util.by_pixel(88, 88), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel(96, 93), shadow_offset = util.by_pixel(88, 88), show_shadow = false }
      }
    )
  },
})
