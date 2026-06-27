if data.raw["planet"]["gleba"].map_gen_settings then
	data.raw["planet"]["gleba"].map_gen_settings.autoplace_controls["gleba_stone"] =
		{ size = 3, frequency = 1.5, richness = 2 }
end

data.raw["autoplace-control"]["kr-imersite"].order = "a-f1[imersite]"
data.raw["autoplace-control"]["kr-rare-metal-ore"].order = "a-f2[kr-rare-metals]"
data.raw["autoplace-control"]["kr-mineral-water"].order = "a-f3[mineral-water]"
