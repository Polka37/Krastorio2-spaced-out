if not mods["maraxsis"] then
	return
end

data.raw.recipe["maraxsis-atmosphere"].category = "kr-atmosphere-condensation"
data.raw.recipe["maraxsis-atmosphere"].energy_required = data.raw.recipe["maraxsis-atmosphere"].energy_required / 2
data.raw.fluid["maraxsis-atmosphere"].localised_description = { "fluid-description.kr-maraxsis-atmosphere" }
