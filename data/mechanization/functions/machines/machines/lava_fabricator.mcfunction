
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
execute unless block ~ ~1 ~ #mechanization:lava_fab run scoreboard players set @s mech_data 0

execute if score @s mech_power matches 1280.. if score @s mech_data matches 8 run setblock ~ ~1 ~ lava[level=0]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run particle flame ~0.5 ~1.5 ~0.5 0 0 0 0 1 force @a[distance=..16]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run particle flame ~0.5 ~1.5 ~-0.5 0 0 0 0 1 force @a[distance=..16]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run particle flame ~-0.5 ~1.5 ~0.5 0 0 0 0 1 force @a[distance=..16]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run particle flame ~-0.5 ~1.5 ~-0.5 0 0 0 0 1 force @a[distance=..16]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run particle flame ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[distance=..16]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run particle flame ~0.5 ~0.5 ~-0.5 0 0 0 0 1 force @a[distance=..16]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run particle flame ~-0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[distance=..16]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run particle flame ~-0.5 ~0.5 ~-0.5 0 0 0 0 1 force @a[distance=..16]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run particle flame ~-0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[distance=..16]
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1..7 run playsound minecraft:block.lava.ambient block @a[distance=..16] ~ ~1 ~ 1 1

execute if score @s mech_power matches 1280.. if block ~ ~1 ~ #mechanization:lava_fab run scoreboard players add @s mech_data 1
execute if score @s mech_power matches 1280.. if score @s mech_data matches 1.. run scoreboard players remove @s mech_power 1280

scoreboard players set temp_0 mech_data 0
execute if entity @s[tag=mech_upgraded] if score @s mech_power matches 60.. store success score temp_0 mech_data run fill ~5 ~1 ~5 ~-5 ~2 ~-5 water replace #mechanization:lava_fab_water
execute if score temp_0 mech_data matches 1 run scoreboard players remove @s mech_power 60
scoreboard players set temp_0 mech_data 0
execute if entity @s[tag=mech_upgraded] if score @s mech_power matches 60.. store success score temp_0 mech_data run fill ~5 ~1 ~5 ~-5 ~2 ~-5 air replace #mechanization:lava_fab_air
execute if score temp_0 mech_data matches 1 run scoreboard players remove @s mech_power 60

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s ArmorItems[3].tag.mech_data int 1 run scoreboard players get @s mech_data

#cleanup
execute unless block ~ ~ ~ barrier run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
execute unless block ~ ~ ~ barrier run kill @s
