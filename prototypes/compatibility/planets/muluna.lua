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

--Make LDS costs consistent
data_util.add_or_replace_ingredient(
	"low-density-structure-from-aluminum",
	"aluminum-plate",
	{ type = "item", name = "aluminum-plate", amount = 10 }
)
data_util.add_or_replace_ingredient(
	"casting-low-density-structure-aluminum",
	"molten-iron",
	{ type = "fluid", name = "molten-iron", amount = 60 }
)
data_util.add_or_replace_ingredient(
	"casting-low-density-structure-aluminum",
	"molten-aluminum",
	{ type = "fluid", name = "molten-aluminum", amount = 120 }
)

--Buff condesation turbine
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].effectivity = 0.95
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].max_fluid_usage = 100 / 60
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].input_fluid_box.maximum_temperature = nil
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].energy_source.output_flow_limit = "190MW"
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].localised_description =
	{ "entity-description.muluna-cycling-steam-turbine-k2" }

--Make exploration science pack a tech card
data_util.set_icon(data.raw.item["interstellar-science-pack"], "__k2so-assets__/icons/cards/exploration-tech-card.png")
data.raw.item["interstellar-science-pack"].localised_name = { "item-name.exploration-tech-card" }
data.raw.item["interstellar-science-pack"].order = "b09[exploration-tech-card]"
data.raw.item["interstellar-science-pack"].pictures = {
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
table.insert(
	data.raw["assembling-machine"]["kr-advanced-assembling-machine"].crafting_categories,
	"crafting-with-fluid-and-data"
)

--Add muluna data fluidboxes
local function fluidbox(machine)
	local Public = require("__planet-muluna__/lib/data-lib.lua")
	local max_fluid_boxes = 30 --Assuming that no modded machines have this many fluidboxes.
	local dummy_fluidboxes = max_fluid_boxes - 2

	local function rotate_position(position)
		local x = position.x or position[1]
		local y = position.y or position[2]

		return { -y, x }
	end

	local linked_connection_id = 100
	if machine.name ~= "kr-quantum-computer" then
		input = table.deepcopy(machine.fluid_boxes[1])
		output = table.deepcopy(machine.fluid_boxes[2])
	else
		input = table.deepcopy(machine.fluid_boxes[2])
		output = nil
		dummy_fluidboxes = dummy_fluidboxes - 1
	end
	for _, box in pairs({ input, output }) do
		for i = 1, dummy_fluidboxes do
			linked_connection_id = linked_connection_id + 1
			table.insert(
				machine.fluid_boxes,
				Public.dummy_fluidbox(box.production_type, box.pipe_connections[1].flow_direction, linked_connection_id)
			)
		end
		box.pipe_picture = nil
		box.pipe_covers = nil
		if machine.name ~= "kr-quantum-computer" then
			for _, connection in pairs(box.pipe_connections) do
				connection.position = rotate_position(connection.position)
				connection.connection_category = "data"
				if connection.direction == defines.direction.north then
					connection.direction = defines.direction.east
				elseif connection.direction == defines.direction.south then
					connection.direction = defines.direction.west
				elseif connection.direction == defines.direction.east then
					connection.direction = defines.direction.north
				elseif connection.direction == defines.direction.west then
					connection.direction = defines.direction.south
				end
			end
		else
			box.pipe_connections = {
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
			}
		end
		table.insert(machine.fluid_boxes, box)
	end
	machine.use_mirroring = true
end

fluidbox(data.raw["assembling-machine"]["kr-advanced-assembling-machine"])
fluidbox(data.raw["assembling-machine"]["kr-research-server"])
fluidbox(data.raw["assembling-machine"]["kr-quantum-computer"]) --a bit hard coded, but i won't need it for more

if not mods["maraxsis"] then
	data.raw.recipe["maraxsis-atmosphere"].categories = { "kr-atmosphere-condensation" }
	data.raw.recipe["maraxsis-atmosphere"].energy_required = data.raw.recipe["maraxsis-atmosphere"].energy_required / 2
	data.raw.fluid["maraxsis-atmosphere"].localised_description = { "fluid-description.kr-muluna-atmosphere" }
end

data.raw.recipe["carbon-dioxide"].categories = { "kr-atmosphere-condensation" }
data.raw.recipe["carbon-dioxide"].energy_required = data.raw.recipe["maraxsis-atmosphere"].energy_required / 2

data.raw.recipe["atmosphere-oxygen-separation"].surface_conditions = {
	{
		property = "pressure",
		min = 1000,
		max = 2000,
	},
}
