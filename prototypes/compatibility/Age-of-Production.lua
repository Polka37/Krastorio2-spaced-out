if not mods["Age-of-Production"] then
	return
end
local data_util = require("data-util")

data_util.add_prerequisite("aop-lumber-mill", "kr-greenhouse")
data_util.add_prerequisite("aop-lumber-mill", "agricultural-science-pack")

data_util.remove_prerequisite("aop-lumber-mill", "tree-seeding")
data_util.remove_prerequisite("aop-lumber-mill", "production-science-pack")
data.raw.technology["aop-lumber-mill"].research_trigger = { type = "mine-entity", entity = "kr-greenhouse" }

if not mods["lignumis"] then
	data.raw.technology["tree-seeding"] = nil
end
