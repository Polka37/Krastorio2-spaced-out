local handler = require("__core__.lualib.event_handler")

handler.add_libraries({
	require("__flib__.gui"),

	require("scripts.freeplay"),
	require("scripts.roboport"),
})

require("scripts.milestones")
