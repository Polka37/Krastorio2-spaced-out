local handler = require("__core__.lualib.event_handler")

handler.add_libraries({
	require("scripts.freeplay"),
})

require("scripts.milestones")
