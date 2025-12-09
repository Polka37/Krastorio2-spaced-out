if not mods["Cerys-Moon-of-Fulgora"] then
	return
end

-- Buff cerys oxide reactor to match K2 changes to basic reactor
data.raw.reactor["cerys-mixed-oxide-reactor"].neighbour_bonus = 0.25
data.raw.reactor["cerys-mixed-oxide-reactor"].consumption = "1GW"
