local matter_lib = require("__Krastorio2__.prototypes.libraries.matter")
local data_util = require("data-util")

---@param name String
---@param amount Int
local function edit_matter_recipes(name, amount)
	if data.raw.recipe["kr-matter-to-" .. name] then
		data_util.add_or_replace_ingredient(
			"kr-matter-to-" .. name,
			"kr-matter",
			{ type = "fluid", name = "kr-matter", amount = amount }
		)
	end

	if data.raw.recipe["kr-" .. name .. "-to-matter"] then
		data_util.add_or_replace_product(
			"kr-" .. name .. "-to-matter",
			"kr-matter",
			{ type = "fluid", name = "kr-matter", amount = amount }
		)
	end
end

edit_matter_recipes("kr-rare-metal-ore", 12)
edit_matter_recipes("wood", 1)
edit_matter_recipes("kr-rare-metals", 21)
edit_matter_recipes("kr-quartz", 0.64)

---Update surface conditions
-- stylua: ignore start
data.raw.recipe["kr-matter-to-kr-imersite-powder"].surface_conditions = { { property = "pressure", min = 1000, max = 1000 } }
data.raw.recipe["kr-matter-to-uranium-238"].surface_conditions = { { property = "pressure", min = 1000, max = 1000 } }
data.raw.recipe["kr-matter-to-uranium-ore"].surface_conditions = { { property = "pressure", min = 1000, max = 1000 } }
-- stylua: ignore end

--Space
matter_lib.make_recipes({
	material = { type = "item", name = "ice", amount = 10 },
	matter_count = 1,
	energy_required = 1,
	unlocked_by = "kr-matter-water-processing",
})
matter_lib.make_recipes({
	material = { type = "item", name = "carbon", amount = 10 },
	matter_count = 3.5,
	energy_required = 1,
	unlocked_by = "kr-matter-coal-processing",
})

--Vulcanus
matter_lib.make_recipes({
	material = { type = "item", name = "calcite", amount = 10 },
	matter_count = 20,
	energy_required = 2,
	unlocked_by = "kr-matter-calcite-processing",
})
data.raw.recipe["kr-matter-to-calcite"].surface_conditions = { { property = "pressure", min = 4000, max = 4000 } }

matter_lib.make_recipes({
	material = { type = "item", name = "tungsten-ore", amount = 10 },
	matter_count = 30,
	energy_required = 2,
	unlocked_by = "kr-matter-tungsten-processing",
})
data.raw.recipe["kr-matter-to-tungsten-ore"].surface_conditions = { { property = "pressure", min = 4000, max = 4000 } }

matter_lib.make_deconversion_recipe({
	material = { type = "item", name = "tungsten-carbide", amount = 10 },
	matter_count = 30,
	energy_required = 2,
	needs_stabilizer = true,
	unlocked_by = "kr-matter-tungsten-processing",
})
data.raw.recipe["kr-matter-to-tungsten-carbide"].surface_conditions =
	{ { property = "pressure", min = 4000, max = 4000 } }

matter_lib.make_deconversion_recipe({
	material = { type = "item", name = "tungsten-plate", amount = 10 },
	matter_count = 40,
	energy_required = 2,
	needs_stabilizer = true,
	unlocked_by = "kr-matter-tungsten-processing",
})
data.raw.recipe["kr-matter-to-tungsten-plate"].surface_conditions =
	{ { property = "pressure", min = 4000, max = 4000 } }

--Fulgora
matter_lib.make_recipes({
	material = { type = "item", name = "holmium-ore", amount = 10 },
	matter_count = 30,
	energy_required = 2,
	unlocked_by = "kr-matter-holmium-processing",
})
data.raw.recipe["kr-matter-to-holmium-ore"].surface_conditions = { { property = "magnetic-field", min = 99, max = 99 } }

matter_lib.make_conversion_recipe({
	material = { type = "item", name = "scrap", amount = 10 },
	matter_count = 1,
	energy_required = 0.5,
	unlocked_by = "kr-matter-scrap-processing",
})

matter_lib.make_deconversion_recipe({
	material = { type = "item", name = "holmium-plate", amount = 10 },
	matter_count = 18,
	energy_required = 2,
	needs_stabilizer = true,
	unlocked_by = "kr-matter-holmium-processing",
})
data.raw.recipe["kr-matter-to-holmium-plate"].surface_conditions =
	{ { property = "magnetic-field", min = 99, max = 99 } }

matter_lib.make_deconversion_recipe({
	material = { type = "fluid", name = "electrolyte", amount = 100 },
	matter_count = 10,
	energy_required = 1,
	needs_stabilizer = true,
	unlocked_by = "kr-matter-holmium-processing",
})
data.raw.recipe["kr-matter-to-electrolyte"].surface_conditions = { { property = "magnetic-field", min = 99, max = 99 } }

--Aquilo
matter_lib.make_recipes({
	material = { type = "fluid", name = "lithium-brine", amount = 100 },
	matter_count = 10,
	energy_required = 1,
	unlocked_by = "kr-matter-lithium-brine-processing",
})
data.raw.recipe["kr-matter-to-lithium-brine"].surface_conditions = { { property = "pressure", min = 300, max = 300 } }

matter_lib.make_recipes({
	material = { type = "fluid", name = "fluorine", amount = 100 },
	matter_count = 12.5,
	energy_required = 1,
	unlocked_by = "kr-matter-fluorine-processing",
})
data.raw.recipe["kr-matter-to-fluorine"].surface_conditions = { { property = "pressure", min = 300, max = 300 } }
