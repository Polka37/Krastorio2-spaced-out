if not mods["Moshine"] then
	return
end

local data_util = require("data-util")

table.insert(
	data.raw.resource["multi-ore"].minable.results,
	{ type = "item", name = "kr-rare-metal-ore", amount = 1, probability = 2 / 100 }
)

if not mods["aai-industry"] then
	data_util.remove_prerequisite("moshine-tech-data-extractor", "moshine-tech-glass")
end

data_util.add_prerequisite("big-solar-energy", "kr-advanced-solar-panel")
data_util.add_prerequisite("snouz_better_substation_tech", "electric-energy-distribution-3")
data_util.add_prerequisite("moshine-tech-silicon-cell", "planet-discovery-moshine")
data_util.add_prerequisite("moshine-tech-silicon-carbide", "planet-discovery-moshine")

data_util.remove_prerequisite("snouz_better_substation_tech", "electric-energy-distribution-2")
data_util.remove_prerequisite("moshine-tech-silicon-cell", "moshine-tech-silicon")
data_util.remove_prerequisite("moshine-tech-silicon-carbide", "moshine-tech-silicon")

data_util.add_or_replace_ingredient(
	"big-solar-panel",
	"solar-panel",
	{ type = "item", name = "kr-advanced-solar-panel", amount = 12 }
)
data_util.add_or_replace_ingredient(
	"snouz_better_substation",
	"substation",
	{ type = "item", name = "kr-superior-substation", amount = 2 }
)

data.raw.technology["moshine-tech-glass"] = nil
data.raw.technology["moshine-tech-silicon"] = nil

data.raw.technology["moshine-tech-silicon-cell"].research_trigger = nil
data.raw.technology["moshine-tech-silicon-cell"].unit = {
	time = 60,
	count = 200,
	ingredients = {
		{ kr_optimization_tech_card_name, 1 },
	},
}
data.raw.technology["moshine-tech-magnet"].unit = {
	time = 60,
	count = 200,
	ingredients = {
		{ kr_optimization_tech_card_name, 1 },
	},
}

data:extend({
	{
		type = "module-category",
		name = "kr-ai-core",
	},
	{
		type = "technology",
		name = "kr-gamma-core",
		icon = "__k2so-assets__/technologies/gamma-core.png",
		icon_size = 256,
		unit = {
			time = 33000,
			count = 60,
			ingredients = {
				{ "datacell-raw-data", 1 },
				{ "datacell-ai-model-data", 1 },
			},
		},
		prerequisites = { "moshine-tech-ai-tier-4", "kr-ai-core" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-gamma-core" },
		},
	},
	{
		type = "technology",
		name = "kr-beta-core",
		icon = "__k2so-assets__/technologies/beta-core.png",
		icon_size = 256,
		unit = {
			time = 330000,
			count = 100,
			ingredients = {
				{ "datacell-raw-data", 1 },
				{ "datacell-ai-model-data", 1 },
			},
		},
		prerequisites = { "moshine-tech-ai-tier-7", "kr-gamma-core", "kr-advanced-tech-card" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-beta-core" },
		},
	},
	{
		type = "technology",
		name = "kr-alpha-core",
		icon = "__k2so-assets__/technologies/alpha-core.png",
		icon_size = 256,
		unit = {
			time = 829000,
			count = 200,
			ingredients = {
				{ "datacell-raw-data", 1 },
				{ "datacell-ai-model-data", 1 },
			},
		},
		prerequisites = { "moshine-tech-ai-tier-10", "kr-beta-core", "kr-singularity-tech-card" },
		effects = {
			{ type = "unlock-recipe", recipe = "kr-alpha-core" },
		},
	},
	{
		type = "recipe",
		name = "kr-gamma-core",
		enabled = false,
		energy_required = 120,
		category = "electronics",
		auto_recycle = true,
		ingredients = {
			{ type = "item", name = "kr-ai-core", amount = 1 },
			{ type = "item", name = "ai-tier-4", amount = 1 },
			{ type = "item", name = "efficiency-module-2", amount = 3 },
			{ type = "item", name = "productivity-module-2", amount = 3 },
			{ type = "item", name = "speed-module-2", amount = 3 },
			{ type = "item", name = "explosives", amount = 1 },
		},
		results = { { type = "item", name = "kr-gamma-core", amount = 1 } },
		allow_productivity = false,
	},
	{
		type = "recipe",
		name = "kr-beta-core",
		enabled = false,
		energy_required = 240,
		category = "electronics",
		auto_recycle = true,
		ingredients = {
			{ type = "item", name = "kr-ai-core", amount = 1 },
			{ type = "item", name = "ai-tier-7", amount = 1 },
			{ type = "item", name = "efficiency-module-3", amount = 5 },
			{ type = "item", name = "productivity-module-3", amount = 5 },
			{ type = "item", name = "speed-module-3", amount = 5 },
			{ type = "item", name = "kr-imersite-crystal", amount = 10 },
			{ type = "item", name = "explosives", amount = 1 },
		},
		results = { { type = "item", name = "kr-beta-core", amount = 1 } },
		allow_productivity = false,
	},
	{
		type = "recipe",
		name = "kr-alpha-core",
		enabled = false,
		energy_required = 600,
		category = "electronics",
		auto_recycle = true,
		ingredients = {
			{ type = "item", name = "kr-ai-core", amount = 1 },
			{ type = "item", name = "ai-tier-10", amount = 1 },
			{ type = "item", name = "kr-gamma-core", amount = 5 },
			{ type = "item", name = "kr-beta-core", amount = 2 },
			{ type = "item", name = "kr-matter-cube", amount = 1 },
			{ type = "item", name = "explosives", amount = 1 },
		},
		results = { { type = "item", name = "kr-alpha-core", amount = 1 } },
		allow_productivity = false,
	},
	{
		type = "module",
		name = "kr-gamma-core",
		icon = "__k2so-assets__/icons/items/gamma-core.png",
		subgroup = "module",
		category = "kr-ai-core",
		tier = 1,
		order = "e[core]-a[gamma]",
		stack_size = 10,
		weight = 100 * kg,
		effect = { speed = 0.3, consumption = -0.3, productivity = 0.1 },
	},
	{
		type = "module",
		name = "kr-beta-core",
		icon = "__k2so-assets__/icons/items/beta-core.png",
		subgroup = "module",
		category = "kr-ai-core",
		tier = 2,
		order = "e[core]-b[beta]",
		stack_size = 10,
		weight = 100 * kg,
		effect = { speed = 0.5, consumption = -0.15, productivity = 0.25 },
	},
	{
		type = "module",
		name = "kr-alpha-core",
		icon = "__k2so-assets__/icons/items/alpha-core.png",
		subgroup = "module",
		category = "kr-ai-core",
		tier = 3,
		order = "e[core]-c[alpha]",
		stack_size = 10,
		weight = 100 * kg,
		effect = { speed = 1, consumption = -0.05, productivity = 0.5 },
	},
})

local moduled_building_types = { "beacon", "assembling-machine", "rocket-silo", "furnace", "lab", "mining-drill" }

for _, moduled_building_type in pairs(moduled_building_types) do
	for _, moduled_building in pairs(data.raw[moduled_building_type]) do
		if moduled_building then
			if not moduled_building.allowed_module_categories then
				moduled_building.allowed_module_categories = {}
				for _, module_cat in pairs(data.raw["module-category"]) do
					if not (module_cat.name == "kr-ai-core") and not (module_cat.name == "ai-speed") then
						table.insert(moduled_building.allowed_module_categories, module_cat.name)
					end
				end
			end
		end
	end
end

table.insert(data.raw["assembling-machine"]["kr-research-server"].allowed_module_categories, "kr-ai-core")
table.insert(data.raw["assembling-machine"]["kr-quantum-computer"].allowed_module_categories, "kr-ai-core")
for _, lab in pairs(data.raw["lab"]) do
	table.insert(lab.allowed_module_categories, "kr-ai-core")
end
