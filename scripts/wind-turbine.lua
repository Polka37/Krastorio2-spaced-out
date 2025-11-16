local flib_position = require("__flib__.position")

--- @param turbine LuaEntity
local function build_collision(turbine)
  for _, existing_collision in
    pairs(turbine.surface.find_entities_filtered({ name = "kr-wind-turbine-collision", position = turbine.position }))
  do
    if flib_position.eq(existing_collision.position, turbine.position) then
      return
    end
  end

  turbine.surface.create_entity({
    name = "kr-wind-turbine-collision",
    position = turbine.position,
    force = turbine.force,
    create_build_effect_smoke = false,
  })
end

--- @param turbine LuaEntity
local function destroy_collision(turbine)
  for _, collision in
    pairs(turbine.surface.find_entities_filtered({ name = "kr-wind-turbine-collision", position = turbine.position }))
  do
    if flib_position.eq(collision.position, turbine.position) then
      collision.destroy()
    end
  end
end

--- @param e EntityBuiltEvent
local function on_entity_built(e)
  local entity = e.entity or e.destination
  if not entity or not entity.valid or entity.name ~= "kr-wind-turbine" then
    return
  end

  build_collision(entity)
end

--- @param e EntityDestroyedEvent
local function on_entity_destroyed(e)
  local entity = e.entity
  if not entity or not entity.valid or entity.name ~= "kr-wind-turbine" then
    return
  end

  destroy_collision(entity)
end

--- @class wind_turbine_handler: event_handler
local wind_turbine_handler = {}

function wind_turbine_handler.on_configuration_changed()
  for _, surface in pairs(game.surfaces) do
    for _, entity in
      pairs(surface.find_entities_filtered({ name = { "kr-wind-turbine", "kr-wind-turbine-collision" } }))
    do
      if entity.name == "kr-wind-turbine" then
        build_collision(entity)
      elseif entity.name == "kr-wind-turbine-collision" then
        local existing_turbine = entity.surface.find_entity("kr-wind-turbine", entity.position)
        if not existing_turbine or not flib_position.eq(existing_turbine.position, entity.position) then
          entity.destroy()
        end
      end
    end
  end
end

wind_turbine_handler.events = {
  [defines.events.on_built_entity] = on_entity_built,
  [defines.events.on_entity_cloned] = on_entity_built,
  [defines.events.on_entity_died] = on_entity_destroyed,
  [defines.events.on_player_mined_entity] = on_entity_destroyed,
  [defines.events.on_robot_built_entity] = on_entity_built,
  [defines.events.on_robot_mined_entity] = on_entity_destroyed,
  [defines.events.on_space_platform_built_entity] = on_entity_built,
  [defines.events.on_space_platform_mined_entity] = on_entity_destroyed,
  [defines.events.script_raised_built] = on_entity_built,
  [defines.events.script_raised_destroy] = on_entity_destroyed,
  [defines.events.script_raised_revive] = on_entity_built,
}

return wind_turbine_handler
