for _, asteroid in pairs(data.raw.asteroid) do
	local resistances = asteroid.resistances
	table.insert(resistances, { type = "kr-radioactive", percent = 100 })
	for _, resist in pairs(resistances) do
		if resist.type == "explosion" then
			table.insert(resistances, { type = "kr-explosion", percent = resist.percent })
		end
	end
end
