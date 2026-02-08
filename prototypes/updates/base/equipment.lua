table.insert(data.raw["battery-equipment"]["battery-mk3-equipment"].categories, "kr-vehicle")

data.raw["battery-equipment"]["battery-mk3-equipment"].sprite =
	{ filename = "__k2so-assets__/equipment/battery-mk3-equipment.png", size = { 64, 144 }, scale = 0.5 }

data.raw.item["battery-mk3-equipment"].icons = {
	{ icon = "__k2so-assets__/icons/items/battery-mk3-equipment.png" },
	{ icon = "__Krastorio2Assets__/icons/equipment/tier-3.png", icon_size = 64 },
}
