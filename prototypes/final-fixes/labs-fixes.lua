--sync all labs inputs
data.raw.lab["biolab"].inputs = data.raw.lab["lab"].inputs
data.raw.lab["kr-advanced-lab"].inputs = data.raw.lab["lab"].inputs
data.raw.lab["kr-singularity-lab"].inputs = data.raw.lab["lab"].inputs

--make sure 24 science pack can be displayed
local size3 = {
	{
		inventory_index = defines.inventory.lab_modules,
		shift = { 0, 0.9 },
	},
	{
		inventory_index = defines.inventory.lab_input,
		shift = { 0, -1 },
		max_icons_per_row = 6,
		separation_multiplier = 1 / 1.1,
		scale = 0.5,
	},
}
local size5 = {
	{
		inventory_index = defines.inventory.lab_modules,
		shift = { 0, 1.6 },
	},
	{
		inventory_index = defines.inventory.lab_input,
		shift = { 0, -0.3 },
		max_icons_per_row = 6,
		separation_multiplier = 1 / 1.1,
		scale = 0.5,
	},
}
local size8 = {
	{
		inventory_index = defines.inventory.lab_modules,
		shift = { 0, 1.6 },
	},
	{
		inventory_index = defines.inventory.lab_input,
		shift = { 0, -1.8 },
		max_icons_per_row = 6,
		separation_multiplier = 1 / 1.1,
		scale = 1.0,
	},
}
--In case there are more than 24 packs available. Should be ok for less than 60 packs
if #data.raw.lab["lab"].inputs > 24 then
	local size3 = {
		{
			inventory_index = defines.inventory.lab_modules,
			shift = { 0, 0.9 },
		},
		{
			inventory_index = defines.inventory.lab_input,
			shift = { 0, -1.5 },
			max_icons_per_row = 10,
			separation_multiplier = 1 / 1.1,
			scale = 0.4,
		},
	}
	local size5 = {
		{
			inventory_index = defines.inventory.lab_modules,
			shift = { 0, 1.6 },
		},
		{
			inventory_index = defines.inventory.lab_input,
			shift = { 0, -1.3 },
			max_icons_per_row = 10,
			separation_multiplier = 1 / 1.1,
			scale = 0.5,
		},
	}
	local size8 = {
		{
			inventory_index = defines.inventory.lab_modules,
			shift = { 0, 1.6 },
		},
		{
			inventory_index = defines.inventory.lab_input,
			shift = { 0, -2.7 },
			max_icons_per_row = 10,
			separation_multiplier = 1 / 1.1,
			scale = 0.75,
		},
	}
end

data.raw.lab["lab"].icons_positioning = size3
data.raw.lab["kr-advanced-lab"].icons_positioning = size3
data.raw.lab["biolab"].icons_positioning = size5
data.raw.lab["kr-singularity-lab"].icons_positioning = size8
