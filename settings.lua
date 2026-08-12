data:extend({
	{
		type = "bool-setting",
		name = "kr-revert-thruster-fuel-changes",
		setting_type = "startup",
		default_value = false,
		order = "a1",
	},
	{
		type = "bool-setting",
		name = "kr-promethium-tech-card-space-only",
		setting_type = "startup",
		default_value = true,
		order = "a2",
	},
})

if mods["PowerOverload"] then
	require("__PowerOverload__/registry")
	PowerOverload.register_pole({
		name = "kr-superior-substation",
		default = "1GW",
	})
end
