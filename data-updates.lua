require("prototypes.updates.base.entities")
require("prototypes.updates.base.fluids")
require("prototypes.updates.base.items")
require("prototypes.updates.base.projectiles")
require("prototypes.updates.base.recipes")
require("prototypes.updates.base.resources")
require("prototypes.updates.base.technologies")
require("prototypes.updates.base.weapons-realistic")
require("prototypes.updates.base.weight")

require("prototypes.updates.adjust-stack-sizes")
require("prototypes.updates.generate-matter-recipes")
require("prototypes.updates.surface-conditions")

--require("prototypes.compatibility.aai-industry")

require("prototypes.compatibility.any-planet-start")
require("prototypes.compatibility.planets.castra")
require("prototypes.compatibility.planets.cerys")
require("prototypes.compatibility.planets.corrundum")
require("prototypes.compatibility.planets.maraxsis")
require("prototypes.compatibility.planets.moshine")
require("prototypes.compatibility.planets.muluna")
require("prototypes.compatibility.Age-of-Production")

-- Must be after Muluna
require("prototypes.updates.generate-tech-card-cooling")

-- Has to be after base updates so it can use the updated icons
require("prototypes.recipes.smelting-crafting")
