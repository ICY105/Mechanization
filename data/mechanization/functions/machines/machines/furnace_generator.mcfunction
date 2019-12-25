
## load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

## Main
replaceitem block ~ ~ ~ container.0 minecraft:cobblestone{du_gui:1b,display:{Name:'{"text":"Ignition"}'}}
data merge entity @s {Fire:32676s}
data merge block ~ ~ ~ {CookTime:0s}

#power
execute store success score temp_0 mech_data if score @s mech_power matches ..2000 if block ~ ~ ~ minecraft:furnace[lit=true]
execute if score temp_0 mech_data matches 1 run scoreboard players add @s mech_power 12
execute if score temp_0 mech_data matches 1 if entity @s[tag=mech_upgraded] run scoreboard players add @s mech_power 6
execute if score temp_0 mech_data matches 1 if entity @s[tag=mech_upgrade_ender] run scoreboard players add @s mech_power 6

execute if score temp_0 mech_data matches 1 if entity @s[tag=mech_upgrade_nether] run scoreboard players add @s mech_power 36
execute if score temp_0 mech_data matches 1 if entity @s[tag=mech_upgrade_nether] store result score temp_1 mech_data run data get block ~ ~ ~ BurnTime
execute if score temp_0 mech_data matches 1 if entity @s[tag=mech_upgrade_nether] run scoreboard players remove temp_1 mech_data 60
execute if score temp_0 mech_data matches 1 if entity @s[tag=mech_upgrade_nether] if score temp_1 mech_data matches ..0 run scoreboard players set temp_1 mech_data 1
execute if score temp_0 mech_data matches 1 if entity @s[tag=mech_upgrade_nether] store result block ~ ~ ~ BurnTime short 1 run scoreboard players get temp_1 mech_data

#model
execute if score temp_0 mech_data matches 0 store success entity @s ArmorItems[3].tag.CustomModelData int 6422001 if entity @s
execute if score temp_0 mech_data matches 1 store success entity @s ArmorItems[3].tag.CustomModelData int 6422902 if entity @s

## store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

## cleanup
execute unless block ~ ~ ~ furnace run loot spawn ~ ~ ~ loot mechanization:base/tier_1_machine_frame
execute unless block ~ ~ ~ furnace run kill @s
