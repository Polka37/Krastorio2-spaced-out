-- Unlock rare metal and mineral water technologies if the player has already mined them.
for _, force in pairs(game.forces) do
	for _, surface in pairs(game.surfaces) do
		local item_stats = force.get_item_production_statistics(surface)
		if item_stats.get_output_count("kr-rare-metal-ore") > 0 then
			force.technologies["kr-rare-metal-mining"].researched = true
			force.technologies["kr-rare-metal-processing"].researched = true
			break
		end
	end
end

for _, force in pairs(game.forces) do
	for _, surface in pairs(game.surfaces) do
		local fluid_stats = force.get_fluid_production_statistics(surface)
		if fluid_stats.get_output_count("kr-mineral-water") > 0 then
			force.technologies["kr-mineral-water-gathering"].researched = true
			break
		end
	end
end
