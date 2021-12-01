
#data
item replace block -29999999 0 1601 container.0 with minecraft:air
scoreboard players set $temp_0 mechanization.data 0

#liquids
execute if score $temp_0 mechanization.data matches 0 if block ~ ~1 ~ minecraft:water[level=0] run scoreboard players set $temp_0 mechanization.data 4
execute if score $temp_0 mechanization.data matches 4 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_water
execute if score $temp_0 mechanization.data matches 4 run setblock ~ ~1 ~ minecraft:air
execute if score $temp_0 mechanization.data matches 4 run scoreboard players add @s mechanization.stored_fluid 1000

execute if score $temp_0 mechanization.data matches 0 if block ~ ~1 ~ minecraft:lava[level=0] run scoreboard players set $temp_0 mechanization.data 5
execute if score $temp_0 mechanization.data matches 5 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_lava
execute if score $temp_0 mechanization.data matches 5 run setblock ~ ~1 ~ minecraft:air
execute if score $temp_0 mechanization.data matches 5 run scoreboard players add @s mechanization.stored_fluid 1000

execute if score $temp_0 mechanization.data matches 0 if block ~ ~1 ~ minecraft:water_cauldron[level=3] run scoreboard players set $temp_0 mechanization.data 1
execute if score $temp_0 mechanization.data matches 1 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_water
execute if score $temp_0 mechanization.data matches 1 run setblock ~ ~1 ~ minecraft:cauldron
execute if score $temp_0 mechanization.data matches 1 run scoreboard players add @s mechanization.stored_fluid 1000

execute if score $temp_0 mechanization.data matches 0 if block ~ ~1 ~ minecraft:powder_snow_cauldron[level=3] run scoreboard players set $temp_0 mechanization.data 2
execute if score $temp_0 mechanization.data matches 2 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_powder_snow
execute if score $temp_0 mechanization.data matches 2 run setblock ~ ~1 ~ minecraft:cauldron
execute if score $temp_0 mechanization.data matches 2 run scoreboard players add @s mechanization.stored_fluid 1000

execute if score $temp_0 mechanization.data matches 0 if block ~ ~1 ~ minecraft:lava_cauldron run scoreboard players set $temp_0 mechanization.data 3
execute if score $temp_0 mechanization.data matches 3 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_lava
execute if score $temp_0 mechanization.data matches 3 run setblock ~ ~1 ~ minecraft:cauldron
execute if score $temp_0 mechanization.data matches 3 run scoreboard players add @s mechanization.stored_fluid 1000

execute if score $temp_0 mechanization.data matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=cow,distance=..1] run scoreboard players set $temp_0 mechanization.data 6
execute if score $temp_0 mechanization.data matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=goat,distance=..1] run scoreboard players set $temp_0 mechanization.data 6
execute if score $temp_0 mechanization.data matches 6 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_milk
execute if score $temp_0 mechanization.data matches 6 run scoreboard players add @s mechanization.stored_fluid 250

execute if score $temp_0 mechanization.data matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=mooshroom,distance=..1] run scoreboard players set $temp_0 mechanization.data 6
execute if score $temp_0 mechanization.data matches 6 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_mushroom_stew
execute if score $temp_0 mechanization.data matches 6 run scoreboard players add @s mechanization.stored_fluid 250

execute if score $temp_0 mechanization.data matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air as @p[distance=..1,level=31..] run function mechanization:machines/machines/liquid_accumulator/collect_xp_player
execute if score $temp_0 mechanization.data matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air as @e[type=experience_orb,distance=..1,limit=1] run function mechanization:machines/machines/liquid_accumulator/collect_xp_orb
execute if score $temp_0 mechanization.data matches 8 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_experience
execute if score $temp_0 mechanization.data matches 8 run scoreboard players operation @s mechanization.stored_fluid += $temp_1 mech_data

#cleanup
execute if data block -29999999 0 1601 Items[{Slot:0b}] run data modify entity @s Item.tag.tank set from block -29999999 0 1601 Items[{Slot:0b}]
