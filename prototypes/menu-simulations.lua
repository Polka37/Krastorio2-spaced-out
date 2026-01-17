local menu_sims = data.raw["utility-constants"]["default"].main_menu_simulations

--For testing only
--menu_sims.kr_antimatter_artillery = nil
--menu_sims.kr_matter_outpost = nil
--menu_sims.kr_nuclear_train = nil
--menu_sims.kr_singularity_labs = nil

menu_sims.kr_gleba = {
	checkboard = false,
	save = "__k2so-assets__/menu-simulations/main.zip",
	length = 30 * second,
	init = [[
    local logo = game.surfaces.gleba.find_entities_filtered{name = "kr-logo", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_surface_index = logo.surface_index
    game.simulation.camera_position = {logo.position.x, logo.position.y+10.50}
    game.simulation.camera_zoom = 1
    game.tick_paused = false
  ]],
}

menu_sims.kr_vulcanus = {
	checkboard = false,
	save = "__k2so-assets__/menu-simulations/main.zip",
	length = 30 * second,
	init = [[
    local logo = game.surfaces.vulcanus.find_entities_filtered{name = "kr-logo", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_surface_index = logo.surface_index
    game.simulation.camera_position = {logo.position.x, logo.position.y+10.50}
    game.simulation.camera_zoom = 1
    game.tick_paused = false
  ]],
}

menu_sims.kr_fulgora = {
	checkboard = false,
	save = "__k2so-assets__/menu-simulations/main.zip",
	length = 30 * second,
	init = [[
    local logo = game.surfaces.fulgora.find_entities_filtered{name = "kr-logo", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_surface_index = logo.surface_index
    game.simulation.camera_position = {logo.position.x, logo.position.y+10.50}
    game.simulation.camera_zoom = 1
    game.tick_paused = false
  ]],
}

menu_sims.kr_aquilo = {
	checkboard = false,
	save = "__k2so-assets__/menu-simulations/main.zip",
	length = 30 * second,
	init = [[
    local logo = game.surfaces.aquilo.find_entities_filtered{name = "kr-logo", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_surface_index = logo.surface_index
    game.simulation.camera_position = {logo.position.x, logo.position.y+10.50}
    game.simulation.camera_zoom = 1
    game.tick_paused = false
  ]],
}
