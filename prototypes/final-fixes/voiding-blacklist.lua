--- @param Item Item.Prototype.String
function blacklist(Item)
	--recipe = data.raw.recipe["kr-burn-" .. Item]
	if data.raw.recipe["kr-burn-" .. Item] then
		for n, effects in pairs(data.raw.technology["kr-fluid-excess-handling"].effects) do
			if effects.recipe == "kr-burn-" .. Item then
				table.remove(data.raw.technology["kr-fluid-excess-handling"].effects, n)
			end
		end
		data.raw.recipe["kr-burn-" .. Item] = nil
	end
	if data.raw.recipe["kr-crush-" .. Item] then
		data.raw.recipe["kr-crush-" .. Item] = nil
	end
end

-- Crushing
blacklist("biter-egg")
blacklist("pentapod-egg")

-- Duplicates
blacklist("oxygen")
blacklist("hydrogen")
blacklist("chlorine")
blacklist("ammonia")

-- Molten metals
blacklist("lava")
blacklist("kr-molten-rare-metals")
blacklist("molten-copper")
blacklist("molten-iron")
blacklist("molten-salt")
blacklist("molten-aluminum")
blacklist("holmium-solution")

-- Muluna
blacklist("muluna-heat")
blacklist("raw-data")
blacklist("muluna-astronomical-data")
