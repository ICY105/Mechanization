
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.solar_panel.model", "smithed.block"], CustomName:'{"translate":"mech.block.solar_panel"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422908}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}
summon minecraft:armor_stand ~ ~-0.42 ~ {Tags:["mechanization", "mechanization.new", "mechanization.solar_panel", "mechanization.upgradable", "energy.send", "smithed.block"], CustomName:'{"translate":"mech.block.solar_panel"}', ArmorItems:[{},{},{},{id:"minecraft:blast_furnace", tag:{CustomModelData:6422909}, Count:1b}], Rotation:[90f,0.0f], Pose:{Head:[0f,0.1f,0f]}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b, Small:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:daylight_detector replace
