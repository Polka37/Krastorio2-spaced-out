local function disable_rocket_victory()
	if remote.interfaces.space_finish_script then
		remote.call("space_finish_script", "set_no_victory", true)
	end
end

local function run()
	if not remote.interfaces.freeplay then
		return
	end
	disable_rocket_victory()
end

local freeplay = {}

freeplay.on_init = run
freeplay.on_configuration_changed = run

return freeplay
