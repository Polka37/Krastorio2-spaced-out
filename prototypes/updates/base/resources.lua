if data.raw["planet"]["gleba"].map_gen_settings then
	if not data.raw["planet"]["gleba"].map_gen_settings.autoplace_controls["gleba_stone"] then
		data_util.error("Map gen setting gleba_stone does not exist.")
	else
		data.raw["planet"]["gleba"].map_gen_settings.autoplace_controls["gleba_stone"] =
			{ size = 3, frequency = 1.5, richness = 2 }
	end
end
