summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray","mech_ray_start"],Duration:0}
tp @e[tag=mech_ray_start] ~ ~1.61 ~ ~ ~
execute as @e[tag=mech_ray_start] at @s run function mechanization:base/tools/machine_upgrade_2

execute if score temp_0 mech_data matches 1 run title @s actionbar ["",{"text":"Machine Upgraded","color":"dark_green"}]
execute if score temp_0 mech_data matches 1 run clear @s[gamemode=!creative] minecraft:diamond_shovel{mech_itemid:1102} 1