
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.solar_panel", "mechanization.upgradable", "energy.send", "smithed.block"], Rotation:[90.0f, 0.0f], CustomName:'{"translate":"block.mechanization.solar_panel"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422909}, Count:1b}}
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.solar_panel.model", "smithed.block"], CustomName:'{"translate":"block.mechanization.solar_panel"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422908}, Count:1b}}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:daylight_detector replace
execute as @n[type=item_display,tag=mechanization.solar_panel.model,distance=..0.1] run data modify entity @s transformation.scale set value [1.01, 1.02, 1.01]
execute as @n[type=item_display,tag=mechanization.solar_panel.model,distance=..0.1] run data modify entity @s transformation.translation set value [0.0, 0.005, 0.0]
