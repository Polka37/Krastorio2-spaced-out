for _, asteroid in pairs(data.raw.asteroid) do
	table.insert(asteroid.resistances, { type = "kr-radioactive", percent = 100 })
end
