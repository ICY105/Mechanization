scoreboard players remove temp_0 mech_data 4
scoreboard players remove temp_1 mech_data 4
scoreboard players remove temp_2 mech_data 1

execute if block ~ ~ ~ dropper{Items:[{Slot:7b,tag:{OreDict:["ingotNether"]}}]} run scoreboard players add temp_3 mech_data 4
execute if score temp_3 mech_data matches 0 run loot replace block ~ ~ ~ container.7 loot mechanization:base/nether_alloy_ingot
