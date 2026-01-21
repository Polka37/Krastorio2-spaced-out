if not mods["planet-muluna"] then
	return
end

local data_util = require("data-util")

table.insert(data.raw["assembling-machine"]["muluna-steam-crusher"].crafting_categories, "kr-crushing")
table.insert(data.raw["assembling-machine"]["crusher-2"].crafting_categories, "kr-crushing")

for _, effects in
	pairs(data.raw["technology"]["thruster-fuel-productivity"].PlanetsLib_recipe_productivity_effects.effects)
do
	effects.allow_multiple_results = true
end

--Buff condesation turbine
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].effectivity = 0.95
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].max_fluid_usage = 100 / 60
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].input_fluid_box.maximum_temperature = nil
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].energy_source.output_flow_limit = "190MW"
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].localised_description =
	{ "entity-description.muluna-cycling-steam-turbine-k2" }

--Make exploration science pack a tech card
data_util.set_icon(data.raw.tool["interstellar-science-pack"], "__k2so-assets__/icons/cards/exploration-tech-card.png")
data.raw.tool["interstellar-science-pack"].localised_name = { "item-name.exploration-tech-card" }
data.raw.tool["interstellar-science-pack"].order = "b09[exploration-tech-card]"
data.raw.tool["interstellar-science-pack"].pictures = {
	layers = {
		{
			filename = "__k2so-assets__/icons/cards/exploration-tech-card.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/cards/utility-tech-card-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
		},
	},
}
data_util.make_tech_card("interstellar-science-pack", data.raw.recipe["interstellar-science-pack"].ingredients)

data_util.set_icon(
	data.raw.technology["interstellar-science-pack"],
	"__k2so-assets__/technologies/exploration-tech-card.png",
	256
)
data.raw.technology["interstellar-science-pack"].localised_name = { "item-name.exploration-tech-card" }

--Add pipe connections to research computers
data.raw["assembling-machine"]["kr-quantum-computer"].fluid_boxes[2] = {
	production_type = "input",
	filter = "muluna-astronomical-data",
	pipe_picture = nil,
	pipe_covers = nil,
	pipe_picture_frozen = nil,
	pipe_covers_frozen = nil,
	volume = 100,
	pipe_connections = {
		{
			flow_direction = "input-output",
			direction = defines.direction.west,
			position = { -2.5, 0.5 },
			connection_category = "data",
		},
		{
			flow_direction = "input-output",
			direction = defines.direction.east,
			position = { 2.5, -0.5 },
			connection_category = "data",
		},
	},
	secondary_draw_orders = { north = -1 },
}
table.insert(data.raw["assembling-machine"]["kr-research-server"].fluid_boxes, 2, {
	production_type = "input",
	pipe_picture = nil,
	pipe_covers = nil,
	pipe_picture_frozen = nil,
	pipe_covers_frozen = nil,
	volume = 100,
	pipe_connections = {
		{
			flow_direction = "input-output",
			direction = defines.direction.east,
			position = { 1, 0 },
			connection_category = "data",
		},
		{
			flow_direction = "input-output",
			direction = defines.direction.west,
			position = { -1, 0 },
			connection_category = "data",
		},
	},
	secondary_draw_orders = { north = -1 },
})
table.insert(
	data.raw["assembling-machine"]["kr-advanced-assembling-machine"].crafting_categories,
	"crafting-with-fluid-and-data"
)
table.insert(data.raw["assembling-machine"]["kr-advanced-assembling-machine"].fluid_boxes, 2, {
	production_type = "input",
	pipe_picture = nil,
	pipe_covers = nil,
	pipe_picture_frozen = nil,
	pipe_covers_frozen = nil,
	volume = 100,
	pipe_connections = {
		{
			flow_direction = "input",
			direction = defines.direction.east,
			position = { 2, 0 },
			connection_category = "data",
		},
	},
	secondary_draw_orders = { north = -1 },
})
table.insert(data.raw["assembling-machine"]["kr-advanced-assembling-machine"].fluid_boxes, 4, {
	production_type = "output",
	pipe_picture = nil,
	pipe_covers = nil,
	pipe_picture_frozen = nil,
	pipe_covers_frozen = nil,
	volume = 100,
	pipe_connections = {
		{
			flow_direction = "output",
			direction = defines.direction.west,
			position = { -2, 0 },
			connection_category = "data",
		},
	},
	secondary_draw_orders = { north = -1 },
})

if not mods["maraxsis"] then
	data.raw.recipe["maraxsis-atmosphere"].category = "kr-atmosphere-condensation"
	data.raw.recipe["maraxsis-atmosphere"].energy_required = data.raw.recipe["maraxsis-atmosphere"].energy_required / 2
end

data.raw.recipe["carbon-dioxide"].category = "kr-atmosphere-condensation"
data.raw.recipe["carbon-dioxide"].energy_required = data.raw.recipe["maraxsis-atmosphere"].energy_required / 2

data.raw.recipe["atmosphere-oxygen-separation"].surface_conditions = {
	{
		property = "pressure",
		min = 1000,
		max = 2000,
	},
}
