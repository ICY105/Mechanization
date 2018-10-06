execute if entity @s[tag=!du_sneaking] run summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray","mech_ray_start","mech_multimeter_readout"],Duration:0}
execute if entity @s[tag=du_sneaking] run summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray","mech_ray_start","mech_multimeter_idlock"],Duration:0}
scoreboard players set in_0 mech_data 120
tp @e[tag=mech_ray_start] ~ ~1.61 ~ ~ ~
execute as @e[tag=mech_ray_start] at @s run function mechanization:base/raytrace/manage_ray_invis

execute if entity @s[tag=!mech_tut_multimeter,tag=du_sneaking] run tellraw @s ["",{"translate":"mech.text.function.base.tools.spawn_multimeter.1","color":"dark_green"}]
tag @s[tag=du_sneaking] add mech_tut_multimeter

scoreboard players operation temp_0 mech_data = @s mech_gridid
execute if entity @s[tag=du_sneaking] as @e[tag=mech_ray_start] at @s run function mechanization:base/tools/multimeter_idlock
execute if entity @s[tag=mech_operator] run tag @e[tag=mech_ray_start] add mech_operator

execute if entity @s[tag=!du_sneaking] as @e[tag=mech_ray_start] at @s run function #mechanization:multimeter_readout

tag @e[tag=mech_ray_start] remove mech_ray_start
