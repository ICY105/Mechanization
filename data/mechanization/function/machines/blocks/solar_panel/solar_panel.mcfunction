
# main
execute store result entity @s transformation.left_rotation[0] float 0.000065 run scoreboard players get #time mechanization.data
execute store result entity @s transformation.translation[2] float -0.000025 run scoreboard players get #time mechanization.data
execute if score #time mechanization.data matches ..0 store result entity @s transformation.translation[1] float -0.0000125 run scoreboard players get #time mechanization.data
execute if score #time mechanization.data matches 1.. store result entity @s transformation.translation[1] float 0.0000125 run scoreboard players get #time mechanization.data

execute if block ~ ~ ~ minecraft:daylight_detector[inverted=false] run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422909}
execute if block ~ ~ ~ minecraft:daylight_detector[inverted=true] run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422910}
execute unless block ~ ~ ~ minecraft:daylight_detector run kill @s

execute if score @s energy.storage matches ..2000 if entity @s[tag=!mechanization.upgraded] run function mechanization:machines/blocks/solar_panel/normal
execute if score @s energy.storage matches ..2000 if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] run function mechanization:machines/blocks/solar_panel/upgraded
execute if score @s energy.storage matches ..2000 if entity @s[tag=mechanization.upgraded.ender] run function mechanization:machines/blocks/solar_panel/ender
execute if score @s energy.storage matches ..2000 if entity @s[tag=mechanization.upgraded.nether] run function mechanization:machines/blocks/solar_panel/nether

# cleanup
execute unless block ~ ~ ~ minecraft:daylight_detector run function mechanization:base/utils/break_block/break_machine_t2
execute unless block ~ ~ ~ minecraft:daylight_detector align xyz run kill @e[type=minecraft:item_display,tag=mechanization.solar_panel.model,dx=0,dy=0,dz=0]
