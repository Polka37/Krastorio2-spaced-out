local flib_prototypes = require("__flib__.prototypes")
local data_util = require("data-util")

table.insert(data.raw["active-defense-equipment"]["discharge-defense-equipment"].categories, "kr-vehicle")

data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].attack_parameters = {
	type = "beam",
	damage_modifier = 1.5,
	cooldown = 6,
	range = 15,
	range_mode = "center-to-bounding-box",
	sound = {
		filename = "__base__/sound/fight/pulse.ogg",
		volume = 0.3,
	},
	ammo_category = "laser",
	ammo_type = {
		energy_consumption = "0.2MJ",
		action = {
			type = "direct",
			action_delivery = {
				{
					type = "instant",
					target_effects = {
						{
							type = "create-entity",
							entity_name = "explosion-hit",
						},
					},
				},
				{
					type = "beam",
					beam = "laser-beam",
					max_length = 16,
					duration = 3,
					source_offset = { 0, -1.31439 },
				},
			},
		},
	},
}

table.insert(data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].categories, "kr-vehicle")
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].energy_source.buffer_capacity = "20MJ"
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].energy_source.input_flow_limit = "2MW"

table.insert(data.raw["battery-equipment"]["battery-equipment"].categories, "kr-vehicle")
data.raw["battery-equipment"]["battery-equipment"].energy_source = {
	type = "electric",
	buffer_capacity = "10MJ",
	usage_priority = "tertiary",
}
data.raw.item["battery-equipment"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/equipment/battery-mk1-equipment.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/equipment/battery-equipment-light.png",
			size = 64,
			scale = 0.5,
			flags = { "light" },
			draw_as_light = true,
		},
	},
}

table.insert(data.raw["battery-equipment"]["battery-mk2-equipment"].categories, "kr-vehicle")
data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source = {
	type = "electric",
	buffer_capacity = "50MJ",
	usage_priority = "tertiary",
}
data.raw.item["battery-mk2-equipment"].pictures = {
	layers = {
		{
			filename = "__Krastorio2Assets__/icons/equipment/battery-mk2-equipment.png",
			size = 64,
			scale = 0.5,
		},
		{
			filename = "__Krastorio2Assets__/icons/equipment/battery-equipment-light.png",
			size = 64,
			scale = 0.5,
			draw_as_light = true,
			flags = { "light" },
		},
	},
}

table.insert(data.raw["battery-equipment"]["battery-mk3-equipment"].categories, "kr-vehicle")

table.insert(data.raw["generator-equipment"]["fusion-reactor-equipment"].categories, "kr-vehicle")

table.insert(data.raw["belt-immunity-equipment"]["belt-immunity-equipment"].categories, "kr-vehicle")

table.insert(data.raw["energy-shield-equipment"]["energy-shield-equipment"].categories, "kr-vehicle")

table.insert(data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].categories, "kr-vehicle")

data.raw["generator-equipment"]["fission-reactor-equipment"].burner = {
	type = "burner",
	fuel_categories = { "nuclear" },
	effectivity = 2,
	fuel_inventory_size = 1,
	burnt_inventory_size = 1,
}
table.insert(data.raw["generator-equipment"]["fission-reactor-equipment"].categories, "kr-vehicle")
data.raw["generator-equipment"]["fission-reactor-equipment"].power = "2.4MW"

data.raw["movement-bonus-equipment"]["exoskeleton-equipment"].movement_bonus = 0.2

data.raw["night-vision-equipment"]["night-vision-equipment"].color_lookup = {
	{ 0.75, "__Krastorio2Assets__/luts/nightvision-equipment.png" },
}
data.raw["night-vision-equipment"]["night-vision-equipment"].darkness_to_turn_on = 0.5
data.raw["night-vision-equipment"]["night-vision-equipment"].shape = {
	width = 1,
	height = 1,
	type = "full",
}

data.raw["roboport-equipment"]["personal-roboport-equipment"].construction_radius = 15
data.raw["roboport-equipment"]["personal-roboport-equipment"].robot_limit = 20
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].robot_limit = 50

table.insert(data.raw["solar-panel-equipment"]["solar-panel-equipment"].categories, "kr-vehicle")
data.raw["solar-panel-equipment"]["solar-panel-equipment"].power = "40kW"

--- @param item_name data.ItemID
--- @param icon data.FileName
--- @param icon_size data.SpriteSizeType
--- @param sprite_size {[1]: data.SpriteSizeType, [2]: data.SpriteSizeType}
--- @param tier integer?
local function update_equipment_graphics(item_name, icon, icon_size, sprite_size, tier)
	local item = flib_prototypes.get("item", item_name)
	if tier then
		item.icon = nil
		item.icon_size = nil
		item.icons = {
			{ icon = "__Krastorio2Assets__/icons/equipment/" .. icon .. ".png", icon_size = icon_size },
			{ icon = "__Krastorio2Assets__/icons/equipment/tier-" .. tier .. ".png", icon_size = 64 },
		}
	else
		item.icon = "__Krastorio2Assets__/icons/equipment/" .. icon .. ".png"
		item.icon_size = icon_size
	end
	local equipment_id = item.place_as_equipment_result
	if not equipment_id then
		data_util.error("Item " .. item_name .. " has no related equipment.")
		return
	end
	local equipment = flib_prototypes.get("equipment", equipment_id)
	equipment.sprite = {
		filename = "__Krastorio2Assets__/equipment/" .. icon .. ".png",
		size = sprite_size,
		scale = 0.5,
		priority = "medium",
	}
end
update_equipment_graphics("battery-equipment", "battery-mk1-equipment", 64, { 64, 128 }, 1)
update_equipment_graphics("battery-mk2-equipment", "battery-mk2-equipment", 64, { 64, 128 }, 2)
update_equipment_graphics("energy-shield-equipment", "energy-shield-mk1-equipment", 64, { 128, 128 }, 1)
update_equipment_graphics("energy-shield-mk2-equipment", "energy-shield-mk2-equipment", 64, { 128, 128 }, 2)
update_equipment_graphics("exoskeleton-equipment", "exoskeleton-equipment", 64, { 128, 256 }, 1)
update_equipment_graphics("fission-reactor-equipment", "fission-reactor-equipment", 64, { 256, 256 }, 1)
update_equipment_graphics("night-vision-equipment", "night-vision-equipment", 64, { 128, 128 }, 1)
update_equipment_graphics(
	"personal-laser-defense-equipment",
	"personal-laser-defense-mk1-equipment",
	64,
	{ 128, 128 },
	1
)
update_equipment_graphics("personal-roboport-equipment", "personal-roboport-equipment", 64, { 128, 128 }, 1)
update_equipment_graphics("personal-roboport-mk2-equipment", "personal-roboport-mk2-equipment", 64, { 128, 128 }, 2)
update_equipment_graphics("solar-panel-equipment", "solar-panel-equipment", 64, { 64, 64 }, 1)

data.raw["battery-equipment"]["battery-mk3-equipment"].sprite =
	{ filename = "__k2so-assets__/equipment/battery-mk3-equipment.png", size = { 64, 144 }, scale = 0.5 }
data.raw.item["battery-mk3-equipment"].icons = {
	{ icon = "__k2so-assets__/icons/items/battery-mk3-equipment.png" },
	{ icon = "__Krastorio2Assets__/icons/equipment/tier-3.png", icon_size = 64 },
}

data.raw.item["battery-mk2-equipment"].icons = {
	{ icon = "__Krastorio2Assets__/icons/equipment/big-battery-mk2-equipment.png" },
	{ icon = "__Krastorio2Assets__/icons/equipment/tier-2.png" },
}
