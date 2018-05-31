summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray_start"],Duration:0}
tp @e[tag=mech_ray_start] ~ ~1.61 ~ ~ ~

scoreboard players set temp_0 mech_data 0

execute if entity @s[nbt={SelectedItem:{tag:{mech_itemid: 2204, SpawnerType:1}}}] run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 run clear @s[gamemode=!creative] minecraft:diamond_shovel{mech_itemid: 2204, SpawnerType:1} 1
execute if entity @s[nbt={SelectedItem:{tag:{mech_itemid: 2204, SpawnerType:2}}}] run scoreboard players set temp_0 mech_data 2
execute if score temp_0 mech_data matches 2 run clear @s[gamemode=!creative] minecraft:diamond_shovel{mech_itemid: 2204, SpawnerType:2} 2
execute if entity @s[nbt={SelectedItem:{tag:{mech_itemid: 2204, SpawnerType:3}}}] run scoreboard players set temp_0 mech_data 3
execute if score temp_0 mech_data matches 3 run clear @s[gamemode=!creative] minecraft:diamond_shovel{mech_itemid: 2204, SpawnerType:3} 3
execute if entity @s[nbt={SelectedItem:{tag:{mech_itemid: 2204, SpawnerType:4}}}] run scoreboard players set temp_0 mech_data 4
execute if score temp_0 mech_data matches 4 run clear @s[gamemode=!creative] minecraft:diamond_shovel{mech_itemid: 2204, SpawnerType:4} 4
execute if entity @s[nbt={SelectedItem:{tag:{mech_itemid: 2204, SpawnerType:5}}}] run scoreboard players set temp_0 mech_data 5
execute if score temp_0 mech_data matches 5 run clear @s[gamemode=!creative] minecraft:diamond_shovel{mech_itemid: 2204, SpawnerType:5} 5
execute if entity @s[nbt={SelectedItem:{tag:{mech_itemid: 2204, SpawnerType:6}}}] run scoreboard players set temp_0 mech_data 6
execute if score temp_0 mech_data matches 6 run clear @s[gamemode=!creative] minecraft:diamond_shovel{mech_itemid: 2204, SpawnerType:6} 6

execute as @e[tag=mech_ray_start] at @s run function mechanization:machines/tools/spawner_mover/spawner_place_trace
