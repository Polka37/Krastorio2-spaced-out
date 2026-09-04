if data.raw["planet"]["gleba"].map_gen_settings then
	if not data.raw["planet"]["gleba"].map_gen_settings.autoplace_controls["gleba_stone"] then
		data_util.error("Map gen setting gleba_stone does not exist.")
	else
		data.raw["planet"]["gleba"].map_gen_settings.autoplace_controls["gleba_stone"] =
			{ size = 3, frequency = 1.5, richness = 2 }
	end
end

data.raw["autoplace-control"]["kr-imersite"].order = "a-f1[imersite]"
data.raw["autoplace-control"]["kr-rare-metal-ore"].order = "a-f2[kr-rare-metals]"
data.raw["autoplace-control"]["kr-mineral-water"].order = "a-f3[mineral-water]"
