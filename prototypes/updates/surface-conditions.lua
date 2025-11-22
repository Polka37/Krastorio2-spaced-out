--Defining the wind speed surface condition
--Code taken from Rubia by LoupAndSnoop to ensure compatibility, i would prefer if it was chandled by planetslib instead
data:extend({
	{
		type = "surface-property",
		name = "rubia-wind-speed",
		default_value = 15,
		order = "r[rubia]-a",
	},
})

--Additional wind speeds for flavor
local function set_wind_speed(planet_name, speed)
	if data.raw["planet"][planet_name] then
		data.raw["planet"][planet_name].surface_properties["rubia-wind-speed"] = speed
	end
end
data.raw["surface"]["space-platform"].surface_properties["rubia-wind-speed"] = 0
set_wind_speed("nauvis", 15)
set_wind_speed("fulgora", 35)
set_wind_speed("vulcanus", 80)
set_wind_speed("gleba", 5)
set_wind_speed("aquilo", 30)

--Mod planets. Keep it roughly alphabetical
set_wind_speed("arig", 55)
set_wind_speed("castra", 18)
set_wind_speed("cerys", 5)
set_wind_speed("corrundum", 30)
set_wind_speed("cubium", 10)
set_wind_speed("frozeta", 5)
set_wind_speed("igrys", 35)
set_wind_speed("jahtra", 23)
set_wind_speed("janus", 15)
set_wind_speed("lignumis", 19)
set_wind_speed("maraxsis", 0)
set_wind_speed("moshine", 40)
set_wind_speed("muluna", 0)
set_wind_speed("paracelsin", 10)
set_wind_speed("rubia", 300)
--set_wind_speed("secretas", 8)
set_wind_speed("tenebris", 60)
set_wind_speed("tiber", 12)
