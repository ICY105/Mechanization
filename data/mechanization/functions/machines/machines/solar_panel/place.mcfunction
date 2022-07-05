
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization.new", "mechanization.solar_panel.model", "energy.send", "smithed.block"], CustomName:'{"translate":"mech.block.solar_panel"}', Item:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:6422908}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:["mechanization.new", "mechanization.solar_panel", "energy.send", "smithed.block"], CustomName:'{"translate":"mech.block.solar_panel"}', Item:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:6422909}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:daylight_detector replace
