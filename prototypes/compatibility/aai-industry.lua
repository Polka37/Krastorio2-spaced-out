local data_util = require("data-util")

if mods["aai-loaders"] then
	data.raw.technology["aai-kr-advanced-loader"].hidden = true
	data.raw.technology["aai-kr-advanced-loader"].hidden_in_factoriopedia = true
	data.raw.technology["aai-kr-advanced-loader"].prerequisites = nil
	data_util.add_prerequisite("aai-kr-superior-loader", "aai-turbo-loader")
end
