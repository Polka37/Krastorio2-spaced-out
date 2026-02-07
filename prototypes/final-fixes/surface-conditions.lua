--make sure rubia wind turbine uses K2SO default wind speed
if mods["rubia"] then
	data.raw["solar-panel"]["rubia-wind-turbine"].performance_at_day = 15 / 300
	data.raw["solar-panel"]["rubia-wind-turbine"].performance_at_night = 15 / 300
	data.raw["surface-property"]["rubia-wind-speed"].default_value = 15
end
