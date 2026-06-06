----- @param Item Item.Prototype.String
--function blacklist(Item)
--	--recipe = data.raw.recipe["kr-burn-" .. Item]
--	if data.raw.recipe["kr-burn-" .. Item] then
--		for n, effects in pairs(data.raw.technology["kr-fluid-excess-handling"].effects) do
--			if effects.recipe == "kr-burn-" .. Item then
--				table.remove(data.raw.technology["kr-fluid-excess-handling"].effects, n)
--			end
--		end
--		data.raw.recipe["kr-burn-" .. Item] = nil
--	end
--	if data.raw.recipe["kr-crush-" .. Item] then
--		data.raw.recipe["kr-crush-" .. Item] = nil
--	end
--end
--
---- Crushing
--blacklist("biter-egg")
--blacklist("pentapod-egg")
--
---- Duplicates
--blacklist("oxygen")
--blacklist("hydrogen")
--blacklist("chlorine")
--blacklist("ammonia")
--
---- Molten metals
--blacklist("lava")
--blacklist("kr-molten-rare-metals")
--blacklist("molten-copper")
--blacklist("molten-iron")
--blacklist("molten-salt")
--blacklist("molten-aluminum")
--blacklist("holmium-solution")
--
---- Muluna
--blacklist("muluna-heat")
--blacklist("raw-data")
--blacklist("muluna-astronomical-data")
flare_stack_lib = require("__Krastorio2__.prototypes.libraries.flare-stack")

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

crushing_lib.set_item_excluded(data.raw.item["biter-egg"], true)
crushing_lib.set_item_excluded(data.raw.item["pentapod-egg"], true)
