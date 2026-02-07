local matter_lib = require("__Krastorio2__.prototypes.libraries.matter")

data.raw.recipe["kr-matter-to-kr-imersite-powder"].surface_conditions =
	{ { property = "pressure", min = 1000, max = 1000 } }

-- TODO: not updated
matter_lib.make_recipes({
	material = { type = "item", name = "kr-rare-metal-ore", amount = 10 },
	matter_count = 12,
	energy_required = 1,
	unlocked_by = "kr-matter-rare-metals-processing",
})

data.raw.recipe["kr-matter-to-uranium-238"].surface_conditions = { { property = "pressure", min = 1000, max = 1000 } }

data.raw.recipe["kr-matter-to-uranium-ore"].surface_conditions = { { property = "pressure", min = 1000, max = 1000 } }

-- TODO: not updated
matter_lib.make_recipes({
	material = { type = "item", name = "wood", amount = 10 },
	matter_count = 1,
	energy_required = 1,
})

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

matter_lib.make_recipes({
	material = { type = "item", name = "holmium-ore", amount = 10 },
	matter_count = 30,
	energy_required = 2,
	unlocked_by = "kr-matter-holmium-processing",
})

data.raw.recipe["kr-matter-to-holmium-ore"].surface_conditions = { { property = "magnetic-field", min = 99, max = 99 } }

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

-- TODO: not updated
matter_lib.make_conversion_recipe({
	material = { type = "item", name = "kr-quartz", amount = 10 },
	matter_count = 0.64,
	energy_required = 1,
	unlocked_by = "kr-matter-stone-processing",
})

matter_lib.make_conversion_recipe({
	material = { type = "item", name = "scrap", amount = 10 },
	matter_count = 1,
	energy_required = 0.5,
	unlocked_by = "kr-matter-scrap-processing",
})

-- TODO: not updated
matter_lib.make_deconversion_recipe({
	material = { type = "item", name = "kr-rare-metals", amount = 10 },
	matter_count = 21,
	energy_required = 2,
	needs_stabilizer = true,
	unlocked_by = "kr-matter-rare-metals-processing",
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
