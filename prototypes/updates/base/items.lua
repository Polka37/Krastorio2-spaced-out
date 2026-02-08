local data_util = require("data-util")
local flib_table = require("__flib__.table")

table.insert(
	flib_table.get_or_insert(data.raw.armor["mech-armor"], "resistances", {}),
	{ type = "kr-radioactive", decrease = 6, percent = 60 }
)
--- @param item data.Item_Name
--- @param fuel_value data.Fuel_Value
--- @param fuel_acceleration_multiplier data.Acceleration_Multiplayer
--- @param fuel_top_speed_multiplier data.Top_Speed_Multiplayer
--- @param fuel_emissions_multiplier data.Fuel_Emissions_Multiplayer
local function update_fuel(
	item,
	fuel_value,
	fuel_acceleration_multiplier,
	fuel_top_speed_multiplier,
	fuel_emissions_multiplier
)
	local item = data.raw.item[item]
	item.fuel_category = "chemical"
	item.fuel_value = fuel_value
	item.fuel_acceleration_multiplier = fuel_acceleration_multiplier
	item.fuel_top_speed_multiplier = fuel_top_speed_multiplier
	item.fuel_emissions_multiplier = fuel_emissions_multiplier
end

update_fuel("wood", "1.25MJ", 0.35, 0.5, 1)
update_fuel("coal", "6MJ", 0.5, 0.6, 2.5)
update_fuel("carbon", "3MJ", 0.5, 0.6, 2.5)
update_fuel("rocket-fuel", "100MJ", 1, 1, 1.25)
update_fuel("small-electric-pole", "1.5MJ", 0.35, 0.5, 1.25)
update_fuel("solid-fuel", "20MJ", 0.75, 0.75, 1.5)
update_fuel("wooden-chest", "3MJ", 0.35, 0.5, 1.25)
update_fuel("kr-biofuel", "15MJ", 1.1, 1.1, 0.5)

data.raw.item["lithium"].hidden = true

data_util.hide("kr-power-armor-mk3")
data_util.hide("kr-power-armor-mk4")
data_util.hide("kr-big-battery-equipment")
data_util.hide("kr-big-battery-mk2-equipment")
data_util.hide("kr-big-battery-mk3-equipment")
data_util.hide("kr-battery-mk3-equipment")
data_util.hide("kr-advanced-transport-belt")
data_util.hide("kr-advanced-underground-belt")
data_util.hide("kr-advanced-splitter")
data_util.hide("kr-legacy-steel-pipe-to-ground")
data_util.hide("kr-gps-satellite")
data_util.hide("kr-electric-mining-drill-mk3")

data.raw.tool["agricultural-science-pack"].spoil_result = "kr-blank-tech-card"

--order
data.raw.item["kr-advanced-furnace"].order = "d[foundry]-a[advanced-furnace]"
data.raw.item["kr-electric-mining-drill-mk2"].order = "a[items]-ba[electric-mining-drill-mk2]"

-- stylua: ignore start
data_util.set_icon(data.raw.tool["metallurgic-science-pack"], "__k2so-assets__/icons/cards/metallurgy-tech-card.png")
data_util.set_icon(data.raw.tool["electromagnetic-science-pack"],"__k2so-assets__/icons/cards/electromagnetic-tech-card.png")
data_util.set_icon(data.raw.tool["agricultural-science-pack"], "__k2so-assets__/icons/cards/agricultural-tech-card.png")
data_util.set_icon(data.raw.tool["cryogenic-science-pack"], "__k2so-assets__/icons/cards/cryogenic-tech-card.png")
data_util.set_icon(data.raw.tool["promethium-science-pack"], "__k2so-assets__/icons/cards/promethium-tech-card.png")

data.raw.tool["electromagnetic-science-pack"].localised_name = { "item-name.kr-electromagnetic-tech-card" }
data.raw.tool["metallurgic-science-pack"].localised_name = { "item-name.kr-metallurgic-tech-card" }
data.raw.tool["agricultural-science-pack"].localised_name = { "item-name.kr-agricultural-tech-card" }
data.raw.tool["cryogenic-science-pack"].localised_name = { "item-name.kr-cryogenic-tech-card" }
data.raw.tool["promethium-science-pack"].localised_name = { "item-name.kr-promethium-tech-card" }
-- stylua: ignore end

local function add_light(item)
	local card = data.raw.tool[item]
	card.pictures = {
		layers = {
			{
				filename = card.icon,
				size = 64,
				scale = 0.5,
			},
			{
				filename = "__k2so-assets__/icons/cards/tech-card-light.png",
				size = 64,
				scale = 0.5,
				draw_as_light = true,
			},
		},
	}
end

add_light("metallurgic-science-pack")
add_light("electromagnetic-science-pack")
add_light("agricultural-science-pack")
add_light("cryogenic-science-pack")
add_light("promethium-science-pack")
