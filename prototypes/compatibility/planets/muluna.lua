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
data.raw["fusion-generator"]["muluna-cycling-steam-turbine"].localised_name =
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
