if not mods["Age-of-Production"] then
  return
end
local data_util = require("data-util")

data_util.add_prerequisite("aop-woodworking", "kr-greenhouse")
data_util.add_prerequisite("aop-woodworking", "agricultural-science-pack")

data_util.remove_prerequisite("aop-woodworking", "tree-seeding")
data_util.remove_prerequisite("aop-woodworking", "production-science-pack")
data.raw.technology["aop-woodworking"].research_trigger = { type = "mine-entity", entity = "kr-greenhouse" }

data.raw.technology["tree-seeding"] = nil