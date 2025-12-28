local data_util = require("data-util")
local flib_table = require("__flib__.table")

table.insert(
	flib_table.get_or_insert(data.raw.armor["modular-armor"], "resistances", {}),
	{ type = "kr-radioactive", decrease = 2, percent = 15 }
)
table.insert(
	flib_table.get_or_insert(data.raw.armor["power-armor"], "resistances", {}),
	{ type = "kr-radioactive", decrease = 3, percent = 30 }
)
table.insert(
	flib_table.get_or_insert(data.raw.armor["power-armor-mk2"], "resistances", {}),
	{ type = "kr-radioactive", decrease = 4, percent = 45 }
)
table.insert(
	flib_table.get_or_insert(data.raw.armor["mech-armor"], "resistances", {}),
	{ type = "kr-radioactive", decrease = 6, percent = 60 }
)
-- TODO: Redo equipment subgrouping
data.raw.capsule["discharge-defense-remote"].order = "f[active-defense-equipment]-b[discharge-defense-remote]"
data.raw.capsule["discharge-defense-remote"].subgroup = "equipment"

data.raw.capsule["raw-fish"].capsule_action.attack_parameters.cooldown = 30
data.raw.capsule["raw-fish"].capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects = {
	type = "damage",
	damage = { type = "physical", amount = -50 },
}

data.raw.item["artillery-turret"].subgroup = "kr-vanilla-turret"
data.raw.item["artillery-turret"].order = "04[artillery-turret]"

data.raw.item["assembling-machine-3"].order = "c1[assembling-machine-3]"

data.raw.item["battery-equipment"].order = "b1[battery]-b1[battery-equipment]"
data.raw.item["battery-equipment"].subgroup = "equipment"

data.raw.item["battery-mk2-equipment"].order = "b2[battery]-b3[battery-equipment]"
data.raw.item["battery-mk2-equipment"].subgroup = "equipment"

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

data.raw.item["uranium-fuel-cell"].fuel_value = "50GJ" --  = 200s in reactor

data.raw.item["solar-panel"].weight = 40 * kg
data.raw.item["stone-wall"].weight = 5 * kg
data.raw.item["pumpjack"].weight = 50 * kg

data.raw.capsule["cliff-explosives"].weight = 5 * kg

data.raw.item["uranium-235"].weight = 10 * kg
data.raw.item["uranium-238"].weight = 10 * kg

data.raw.item["beacon"].weight = 50 * kg

data.raw.item["discharge-defense-equipment"].order = "f[active-defense-equipment]-a[discharge-defense-equipment]"
data.raw.item["discharge-defense-equipment"].subgroup = "equipment"

data.raw.item["energy-shield-equipment"].subgroup = "equipment"
data.raw.item["energy-shield-equipment"].order = "b[shield]-a[energy-shield-equipment-mk1]"

data.raw.item["energy-shield-mk2-equipment"].subgroup = "equipment"
data.raw.item["energy-shield-mk2-equipment"].order = "b[shield]-b[energy-shield-equipment-mk2]"

data.raw.item["exoskeleton-equipment"].subgroup = "kr-character-equipment"
data.raw.item["exoskeleton-equipment"].order = "e[exoskeleton]-a1[exoskeleton-equipment]"

data.raw.item["fission-reactor-equipment"].order = "a2[energy-source]-a4[portable-fission-reactor]"
data.raw.item["fission-reactor-equipment"].subgroup = "equipment"
data.raw.item["fission-reactor-equipment"].stack_size = 10
data.raw.item["fission-reactor-equipment"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/equipment/fission-reactor-equipment.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/equipment/fission-reactor-equipment-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
			flags = { "light" },
		},
	},
}

data.raw.item["lithium"].hidden = true

data.raw.item["flamethrower-turret"].subgroup = "kr-vanilla-turret"
data.raw.item["flamethrower-turret"].order = "02[flamethrower-turret]"

data.raw.item["gate"].subgroup = "kr-vanilla-turret"
data.raw.item["gate"].order = "002[gate]"

data.raw.item["gun-turret"].subgroup = "kr-vanilla-turret"
data.raw.item["gun-turret"].order = "01[gun-turret]"

data.raw.item["laser-turret"].subgroup = "kr-vanilla-turret"
data.raw.item["laser-turret"].order = "03a[laser-turret]"

data.raw.item["rocket-turret"].subgroup = "kr-rocket-turret"
data.raw.item["rocket-turret"].order = "a01[rocket-turret]"

data.raw.item["railgun-turret"].subgroup = "kr-railgun-turret"
data.raw.item["railgun-turret"].order = "a00[railgun-turret]"

data.raw.item["night-vision-equipment"].subgroup = "kr-character-equipment"
data.raw.item["night-vision-equipment"].order = "f[night-vision]-a1[night-vision-equipment]"

data.raw.item["nuclear-reactor"].stack_size = 1

data.raw.item["personal-laser-defense-equipment"].order = "d[active-defense]-b1[personal-laser-defense-mk1-equipment]"
data.raw.item["personal-laser-defense-equipment"].subgroup = "equipment"

data.raw.item["radar"].subgroup = "kr-radar"
data.raw.item["radar"].order = "02[radar]"

data.raw.item["solar-panel-equipment"].order = "a[energy-source]-a1[solar-panel]"
data.raw.item["solar-panel-equipment"].subgroup = "equipment"

data.raw.item["stone-wall"].subgroup = "kr-vanilla-turret"
data.raw.item["stone-wall"].order = "001[stone-wall]"

if settings.startup["kr-containers"].value and not mods["aai-containers"] then
	data.raw.item["steel-chest"].subgroup = "kr-chest"
	data.raw.item["steel-chest"].order = "a[asteel-chest]"
	data.raw.item["active-provider-chest"].subgroup = "kr-chest"
	data.raw.item["active-provider-chest"].order = "a[chest-active-provider]"
	data.raw.item["buffer-chest"].subgroup = "kr-chest"
	data.raw.item["buffer-chest"].order = "b[chest-buffer]"
	data.raw.item["passive-provider-chest"].subgroup = "kr-chest"
	data.raw.item["passive-provider-chest"].order = "c[chest-passive-provider]"
	data.raw.item["requester-chest"].subgroup = "kr-chest"
	data.raw.item["requester-chest"].order = "d[chest-requester]"
	data.raw.item["storage-chest"].subgroup = "kr-chest"
	data.raw.item["storage-chest"].order = "e[chest-storage]"
end

-- stylua: ignore start
data_util.set_icon(data.raw.ammo["artillery-shell"], "__Krastorio2Assets__/icons/ammo/artillery-shell.png")
data_util.set_icon(data.raw.item["advanced-circuit"], "__Krastorio2Assets__/icons/items/advanced-circuit.png")
data_util.set_icon(data.raw.item["copper-plate"], "__Krastorio2Assets__/icons/items/copper-plate.png")
data_util.set_icon(data.raw.item["electric-mining-drill"], "__Krastorio2Assets__/icons/entities/electric-mining-drill.png")
data_util.set_icon(data.raw.item["electronic-circuit"], "__Krastorio2Assets__/icons/items/electronic-circuit.png")
data_util.set_icon(data.raw.item["iron-gear-wheel"], "__Krastorio2Assets__/icons/items/iron-gear-wheel.png")
data_util.set_icon(data.raw.item["iron-plate"], "__Krastorio2Assets__/icons/items/iron-plate.png")
data_util.set_icon(data.raw.item["processing-unit"], "__Krastorio2Assets__/icons/items/processing-unit.png")
data_util.set_icon(data.raw.item["steel-plate"], "__Krastorio2Assets__/icons/items/steel-plate.png")
-- stylua: ignore end

data_util.set_icon(data.raw.ammo["atomic-bomb"], "__Krastorio2Assets__/icons/ammo/atomic-bomb.png")
data.raw.ammo["atomic-bomb"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/ammo/atomic-bomb.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/ammo/atomic-bomb-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
		},
	},
}

data_util.set_icon(
	data.raw.tool["automation-science-pack"],
	"__Krastorio2Assets__/icons/cards/automation-tech-card.png"
)
data.raw.tool["automation-science-pack"].localised_name = { "item-name.automation-tech-card" }
data.raw.tool["automation-science-pack"].order = "b02[automation-tech-card]"
data.raw.tool["automation-science-pack"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/cards/automation-tech-card.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/cards/automation-tech-card-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
		},
	},
}

data_util.set_icon(data.raw.tool["logistic-science-pack"], "__Krastorio2Assets__/icons/cards/logistic-tech-card.png")
data.raw.tool["logistic-science-pack"].localised_name = { "item-name.logistic-tech-card" }
data.raw.tool["logistic-science-pack"].order = "b03[logistic-tech-card]"
data.raw.tool["logistic-science-pack"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/cards/logistic-tech-card.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/cards/logistic-tech-card-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
		},
	},
}

data_util.set_icon(data.raw.tool["military-science-pack"], "__Krastorio2Assets__/icons/cards/military-tech-card.png")
data.raw.tool["military-science-pack"].localised_name = { "item-name.military-tech-card" }
data.raw.tool["military-science-pack"].order = "b04[military-tech-card]"
data.raw.tool["military-science-pack"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/cards/military-tech-card.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/cards/military-tech-card-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
		},
	},
}

data_util.set_icon(data.raw.tool["chemical-science-pack"], "__Krastorio2Assets__/icons/cards/chemical-tech-card.png")
data.raw.tool["chemical-science-pack"].localised_name = { "item-name.chemical-tech-card" }
data.raw.tool["chemical-science-pack"].order = "b05[chemical-tech-card]"
data.raw.tool["chemical-science-pack"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/cards/chemical-tech-card.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/cards/chemical-tech-card-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
		},
	},
}

data_util.set_icon(
	data.raw.tool["production-science-pack"],
	"__Krastorio2Assets__/icons/cards/production-tech-card.png"
)
data.raw.tool["production-science-pack"].localised_name = { "item-name.production-tech-card" }
data.raw.tool["production-science-pack"].order = "b06[production-tech-card]"
data.raw.tool["production-science-pack"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/cards/production-tech-card.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/cards/production-tech-card-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
		},
	},
}

data_util.set_icon(data.raw.tool["utility-science-pack"], "__Krastorio2Assets__/icons/cards/utility-tech-card.png")
data.raw.tool["utility-science-pack"].localised_name = { "item-name.utility-tech-card" }
data.raw.tool["utility-science-pack"].order = "b07[utility-tech-card]"
data.raw.tool["utility-science-pack"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/cards/utility-tech-card.png",
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

data_util.set_icon(
	data.raw.tool[kr_optimization_tech_card_name],
	"__Krastorio2Assets__/icons/cards/optimization-tech-card.png"
)
data.raw.tool[kr_optimization_tech_card_name].localised_name = { "item-name.optimization-tech-card" }
data.raw.tool[kr_optimization_tech_card_name].localised_description = { "item-description.optimization-tech-card" }
data.raw.tool[kr_optimization_tech_card_name].order = "b08[optimization-tech-card]"
data.raw.tool[kr_optimization_tech_card_name].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/cards/optimization-tech-card.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/cards/optimization-tech-card-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
		},
	},
}
data.raw.tool["agricultural-science-pack"].spoil_result = "kr-blank-tech-card"
data_util.set_icon(data.raw.tool["metallurgic-science-pack"], "__k2so-assets__/icons/cards/metallurgy-tech-card.png")
data_util.set_icon(
	data.raw.tool["electromagnetic-science-pack"],
	"__k2so-assets__/icons/cards/electromagnetic-tech-card.png"
)
data_util.set_icon(data.raw.tool["agricultural-science-pack"], "__k2so-assets__/icons/cards/agricultural-tech-card.png")
data_util.set_icon(data.raw.tool["cryogenic-science-pack"], "__k2so-assets__/icons/cards/cryogenic-tech-card.png")
data_util.set_icon(data.raw.tool["promethium-science-pack"], "__k2so-assets__/icons/cards/promethium-tech-card.png")
data.raw.tool["electromagnetic-science-pack"].localised_name = { "item-name.kr-electromagnetic-tech-card" }
data.raw.tool["metallurgic-science-pack"].localised_name = { "item-name.kr-metallurgic-tech-card" }
data.raw.tool["agricultural-science-pack"].localised_name = { "item-name.kr-agricultural-tech-card" }
data.raw.tool["cryogenic-science-pack"].localised_name = { "item-name.kr-cryogenic-tech-card" }
data.raw.tool["promethium-science-pack"].localised_name = { "item-name.kr-promethium-tech-card" }

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
