execute if entity @s[tag=mech_active] unless block ~1 ~ ~ #minecraft:logs run tag @e[type=armor_stand,tag=mech_tree_feller_model,limit=1,sort=nearest] remove mech_active
execute if entity @s[tag=mech_active] unless block ~1 ~ ~ #minecraft:logs run tag @s remove mech_active
execute if entity @s[tag=!mech_active,scores={mech_power=160..}] if block ~1 ~ ~ #minecraft:logs run tag @e[type=armor_stand,tag=mech_tree_feller_model,limit=1,sort=nearest] add mech_active
execute if entity @s[tag=!mech_active,scores={mech_power=160..}] if block ~1 ~ ~ #minecraft:logs run tag @s add mech_active

scoreboard players set temp_0 mech_data 0
execute unless block ~1 ~ ~ #minecraft:logs run scoreboard players set temp_0 mech_data -1

execute if block ~1 ~ ~ minecraft:oak_log run summon item ~-1 ~1 ~ {Tags:["mech_chopped_wood"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if block ~1 ~ ~ minecraft:spruce_log run summon item ~-1 ~1 ~ {Tags:["mech_chopped_wood"],Item:{id:"minecraft:spruce_log",Count:1b}}
execute if block ~1 ~ ~ minecraft:jungle_log run summon item ~-1 ~1 ~ {Tags:["mech_chopped_wood"],Item:{id:"minecraft:jungle_log",Count:1b}}
execute if block ~1 ~ ~ minecraft:birch_log run summon item ~-1 ~1 ~ {Tags:["mech_chopped_wood"],Item:{id:"minecraft:birch_log",Count:1b}}
execute if block ~1 ~ ~ minecraft:acacia_log run summon item ~-1 ~1 ~ {Tags:["mech_chopped_wood"],Item:{id:"minecraft:acacia_log",Count:1b}}
execute if block ~1 ~ ~ minecraft:dark_oak_log run summon item ~-1 ~1 ~ {Tags:["mech_chopped_wood"],Item:{id:"minecraft:dark_oak_log",Count:1b}}

execute if score temp_0 mech_data matches 0 if entity @s[scores={mech_power=160..},tag=!mech_upgraded] store result score temp_0 mech_data run fill ~1 ~ ~ ~1 ~12 ~ air replace #minecraft:logs
execute if score temp_0 mech_data matches 0 if entity @s[scores={mech_power=160..},tag=mech_upgraded] store result score temp_0 mech_data run fill ~-1 ~ ~-2 ~3 ~24 ~2 air replace #minecraft:logs

execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_chopped_wood,limit=1] Item.Count int 1 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[tag=mech_chopped_wood] remove mech_chopped_wood
execute if score temp_0 mech_data matches 1.. run scoreboard players remove @s mech_power 160
execute if score temp_0 mech_data matches 1.. run playsound mechanization:machines.tree_feller block @a[distance=..16] ~ ~ ~
