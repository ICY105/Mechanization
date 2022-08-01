
# main
execute store result score #time mechanization.data run time query daytime
execute if score #time mechanization.data matches 12000.. run scoreboard players remove #time mechanization.data 12000
scoreboard players remove #time mechanization.data 6000

execute store result entity @s Pose.Head[0] float 0.0075 run scoreboard players get #time mechanization.data
execute if block ~ ~ ~ minecraft:daylight_detector[inverted=false] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6422909
execute if block ~ ~ ~ minecraft:daylight_detector[inverted=true] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6422910
execute unless block ~ ~ ~ minecraft:daylight_detector run kill @s

execute if score @s energy.storage matches ..2000 if entity @s[tag=!mechanization.upgraded] run function mechanization:machines/machines/solar_panel/normal
execute if score @s energy.storage matches ..2000 if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] run function mechanization:machines/machines/solar_panel/upgraded
execute if score @s energy.storage matches ..2000 if entity @s[tag=mechanization.upgraded.ender] run function mechanization:machines/machines/solar_panel/ender
execute if score @s energy.storage matches ..2000 if entity @s[tag=mechanization.upgraded.nether] run function mechanization:machines/machines/solar_panel/nether

# cleanup
execute unless block ~ ~ ~ minecraft:daylight_detector run function mechanization:base/utils/break_machine_t2
execute unless block ~ ~ ~ minecraft:daylight_detector positioned ~ ~0.8 ~ run kill @e[type=item_frame,tag=mechanization.solar_panel.model,distance=..0.2]
