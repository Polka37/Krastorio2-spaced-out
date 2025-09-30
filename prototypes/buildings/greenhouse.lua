local hit_effects = require("__base__.prototypes.entity.hit-effects")

data:extend({
  {
    type = "recipe",
    name = "kr-greenhouse",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "wood", amount = 20 },
      { type = "item", name = "kr-iron-beam", amount = 10 },
      { type = "item", name = "kr-glass", amount = 20 },
      { type = "item", name = "kr-automation-core", amount = 2 },
    },
    results = { { type = "item", name = "kr-greenhouse", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-greenhouse",
    icon = "__Krastorio2Assets__/icons/entities/greenhouse.png",
    subgroup = "production-machine",
    order = "d-g1[greenhouse]",
    place_result = "kr-greenhouse",
    stack_size = 50,
    weight = 100*kg,
  },
  {
    type = "assembling-machine",
    name = "kr-greenhouse",
    icon = "__Krastorio2Assets__/icons/entities/greenhouse.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { hardness = 1, mining_time = 1, result = "kr-greenhouse" },
    collision_box = { { -3.25, -3.25 }, { 3.25, 3.25 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    fast_replaceable_group = "kr-greenhouse",
    max_health = 500,
    heating_energy = "1000kW",
    surface_conditions = {
      { property = "pressure", min = 1000, max = 2000, }
    },
    corpse = "kr-big-random-pipes-remnants",
    dying_explosion = "big-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = require("prototypes.buildings.pipe-picture"),
        pipe_covers = pipecoverspictures(),
        volume = 2000,
        pipe_connections = {
          { flow_direction = "input-output", direction = defines.direction.north, position = { 0, -3 } },
          { flow_direction = "input-output", direction = defines.direction.west, position = { -3, 0 } },
          { flow_direction = "input-output", direction = defines.direction.east, position = { 3, 0 } },
          { flow_direction = "input-output", direction = defines.direction.south, position = { 0, 3 } },
        },
      },
    },
    crafting_speed = 1,
    crafting_categories = { "kr-growing" },
    ingredient_count = 4,
    return_ingredients_on_change = true,
    module_slots = 3,
    allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality", },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -5, spores = 3 },
    },
    energy_usage = "144.8kW",
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      filename = "__Krastorio2Assets__/sounds/buildings/greenhouse.ogg",
      volume = 0.75,
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
      aggregation = {
        max_count = 3,
        remove = false,
        count_already_playing = true,
      },
    },
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__Krastorio2Assets__/buildings/greenhouse/greenhouse.png",
            priority = "high",
            width = 512,
            height = 512,
            frame_count = 1,
            scale = 0.5,
          },
          {
            filename = "__Krastorio2Assets__/buildings/greenhouse/greenhouse-sh.png",
            priority = "high",
            width = 512,
            height = 512,
            shift = { 0.32, 0 },
            frame_count = 1,
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          draw_as_light = true,
          animation = {
            filename = "__Krastorio2Assets__/buildings/greenhouse/greenhouse-light.png",
            width = 512,
            height = 512,
            frame_count = 1,
            repeat_count = 10,
            scale = 0.5,
            animation_speed = 0.35,
          },
        },
        {
          animation = {
            filename = "__Krastorio2Assets__/buildings/greenhouse/greenhouse-working.png",
            width = 512,
            height = 512,
            frame_count = 10,
            line_length = 5,
            scale = 0.5,
            animation_speed = 0.35,
          },
        },
      },
    },
    icons_positioning = { { inventory_index = defines.inventory.furnace_modules, shift = { 0, 1 } } },

    circuit_wire_max_distance = default_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions.create_vector(
      universal_connector_template, 
      {
        { variation = 27, main_offset = util.by_pixel_hr(208, -168), shadow_offset = util.by_pixel_hr(208, -168), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel_hr(208, -168), shadow_offset = util.by_pixel_hr(208, -168), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel_hr(208, -168), shadow_offset = util.by_pixel_hr(208, -168), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel_hr(208, -168), shadow_offset = util.by_pixel_hr(208, -168), show_shadow = false }
      }
    )
  },
})
