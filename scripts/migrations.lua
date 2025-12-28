local flib_migration = require("__flib__.migration")
local biter_virus = require("scripts.biter-virus")
local planetary_teleporter = require("scripts.planetary-teleporter")

local function ensure_turret_force()
	if not game.forces["kr-internal-turrets"] then
		game.create_force("kr-internal-turrets")
	end
end

local migrations = {}

migrations.on_init = ensure_turret_force

function migrations.on_configuration_changed(e)
	if flib_migration.on_config_changed(e, migrations.versions) then
		ensure_turret_force()
	end
end

migrations.events = {
	[defines.events.on_technology_effects_reset] = function(e)
		if game.finished or game.finished_but_continuing then
			e.force.technologies["kr-logo"].enabled = true
		end
	end,
}

return migrations
