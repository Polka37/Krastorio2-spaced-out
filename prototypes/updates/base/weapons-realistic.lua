local flib_table = require("__flib__.table")
local data_util = require("data-util")

local speed_mult, dev_mult = 2, 0.5

--physical-damage
data_util.update_ammo_effects(data.raw["technology"]["physical-projectile-damage-7"], {
	{ type = "ammo-damage", ammo_category = "bullet", modifier = 0.2 },
	{ type = "turret-attack", turret_id = "gun-turret", modifier = 0.2 },
	{ type = "ammo-damage", ammo_category = "shotgun-shell", modifier = 0.4 },
	{ type = "ammo-damage", ammo_category = "cannon-shell", modifier = 1 },
})

--stronger-explosives
data_util.update_ammo_effects(data.raw["technology"]["stronger-explosives-7"], {
	{ type = "ammo-damage", ammo_category = "rocket", modifier = 0.5 },
	{ type = "ammo-damage", ammo_category = "grenade", modifier = 0.2 },
	{ type = "ammo-damage", ammo_category = "landmine", modifier = 0.2 },
})

--refined-flammables
data_util.update_ammo_effects(data.raw["technology"]["refined-flammables-7"], {
	{ type = "ammo-damage", ammo_category = "flamethrower", modifier = 0.2 },
	{ type = "turret-attack", turret_id = "flamethrower-turret", modifier = 0.2 },
})

--laser-damage
data_util.update_ammo_effects(data.raw["technology"]["laser-weapons-damage-5"], {
	{ type = "ammo-damage", ammo_category = "laser", modifier = 0.4 },
})
data_util.update_ammo_effects(data.raw["technology"]["laser-weapons-damage-6"], {
	{ type = "ammo-damage", ammo_category = "laser", modifier = 0.5 },
})
data_util.update_ammo_effects(data.raw["technology"]["laser-weapons-damage-7"], {
	{ type = "ammo-damage", ammo_category = "laser", modifier = 1 },
})

data_util.update_ammo_effects(data.raw["technology"]["artillery-shell-speed-1"], {
	{ type = "gun-speed", ammo_category = "artillery-shell", modifier = 0.25 },
})

-- Adding new Krastorio ammo damages effects in vanilla technologies

-- Technology for railgun turret

data_util.add_effect("railgun-damage-1", { type = "ammo-damage", ammo_category = "kr-railgun-shell", modifier = 0.4 })

data_util.add_effect(
	"railgun-shooting-speed-1",
	{ type = "gun-speed", ammo_category = "kr-railgun-shell", modifier = 0.15 }
)

---@param technology_name String.technology.name
---@param category String.effect.name
local function remove_effect(technology_name, category)
	for n, effect in pairs(data.raw.technology[technology_name].effects) do
		if effect.ammo_category == category then
			table.remove(data.raw.technology[technology_name].effects, n)
		end
	end
end

for n = 1, 7 do
	remove_effect("physical-projectile-damage-" .. n, "kr-railgun-shell")
end

-- Technology for rocket turret

data_util.add_effect(
	"stronger-explosives-7",
	{ type = "ammo-damage", ammo_category = "kr-turret-missile", modifier = 0.5 }
)

-- Technology for heavy rocket launcher

data_util.add_effect(
	"stronger-explosives-7",
	{ type = "ammo-damage", ammo_category = "kr-heavy-rocket", modifier = 0.5 }
)

-- Technology for impulse rifle

data_util.add_effect(
	"laser-weapons-damage-7",
	{ type = "ammo-damage", ammo_category = "kr-impulse-rifle", modifier = 0.5 }
)

if not settings.startup["kr-realistic-weapons"].value then
	return
end

table.insert(flib_table.get_or_insert(data.raw.ammo["uranium-rounds-magazine"], "flags", {}), "hide-from-bonus-gui")
table.insert(flib_table.get_or_insert(data.raw.ammo["kr-imersite-rounds-magazine"], "flags", {}), "hide-from-bonus-gui")

data.raw["ammo"]["uranium-rounds-magazine"].hidden_in_factoriopedia = true
data.raw["ammo"]["kr-imersite-rounds-magazine"].hidden_in_factoriopedia = true

data.raw.recipe["uranium-rounds-magazine"].hidden_in_factoriopedia = true
data.raw.recipe["kr-imersite-rounds-magazine"].hidden_in_factoriopedia = true

-- Technology for new ammo

data_util.add_effect(
	"physical-projectile-damage-1",
	{ type = "ammo-damage", ammo_category = "kr-pistol", modifier = 0.25 }
)
data_util.add_effect(
	"physical-projectile-damage-2",
	{ type = "ammo-damage", ammo_category = "kr-pistol", modifier = 0.25 }
)
data_util.add_effect(
	"physical-projectile-damage-3",
	{ type = "ammo-damage", ammo_category = "kr-pistol", modifier = 0.25 }
)
data_util.add_effect(
	"physical-projectile-damage-4",
	{ type = "ammo-damage", ammo_category = "kr-pistol", modifier = 0.35 }
)
data_util.add_effect(
	"physical-projectile-damage-5",
	{ type = "ammo-damage", ammo_category = "kr-pistol", modifier = 0.35 }
)
data_util.add_effect(
	"physical-projectile-damage-6",
	{ type = "ammo-damage", ammo_category = "kr-pistol", modifier = 0.35 }
)
data_util.add_effect(
	"physical-projectile-damage-7",
	{ type = "ammo-damage", ammo_category = "kr-pistol", modifier = 0.5 }
)

data_util.add_effect("weapon-shooting-speed-1", { type = "gun-speed", ammo_category = "kr-pistol", modifier = 0.2 })
data_util.add_effect("weapon-shooting-speed-2", { type = "gun-speed", ammo_category = "kr-pistol", modifier = 0.2 })
data_util.add_effect("weapon-shooting-speed-3", { type = "gun-speed", ammo_category = "kr-pistol", modifier = 0.15 })
data_util.add_effect("weapon-shooting-speed-4", { type = "gun-speed", ammo_category = "kr-pistol", modifier = 0.15 })
data_util.add_effect("weapon-shooting-speed-5", { type = "gun-speed", ammo_category = "kr-pistol", modifier = 0.15 })
data_util.add_effect("weapon-shooting-speed-6", { type = "gun-speed", ammo_category = "kr-pistol", modifier = 0.15 })

data_util.add_effect(
	"physical-projectile-damage-1",
	{ type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.25 }
)
data_util.add_effect(
	"physical-projectile-damage-2",
	{ type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.25 }
)
data_util.add_effect(
	"physical-projectile-damage-3",
	{ type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.25 }
)
data_util.add_effect(
	"physical-projectile-damage-4",
	{ type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.35 }
)
data_util.add_effect(
	"physical-projectile-damage-5",
	{ type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.35 }
)
data_util.add_effect(
	"physical-projectile-damage-6",
	{ type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.35 }
)
data_util.add_effect(
	"physical-projectile-damage-7",
	{ type = "ammo-damage", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.5 }
)

data_util.add_effect(
	"weapon-shooting-speed-1",
	{ type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.2 }
)
data_util.add_effect(
	"weapon-shooting-speed-2",
	{ type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.2 }
)
data_util.add_effect(
	"weapon-shooting-speed-3",
	{ type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.15 }
)
data_util.add_effect(
	"weapon-shooting-speed-4",
	{ type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.15 }
)
data_util.add_effect(
	"weapon-shooting-speed-5",
	{ type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.15 }
)
data_util.add_effect(
	"weapon-shooting-speed-6",
	{ type = "gun-speed", ammo_category = "kr-anti-materiel-rifle-ammo", modifier = 0.15 }
)

-- ------------------------------------------------------------------------------------------------------
-- Everything below this point has been moved verbatim, I really don't feel like going through any of it.
-- TODO: Clean up this mess

-- -- --

local pistol_range = 22
local rifle_range = 30
local sniper_range = 70

-- -- --

local bullets_collision_box = { { -0.5, -1 }, { 0.5, 1 } }
local k_target_type = "direction" -- "entity", "position" or "direction"
local k_d_radius = 0.5
local k_pistol_min_range = 0.5
local k_rifle_min_range = 0.5
local k_s_rifle_min_range = 1
local turret_range = 0

if settings.startup["kr-realistic-weapons-auto-aim"].value then
	pistol_range = 20
	rifle_range = 25
	sniper_range = 50
	bullets_collision_box = { { -0.1, -0.5 }, { 0.1, 0.5 } }
	k_target_type = "entity" -- "entity", "position" or "direction"
	k_d_radius = 0.25
	k_pistol_min_range = 0.25
	k_rifle_min_range = 0.25
	k_s_rifle_min_range = 0.5
	turret_range = 0
end

-- -- --

----------------------------------------------------------------------------------------------------------------------
---------------------------------------------- -- NEW EXPLOSION -- ---------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

data:extend({
	{
		type = "explosion",
		name = "kr-explosion-hit-p",
		flags = { "not-on-map" },
		hidden = true,
		subgroup = "explosions",
		animations = {
			{
				filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
				priority = "extra-high",
				width = 34,
				height = 38,
				frame_count = 13,
				animation_speed = 1.5,
				shift = { 0, -0.3125 },
			},
		},
		light = { intensity = 1, size = 9, color = { r = 1.0, g = 0.8, b = 0.5 } },
		smoke = "smoke-fast",
		smoke_count = 1,
		smoke_slow_down_factor = 1,
	},
	{
		type = "explosion",
		name = "kr-explosion-hit-u",
		flags = { "not-on-map" },
		hidden = true,
		subgroup = "explosions",
		animations = {
			{
				filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
				priority = "extra-high",
				width = 34,
				height = 38,
				frame_count = 13,
				animation_speed = 1.5,
				shift = { 0, -0.3125 },
			},
		},
		light = { intensity = 1, size = 9, color = { r = 0.5, g = 1, b = 0.5 } },
		smoke = "smoke-fast",
		smoke_count = 2,
		smoke_slow_down_factor = 0.75,
	},
	{
		type = "explosion",
		name = "kr-explosion-hit-i",
		flags = { "not-on-map" },
		hidden = true,
		subgroup = "explosions",
		animations = {
			{
				filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
				priority = "extra-high",
				width = 34,
				height = 38,
				frame_count = 13,
				animation_speed = 1.5,
				shift = { 0, -0.3125 },
			},
		},
		light = { intensity = 1.5, size = 10, color = { r = 1, g = 0.45, b = 0.8 } },
		smoke = "smoke-fast",
		smoke_count = 3,
		smoke_slow_down_factor = 0.5,
	},
})

data.raw.gun["submachine-gun"].attack_parameters.range = 50
data.raw.gun["submachine-gun"].attack_parameters.movement_slow_down_factor = 0.25

----------------------------------------------------------------------------------------------------------------------
---------------------------------------------- -- PISTOL STUFF -- ----------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

data.raw.gun["pistol"].attack_parameters.ammo_category = "kr-pistol"
data.raw.gun["pistol"].attack_parameters.range = pistol_range - 2
data.raw.gun["pistol"].attack_parameters.min_range = k_pistol_min_range
data.raw.gun["pistol"].attack_parameters.cooldown = 20
data.raw.gun["pistol"].attack_parameters.movement_slow_down_factor = 0.15

data.raw.ammo["firearm-magazine"].order = "a[basic-clips]-a01[pistol-magazine]"
data.raw.ammo["firearm-magazine"].stack_size = 200
data.raw.ammo["firearm-magazine"].magazine_size = 12
data.raw.ammo["firearm-magazine"].ammo_category = "kr-pistol"
data.raw.ammo["firearm-magazine"].ammo_type = {
	cooldown_modifier = 0.8,
	target_type = k_target_type,
	action = {
		{
			type = "direct",
			action_delivery = {
				{
					type = "projectile",
					projectile = "kr-firearm-magazine-projectile",
					starting_speed = speed_mult * 1,
					direction_deviation = dev_mult * 0.15,
					range_deviation = dev_mult * 0.15,
					max_range = pistol_range,
					source_effects = {
						{
							type = "create-explosion",
							entity_name = "explosion-gunshot",
						},
					},
				},
			},
		},
	},
}
data.raw.ammo["firearm-magazine"].icon = "__Krastorio2Assets__/icons/items/pistol-ammo-1.png"
data.raw.ammo["firearm-magazine"].pictures = {
	{
		filename = "__Krastorio2Assets__/icons/items/pistol-ammo-1.png",
		size = 64,
		scale = 0.5,
	},
}

data.raw.recipe["firearm-magazine"].energy_required = 0.5
data.raw.recipe["firearm-magazine"].enabled = true
data.raw.recipe["firearm-magazine"].ingredients = {
	{ type = "item", name = "coal", amount = 1 },
	{ type = "item", name = "iron-plate", amount = 1 },
}

data.raw.ammo["piercing-rounds-magazine"].order = "a[basic-clips]-a02[pistol-magazine]"
data.raw.ammo["piercing-rounds-magazine"].icon = "__Krastorio2Assets__/icons/items/pistol-ammo-2.png"
data.raw.ammo["piercing-rounds-magazine"].pictures = {
	{
		filename = "__Krastorio2Assets__/icons/items/pistol-ammo-2.png",
		size = 64,
		scale = 0.5,
	},
}
data.raw.ammo["piercing-rounds-magazine"].ammo_category = "kr-pistol"
data.raw.ammo["piercing-rounds-magazine"].ammo_type = {
	target_type = k_target_type,
	action = {
		{
			type = "direct",
			action_delivery = {
				{
					type = "projectile",
					projectile = "kr-piercing-rounds-magazine-projectile",
					starting_speed = speed_mult * 1.1,
					direction_deviation = dev_mult * 0.15,
					range_deviation = dev_mult * 0.15,
					max_range = pistol_range,
					source_effects = {
						{
							type = "create-explosion",
							entity_name = "explosion-gunshot",
						},
					},
				},
			},
		},
	},
}
data.raw.ammo["piercing-rounds-magazine"].stack_size = 200

data.raw.recipe["piercing-rounds-magazine"].energy_required = 1
data.raw.recipe["piercing-rounds-magazine"].ingredients = {
	{ type = "item", name = "firearm-magazine", amount = 1 },
	{ type = "item", name = "steel-plate", amount = 1 },
}
data.raw.recipe["piercing-rounds-magazine"].results = {
	{ type = "item", name = "piercing-rounds-magazine", amount = 1 },
}

data:extend({
	{
		type = "projectile",
		name = "kr-firearm-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.015,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "explosion-hit",
					},
					{
						type = "damage",
						damage = { amount = 8, type = "physical" },
					},
				},
			},
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/firearm-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/firearm-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
			draw_as_shadow = true,
		},
		force_condition = "not-same",
		light = { intensity = 0.45, size = 5, color = { r = 1.0, g = 1.0, b = 0.5 } },
	},
	{
		type = "projectile",
		name = "kr-piercing-rounds-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.015,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "kr-explosion-hit-p",
					},
					{
						type = "damage",
						damage = { amount = 12, type = "physical" },
					},
				},
			},
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/piercing-rounds-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/piercing-rounds-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
			draw_as_shadow = true,
		},
		--hit_at_collision_position = true,
		force_condition = "not-same",
		light = { intensity = 0.35, size = 7, color = { r = 1.0, g = 0.8, b = 0.5 } },
	},
})

data.raw.ammo["firearm-magazine"].localised_name = { "item-name.pistol-magazine" }
data.raw.ammo["piercing-rounds-magazine"].localised_name = { "item-name.armor-piercing-pistol-magazine" }

----------------------------------------------------------------------------------------------------------------------
---------------------------------------------- -- RIFLE STUFF -- -----------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

data.raw.gun["submachine-gun"].attack_parameters.ammo_category = "bullet"
data.raw.gun["submachine-gun"].attack_parameters.range = rifle_range
data.raw.gun["submachine-gun"].attack_parameters.min_range = k_rifle_min_range
data.raw.gun["submachine-gun"].attack_parameters.cooldown = 8
data.raw.gun["submachine-gun"].attack_parameters.movement_slow_down_factor = 0.15

data:extend({
	{
		type = "ammo",
		name = "kr-rifle-magazine",
		icon = "__Krastorio2Assets__/icons/ammo/rifle-magazine.png",
		pictures = {
			{
				filename = "__Krastorio2Assets__/icons/ammo/rifle-magazine.png",
				size = 64,
				scale = 0.5,
			},
		},
		ammo_category = "bullet",
		ammo_type = {
			cooldown_modifier = 0.8,
			target_type = k_target_type,
			action = {
				{
					type = "direct",
					action_delivery = {
						{
							type = "projectile",
							projectile = "kr-rifle-magazine-projectile",
							starting_speed = speed_mult * 1.5,
							direction_deviation = dev_mult * 0.15,
							range_deviation = dev_mult * 0.15,
							max_range = rifle_range,
							source_effects = {
								{
									type = "create-explosion",
									entity_name = "explosion-gunshot",
								},
							},
						},
					},
				},
			},
		},
		magazine_size = 30,
		weight = 20 * kg,
		subgroup = "ammo",
		order = "a[basic-clips]-a03[rifle-magazine]",
		stack_size = 200,
	},
	{
		type = "projectile",
		name = "kr-rifle-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.018,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "explosion-hit",
					},
					{
						type = "damage",
						damage = { amount = 10, type = "physical" },
					},
				},
			},
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
			draw_as_shadow = true,
		},
		--hit_at_collision_position = true,
		force_condition = "not-same",
		light = { intensity = 0.45, size = 5, color = { r = 1.0, g = 1.0, b = 0.5 } },
	},
	{
		type = "recipe",
		name = "kr-rifle-magazine",
		energy_required = 1,
		enabled = false,
		ingredients = {
			{ type = "item", name = "iron-plate", amount = 4 },
		},
		results = { { type = "item", name = "kr-rifle-magazine", amount = 1 } },
	},

	-- ---------------------------------------------------------------------------------------------------------------- --

	{
		type = "ammo",
		name = "kr-armor-piercing-rifle-magazine",
		icon = "__Krastorio2Assets__/icons/ammo/armor-piercing-rifle-magazine.png",
		pictures = {
			{
				size = 64,
				filename = "__Krastorio2Assets__/icons/ammo/armor-piercing-rifle-magazine.png",
				scale = 0.5,
			},
		},
		ammo_category = "bullet",
		ammo_type = {
			target_type = k_target_type,
			action = {
				{
					type = "direct",
					action_delivery = {
						{
							type = "projectile",
							projectile = "kr-armor-piercing-rifle-magazine-projectile",
							starting_speed = speed_mult * 1.75,
							direction_deviation = dev_mult * 0.15,
							range_deviation = dev_mult * 0.15,
							max_range = rifle_range,
							source_effects = {
								{
									type = "create-explosion",
									entity_name = "explosion-gunshot",
								},
							},
						},
					},
				},
			},
		},
		weight = 10 * kg,
		magazine_size = 30,
		subgroup = "ammo",
		order = "a[basic-clips]-a04[rifle-magazine]",
		stack_size = 200,
	},
	{
		type = "projectile",
		name = "kr-armor-piercing-rifle-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.02,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "kr-explosion-hit-p",
					},
					{
						type = "damage",
						damage = { amount = 14, type = "physical" },
					},
				},
			},
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/armor-piercing-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/armor-piercing-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
			draw_as_shadow = true,
		},
		--hit_at_collision_position = true,
		force_condition = "not-same",
		light = { intensity = 0.25, size = 7, color = { r = 1.0, g = 0.8, b = 0.5 } },
	},

	{
		type = "recipe",
		name = "kr-armor-piercing-rifle-magazine",
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ type = "item", name = "kr-rifle-magazine", amount = 1 },
			{ type = "item", name = "steel-plate", amount = 2 },
		},
		results = { { type = "item", name = "kr-armor-piercing-rifle-magazine", amount = 1 } },
	},

	-- ---------------------------------------------------------------------------------------------------------------- --

	{
		type = "ammo",
		name = "kr-uranium-rifle-magazine",
		icon = "__Krastorio2Assets__/icons/ammo/uranium-rifle-magazine.png",
		pictures = {
			{ filename = "__Krastorio2Assets__/icons/ammo/uranium-rifle-magazine.png", size = 64, scale = 0.5 },
		},
		ammo_category = "bullet",
		ammo_type = {
			target_type = k_target_type,
			action = {
				{
					type = "direct",
					action_delivery = {
						{
							type = "projectile",
							projectile = "kr-uranium-rifle-magazine-projectile",
							starting_speed = speed_mult * 1.75,
							direction_deviation = dev_mult * 0.15,
							range_deviation = dev_mult * 0.15,
							max_range = rifle_range,
							source_effects = {
								{
									type = "create-explosion",
									entity_name = "explosion-gunshot",
								},
							},
						},
					},
				},
			},
		},
		magazine_size = 30,
		subgroup = "ammo",
		order = "a[basic-clips]-a05[rifle-magazine]",
		stack_size = 200,
	},

	{
		type = "projectile",
		name = "kr-uranium-rifle-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.02,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "kr-explosion-hit-u",
					},
					{
						type = "damage",
						damage = { amount = 14, type = "physical" },
					},
					{
						type = "damage",
						damage = { amount = 6, type = "kr-radioactive" },
					},
				},
			},
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/uranium-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/uranium-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
			draw_as_shadow = true,
		},
		--hit_at_collision_position = true,
		force_condition = "not-same",
		light = { intensity = 0.25, size = 7, color = { r = 0.5, g = 1, b = 0.5 } },
	},

	{
		type = "recipe",
		name = "kr-uranium-rifle-magazine",
		energy_required = 3,
		enabled = false,
		ingredients = {
			{ type = "item", name = "kr-armor-piercing-rifle-magazine", amount = 1 },
			{ type = "item", name = "uranium-238", amount = 2 },
		},
		results = { { type = "item", name = "kr-uranium-rifle-magazine", amount = 1 } },
	},

	-- ---------------------------------------------------------------------------------------------------------------- --

	{
		type = "ammo",
		name = "kr-imersite-rifle-magazine",
		icon = "__Krastorio2Assets__/icons/ammo/imersite-rifle-magazine.png",
		pictures = {
			{
				size = 64,
				filename = "__Krastorio2Assets__/icons/ammo/imersite-rifle-magazine.png",
				scale = 0.5,
			},
		},
		ammo_category = "bullet",
		ammo_type = {
			target_type = k_target_type,
			action = {
				{
					type = "direct",
					action_delivery = {
						{
							type = "projectile",
							projectile = "kr-imersite-rifle-magazine-projectile",
							starting_speed = speed_mult * 2.25,
							direction_deviation = dev_mult * 0.1,
							range_deviation = dev_mult * 0.1,
							max_range = rifle_range,
							source_effects = {
								{
									type = "create-explosion",
									entity_name = "explosion-gunshot",
								},
							},
						},
					},
				},
			},
		},
		magazine_size = 30,
		subgroup = "ammo",
		order = "a[basic-clips]-a06[rifle-magazine]",
		stack_size = 200,
	},

	{
		type = "projectile",
		name = "kr-imersite-rifle-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.02,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "kr-explosion-hit-i",
					},
					{
						type = "damage",
						damage = { amount = 14, type = "physical" },
					},
					{
						type = "damage",
						damage = { amount = 10, type = "laser" },
					},
				},
			},
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/imersite-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/imersite-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
			draw_as_shadow = true,
		},
		--hit_at_collision_position = true,
		force_condition = "not-same",
		light = { intensity = 0.25, size = 8, color = { r = 1, g = 0.45, b = 0.8 } },
	},

	{
		type = "recipe",
		name = "kr-imersite-rifle-magazine",
		energy_required = 4,
		enabled = false,
		ingredients = {
			{ type = "item", name = "kr-uranium-rifle-magazine", amount = 1 },
			{ type = "item", name = "kr-imersite-crystal", amount = 2 },
		},
		results = { { type = "item", name = "kr-imersite-rifle-magazine", amount = 1 } },
	},
})

----------------------------------------------------------------------------------------------------------------------
----------------------------------------- -- ANTI-MATERIAL RIFLE STUFF -- --------------------------------------------
----------------------------------------------------------------------------------------------------------------------

data:extend({

	{
		type = "gun",
		name = "kr-anti-materiel-rifle",
		icon = "__Krastorio2Assets__/icons/guns/anti-materiel-rifle.png",
		subgroup = "gun",
		order = "c1[anti-materiel-rifle]",
		attack_parameters = {
			type = "projectile",
			ammo_category = "kr-anti-materiel-rifle-ammo",
			cooldown = 60,
			movement_slow_down_factor = 0.75,
			shell_particle = {
				name = "shell-particle",
				direction_deviation = dev_mult * 0.1,
				speed = 0.1,
				speed_deviation = 0.03,
				center = { 0, 0.1 },
				creation_distance = -0.5,
				starting_frame_speed = 0.4,
				starting_frame_speed_deviation = 0.1,
			},
			projectile_creation_distance = 1.125,
			min_range = k_s_rifle_min_range,
			range = sniper_range,
			sound = {
				{
					filename = "__Krastorio2Assets__/sounds/weapons/anti-materiel-rifle.ogg",
					volume = 0.5,
				},
			},
		},
		stack_size = 10,
	},

	{
		type = "recipe",
		name = "kr-anti-materiel-rifle",
		energy_required = 10,
		enabled = false,
		ingredients = {
			{ type = "item", name = "submachine-gun", amount = 2 },
			{ type = "item", name = "steel-plate", amount = 4 },
		},
		results = { { type = "item", name = "kr-anti-materiel-rifle", amount = 1 } },
	},

	-- ---------------------------------------------------------------------------------------------------------------- --

	{
		type = "ammo",
		name = "kr-anti-materiel-rifle-magazine",
		icon = "__Krastorio2Assets__/icons/ammo/anti-materiel-rifle-magazine.png",
		pictures = {
			{ filename = "__Krastorio2Assets__/icons/ammo/anti-materiel-rifle-magazine.png", size = 64, scale = 0.5 },
		},
		ammo_category = "kr-anti-materiel-rifle-ammo",
		ammo_type = {
			cooldown_modifier = 0.8,
			target_type = k_target_type,
			action = {
				{
					type = "direct",
					action_delivery = {
						{
							type = "projectile",
							projectile = "kr-anti-materiel-rifle-magazine-projectile",
							starting_speed = speed_mult * 3,
							direction_deviation = dev_mult * 0.02,
							range_deviation = dev_mult * 0.02,
							max_range = sniper_range,
							source_effects = {
								{
									type = "create-explosion",
									entity_name = "explosion-gunshot",
								},
							},
						},
					},
					force = "not-same",
				},
			},
		},
		magazine_size = 7,
		subgroup = "ammo",
		order = "a[basic-clips]-a07[anti-materiel-rifle-magazine]",
		stack_size = 200,
		weight = 5 * kg,
	},

	{
		type = "projectile",
		name = "kr-anti-materiel-rifle-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.025,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "explosion-hit",
					},
					{
						type = "nested-result",
						action = {
							type = "area",
							radius = k_d_radius + 0.25,
							action_delivery = {
								type = "instant",
								target_effects = {
									{
										type = "damage",
										damage = { amount = 80, type = "physical" },
									},
								},
							},
							force = "not-same",
						},
					},
				},
			},
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/anti-materiel-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 100,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/anti-materiel-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 100,
			priority = "high",
			draw_as_shadow = true,
		},
		--hit_at_collision_position = true,
		force_condition = "not-same",
		light = { intensity = 0.45, size = 8, color = { r = 1.0, g = 1.0, b = 0.5 } },
	},

	{
		type = "recipe",
		name = "kr-anti-materiel-rifle-magazine",
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ type = "item", name = "coal", amount = 3 },
			{ type = "item", name = "iron-plate", amount = 2 },
			{ type = "item", name = "copper-plate", amount = 1 },
		},
		results = { { type = "item", name = "kr-anti-materiel-rifle-magazine", amount = 1 } },
	},

	-- ---------------------------------------------------------------------------------------------------------------- --

	{
		type = "ammo",
		name = "kr-armor-piercing-anti-materiel-rifle-magazine",
		icon = "__Krastorio2Assets__/icons/ammo/armor-piercing-anti-materiel-rifle-magazine.png",
		pictures = {
			{
				filename = "__Krastorio2Assets__/icons/ammo/armor-piercing-anti-materiel-rifle-magazine.png",
				size = 64,
				scale = 0.5,
			},
		},
		ammo_category = "kr-anti-materiel-rifle-ammo",
		ammo_type = {
			target_type = k_target_type,
			action = {
				{
					type = "direct",
					action_delivery = {
						{
							type = "projectile",
							projectile = "kr-armor-piercing-anti-materiel-rifle-magazine-projectile",
							starting_speed = speed_mult * 3,
							direction_deviation = dev_mult * 0.02,
							range_deviation = dev_mult * 0.02,
							max_range = sniper_range,
							source_effects = {
								{
									type = "create-explosion",
									entity_name = "explosion-gunshot",
								},
							},
						},
					},
					force = "not-same",
				},
			},
		},
		magazine_size = 7,
		subgroup = "ammo",
		order = "a[basic-clips]-a08[anti-materiel-rifle-magazine]",
		stack_size = 200,
		weight = 10 * kg,
	},

	{
		type = "projectile",
		name = "kr-armor-piercing-anti-materiel-rifle-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.025,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "kr-explosion-hit-p",
					},
					{
						type = "nested-result",
						action = {
							type = "area",
							radius = k_d_radius + 0.25,
							action_delivery = {
								type = "instant",
								target_effects = {
									{
										type = "damage",
										damage = { amount = 125, type = "physical" },
									},
								},
							},
							force = "not-same",
						},
					},
				},
			},
			force = "not-same",
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/armor-piercing-anti-materiel-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/armor-piercing-anti-materiel-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high",
			draw_as_shadow = true,
		},
		--hit_at_collision_position = true,
		force_condition = "not-same",
		light = { intensity = 0.45, size = 8, color = { r = 1.0, g = 0.8, b = 0.5 } },
	},

	{
		type = "recipe",
		name = "kr-armor-piercing-anti-materiel-rifle-magazine",
		energy_required = 3,
		enabled = false,
		ingredients = {
			{ type = "item", name = "kr-anti-materiel-rifle-magazine", amount = 1 },
			{ type = "item", name = "steel-plate", amount = 3 },
		},
		results = { { type = "item", name = "kr-armor-piercing-anti-materiel-rifle-magazine", amount = 1 } },
	},

	-- ---------------------------------------------------------------------------------------------------------------- --

	{
		type = "ammo",
		name = "kr-uranium-anti-materiel-rifle-magazine",
		icon = "__Krastorio2Assets__/icons/ammo/uranium-anti-materiel-rifle-magazine.png",
		pictures = {
			{
				filename = "__Krastorio2Assets__/icons/ammo/uranium-anti-materiel-rifle-magazine.png",
				size = 64,
				scale = 0.5,
			},
		},
		ammo_category = "kr-anti-materiel-rifle-ammo",
		ammo_type = {
			target_type = k_target_type,
			action = {
				{
					type = "direct",
					action_delivery = {
						{
							type = "projectile",
							projectile = "kr-uranium-anti-materiel-rifle-magazine-projectile",
							starting_speed = speed_mult * 3,
							direction_deviation = dev_mult * 0.02,
							range_deviation = dev_mult * 0.02,
							max_range = sniper_range,
							source_effects = {
								{
									type = "create-explosion",
									entity_name = "explosion-gunshot",
								},
							},
						},
					},
					force = "not-same",
				},
			},
		},
		magazine_size = 7,
		subgroup = "ammo",
		order = "a[basic-clips]-a09[anti-materiel-rifle-magazine]",
		stack_size = 200,
		weight = 20 * kg,
	},

	{
		type = "projectile",
		name = "kr-uranium-anti-materiel-rifle-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.025,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "kr-explosion-hit-u",
					},
					{
						type = "nested-result",
						action = {
							type = "area",
							radius = k_d_radius + 0.25,
							action_delivery = {
								type = "instant",
								target_effects = {
									{
										type = "damage",
										damage = { amount = 125, type = "physical" },
									},
									{
										type = "damage",
										damage = { amount = 75, type = "kr-radioactive" },
									},
								},
							},
							force = "not-same",
						},
					},
				},
			},
			force = "not-same",
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/uranium-anti-materiel-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 100,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/uranium-anti-materiel-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 100,
			priority = "high",
			draw_as_shadow = true,
		},
		force_condition = "not-same",
		light = { intensity = 0.45, size = 8, color = { r = 0.5, g = 1, b = 0.5 } },
	},

	{
		type = "recipe",
		name = "kr-uranium-anti-materiel-rifle-magazine",
		energy_required = 4,
		enabled = false,
		ingredients = {
			{ type = "item", name = "kr-anti-materiel-rifle-magazine", amount = 1 },
			{ type = "item", name = "uranium-238", amount = 3 },
		},
		results = { { type = "item", name = "kr-uranium-anti-materiel-rifle-magazine", amount = 1 } },
	},

	-- ---------------------------------------------------------------------------------------------------------------- --

	{
		type = "ammo",
		name = "kr-imersite-anti-materiel-rifle-magazine",
		icon = "__Krastorio2Assets__/icons/ammo/imersite-anti-materiel-rifle-magazine.png",
		pictures = {
			{
				filename = "__Krastorio2Assets__/icons/ammo/imersite-anti-materiel-rifle-magazine.png",
				size = 64,
				scale = 0.5,
			},
		},
		ammo_category = "kr-anti-materiel-rifle-ammo",
		ammo_type = {
			target_type = k_target_type,
			action = {
				{
					type = "direct",
					action_delivery = {
						{
							type = "projectile",
							projectile = "kr-imersite-anti-materiel-rifle-magazine-projectile",
							starting_speed = speed_mult * 5,
							direction_deviation = dev_mult * 0.02,
							range_deviation = dev_mult * 0.02,
							max_range = sniper_range,
							source_effects = {
								{
									type = "create-explosion",
									entity_name = "explosion-gunshot",
								},
							},
						},
					},
					force = "not-same",
				},
			},
		},
		magazine_size = 7,
		subgroup = "ammo",
		order = "a[basic-clips]-a10[anti-materiel-rifle-magazine]",
		stack_size = 200,
		weight = 20 * kg,
	},

	{
		type = "projectile",
		name = "kr-imersite-anti-materiel-rifle-magazine-projectile",
		flags = { "not-on-map" },
		hidden = true,
		collision_box = bullets_collision_box,
		acceleration = -0.02,
		action = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-entity",
						entity_name = "kr-explosion-hit-i",
					},
					{
						type = "nested-result",
						action = {
							type = "area",
							radius = k_d_radius + 0.25,
							action_delivery = {
								type = "instant",
								target_effects = {
									{
										type = "damage",
										damage = { amount = 125, type = "physical" },
									},
									{
										type = "damage",
										damage = { amount = 50, type = "laser" },
									},
									{
										type = "damage",
										damage = { amount = 25, type = "kr-radioactive" },
									},
								},
							},
							force = "not-same",
						},
					},
				},
			},
		},
		animation = {
			filename = "__Krastorio2Assets__/projectiles/imersite-anti-materiel-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 100,
			priority = "high",
		},
		shadow = {
			filename = "__Krastorio2Assets__/projectiles/imersite-anti-materiel-rifle-magazine.png",
			frame_count = 1,
			width = 3,
			height = 100,
			priority = "high",
			draw_as_shadow = true,
		},
		--hit_at_collision_position = true,
		force_condition = "not-same",
		light = { intensity = 0.5, size = 9, color = { r = 1, g = 0.45, b = 0.8 } },
	},

	{
		type = "recipe",
		name = "kr-imersite-anti-materiel-rifle-magazine",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{ type = "item", name = "kr-anti-materiel-rifle-magazine", amount = 1 },
			{ type = "item", name = "kr-imersite-crystal", amount = 3 },
		},
		results = { { type = "item", name = "kr-imersite-anti-materiel-rifle-magazine", amount = 1 } },
	},
})

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------- -- EDIT THINGS -- ----------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

-- -- Vanilla

data.raw.gun["shotgun"].attack_parameters.cooldown = 60
data.raw.gun["shotgun"].attack_parameters.movement_slow_down_factor = 0.2
data.raw.gun["shotgun"].attack_parameters.damage_modifier = 1.5

data.raw.gun["combat-shotgun"].attack_parameters.cooldown = 30
data.raw.gun["combat-shotgun"].attack_parameters.movement_slow_down_factor = 0.3
data.raw.gun["combat-shotgun"].attack_parameters.damage_modifier = 1.5

data.raw.ammo["shotgun-shell"].magazine_size = 6
data.raw.ammo["piercing-shotgun-shell"].magazine_size = 6
data.raw.ammo["shotgun-shell"].ammo_type.action = {
	{
		type = "direct",
		action_delivery = {
			type = "instant",
			source_effects = {
				{
					type = "create-explosion",
					entity_name = "explosion-gunshot",
				},
			},
		},
	},
	{
		type = "direct",
		repeat_count = 16,
		action_delivery = {
			type = "projectile",
			projectile = "shotgun-pellet",
			starting_speed = speed_mult * 1,
			starting_speed_deviation = 0.1,
			direction_deviation = dev_mult * 0.3,
			range_deviation = dev_mult * 0.3,
			max_range = 15,
		},
	},
}
data.raw.ammo["piercing-shotgun-shell"].ammo_type.action = {
	{
		type = "direct",
		action_delivery = {
			type = "instant",
			source_effects = {
				{
					type = "create-explosion",
					entity_name = "explosion-gunshot",
				},
			},
		},
	},
	{
		type = "direct",
		repeat_count = 16,
		action_delivery = {
			type = "projectile",
			projectile = "shotgun-pellet",
			starting_speed = speed_mult * 1.2,
			starting_speed_deviation = 0.1,
			direction_deviation = dev_mult * 0.3,
			range_deviation = dev_mult * 0.3,
			max_range = 15,
		},
	},
}
data.raw.projectile["shotgun-pellet"].acceleration = -0.01
data.raw.projectile["shotgun-pellet"].action.action_delivery.target_effects.damage = { amount = 6, type = "physical" }

data.raw.projectile["piercing-shotgun-pellet"].acceleration = -0.01
data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery.target_effects.damage = {
	amount = 10,
	type = "physical",
}

--data.raw["ammo-turret"]["gun-turret"].localised_name={"kr-gun-turret"}
data.raw["ammo-turret"]["gun-turret"].attack_parameters.range = 25
data.raw["ammo-turret"]["gun-turret"].attack_parameters.ammo_category = "bullet"
data.raw["ammo-turret"]["gun-turret"].attack_parameters.min_range = turret_range

data.raw["ammo"]["cannon-shell"].ammo_type.action.action_delivery.max_range = 50
data.raw["ammo"]["explosive-cannon-shell"].ammo_type.action.action_delivery.max_range = 50
data.raw["ammo"]["uranium-cannon-shell"].ammo_type.action.action_delivery.max_range = 50
data.raw["ammo"]["explosive-uranium-cannon-shell"].ammo_type.action.action_delivery.max_range = 50

data.raw.gun["artillery-wagon-cannon"].attack_parameters.range = 6 * 32

data.raw.gun["vehicle-machine-gun"].attack_parameters.range = rifle_range
data.raw.gun["vehicle-machine-gun"].attack_parameters.min_range = 1.75
data.raw.gun["vehicle-machine-gun"].attack_parameters.ammo_category = "bullet"
data.raw.gun["tank-machine-gun"].attack_parameters.range = rifle_range
data.raw.gun["tank-machine-gun"].attack_parameters.min_range = 2
data.raw.gun["tank-machine-gun"].attack_parameters.ammo_category = "bullet"
data.raw.gun["tank-cannon"].attack_parameters.range = 50
data.raw.gun["rocket-launcher"].attack_parameters.range = 50

-- -- Vanilla worms

data.raw.turret["small-worm-turret"].attack_parameters.range = 30
data.raw.turret["small-worm-turret"].call_for_help_radius = 40

data.raw.turret["medium-worm-turret"].attack_parameters.range = 35
data.raw.turret["medium-worm-turret"].call_for_help_radius = 45

data.raw.turret["big-worm-turret"].attack_parameters.range = 40
data.raw.turret["big-worm-turret"].call_for_help_radius = 50

data.raw.turret["behemoth-worm-turret"].attack_parameters.range = 55
data.raw.turret["behemoth-worm-turret"].call_for_help_radius = 65

-- -- Krastorio

data.raw.ammo["uranium-rounds-magazine"].hidden = true
data.raw.ammo["kr-imersite-rounds-magazine"].hidden = true

data.raw.gun["kr-advanced-tank-machine-gun"].attack_parameters.ammo_category = "kr-anti-materiel-rifle-ammo"
data.raw.gun["kr-advanced-tank-machine-gun"].attack_parameters.range = sniper_range
data.raw.gun["kr-advanced-tank-machine-gun"].attack_parameters.min_range = 3.5
data.raw.gun["kr-advanced-tank-machine-gun"].attack_parameters.cooldown = 15
data.raw.gun["kr-advanced-tank-machine-gun"].attack_parameters.sound = {
	{
		filename = "__Krastorio2Assets__/sounds/weapons/anti-materiel-rifle.ogg",
		volume = 0.8,
	},
}

data.raw.recipe["uranium-rounds-magazine-recycling"] = nil
