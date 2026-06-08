local flare_stack_lib = require("__Krastorio2__.prototypes.libraries.flare-stack")
local crushing_lib = require("__Krastorio2__.prototypes.libraries.crushing")

flare_stack_lib.add_blacklist("kr-molten-rare-metals")
flare_stack_lib.add_blacklist("kr-molten-rare-metals")
flare_stack_lib.add_blacklist("molten-iron")
flare_stack_lib.add_blacklist("molten-copper")
flare_stack_lib.add_blacklist("molten-salt")
flare_stack_lib.add_blacklist("molten-aluminum")
flare_stack_lib.add_blacklist("holmium-solution")
flare_stack_lib.add_blacklist("lava")
flare_stack_lib.add_blacklist("muluna-heat")
flare_stack_lib.add_blacklist("raw-data")
flare_stack_lib.add_blacklist("muluna-astronomical-data")
--Pre existing fluids without kr- prefix. K2SO handles migrating then on it's own
flare_stack_lib.add_blacklist("oxygen")
flare_stack_lib.add_blacklist("hydrogen")
flare_stack_lib.add_blacklist("chlorine")
flare_stack_lib.add_blacklist("ammonia")

-- Muluna generates cryolab at the end causing crash when trying to make a crushing recipe
if mods["planet-muluna"] then
	data:extend({
		{
			type = "item",
			name = "cryolab",
		},
	})
	crushing_lib.set_item_excluded(data.raw.item["cryolab"], true)
end

crushing_lib.set_item_excluded(data.raw.item["biter-egg"], true)
crushing_lib.set_item_excluded(data.raw.item["pentapod-egg"], true)
