data.raw["assembling-machine"]["kr-greenhouse"].heating_energy = "1000kW"
data.raw["assembling-machine"]["kr-greenhouse"].surface_conditions = {
	{ property = "pressure", min = 1000, max = 2000 },
}
data.raw["assembling-machine"]["kr-greenhouse"].allowed_effects =
	{ "consumption", "speed", "productivity", "pollution", "quality" }
data.raw["assembling-machine"]["kr-greenhouse"].energy_source.emissions_per_minute = { pollution = -5, spores = 3 }
