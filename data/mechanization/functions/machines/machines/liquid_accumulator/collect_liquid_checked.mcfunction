
#data
item replace block -29999999 0 1601 container.0 with minecraft:air
scoreboard players set $temp_0 mech_data 0

#liquids
execute if score $temp_0 mech_data matches 0 if score @s mech_fluid matches ..3000 if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"water"} if block ~ ~1 ~ minecraft:water[level=0] run scoreboard players set $temp_0 mech_data 4
execute if score $temp_0 mech_data matches 4 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_water
execute if score $temp_0 mech_data matches 4 run setblock ~ ~1 ~ minecraft:air
execute if score $temp_0 mech_data matches 4 run scoreboard players add @s mech_fluid 1000

execute if score $temp_0 mech_data matches 0 if score @s mech_fluid matches ..3000 if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"lava"} if block ~ ~1 ~ minecraft:lava[level=0] run scoreboard players set $temp_0 mech_data 5
execute if score $temp_0 mech_data matches 5 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_lava
execute if score $temp_0 mech_data matches 5 run setblock ~ ~1 ~ minecraft:air
execute if score $temp_0 mech_data matches 5 run scoreboard players add @s mech_fluid 1000

execute if score $temp_0 mech_data matches 0 if score @s mech_fluid matches ..3000 if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"water"} if block ~ ~1 ~ minecraft:water_cauldron[level=3] run scoreboard players set $temp_0 mech_data 1
execute if score $temp_0 mech_data matches 1 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_water
execute if score $temp_0 mech_data matches 1 run setblock ~ ~1 ~ minecraft:cauldron
execute if score $temp_0 mech_data matches 1 run scoreboard players add @s mech_fluid 1000

execute if score $temp_0 mech_data matches 0 if score @s mech_fluid matches ..3000 if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"powder_snow"} if block ~ ~1 ~ minecraft:powder_snow_cauldron[level=3] run scoreboard players set $temp_0 mech_data 2
execute if score $temp_0 mech_data matches 2 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_powder_snow
execute if score $temp_0 mech_data matches 2 run setblock ~ ~1 ~ minecraft:cauldron
execute if score $temp_0 mech_data matches 2 run scoreboard players add @s mech_fluid 1000

execute if score $temp_0 mech_data matches 0 if score @s mech_fluid matches ..3000 if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"lava"} if block ~ ~1 ~ minecraft:lava_cauldron run scoreboard players set $temp_0 mech_data 3
execute if score $temp_0 mech_data matches 3 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_lava
execute if score $temp_0 mech_data matches 3 run setblock ~ ~1 ~ minecraft:cauldron
execute if score $temp_0 mech_data matches 3 run scoreboard players add @s mech_fluid 1000

execute if score $temp_0 mech_data matches 0 if score @s mech_fluid matches ..3750 if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"milk"} positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=cow,distance=..1] run scoreboard players set $temp_0 mech_data 6
execute if score $temp_0 mech_data matches 0 if score @s mech_fluid matches ..3750 if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"milk"} positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=goat,distance=..1] run scoreboard players set $temp_0 mech_data 6
execute if score $temp_0 mech_data matches 6 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_milk
execute if score $temp_0 mech_data matches 6 run scoreboard players add @s mech_fluid 250

execute if score $temp_0 mech_data matches 0 if score @s mech_fluid matches ..3950 if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"experience"} positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air as @p[distance=..1,level=31..] run function mechanization:machines/machines/liquid_accumulator/collect_xp
execute if score $temp_0 mech_data matches 7 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_experience
execute if score $temp_0 mech_data matches 7 run scoreboard players add @s mech_fluid 50

#cleanup
execute if data block -29999999 0 1601 Items[{Slot:0b}] run data modify entity @s Item.tag.tank set from block -29999999 0 1601 Items[{Slot:0b}]
