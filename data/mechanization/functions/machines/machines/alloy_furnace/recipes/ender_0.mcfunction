
execute if score temp_3 mech_data matches 61.. run scoreboard players set temp_4 mech_data 1
execute if score temp_3 mech_data matches 1.. unless data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotEnder"]}}] run scoreboard players set temp_4 mech_data 1

execute if score temp_4 mech_data matches 0 run scoreboard players remove temp_0 mech_data 4
execute if score temp_4 mech_data matches 0 run scoreboard players remove temp_1 mech_data 32
execute if score temp_4 mech_data matches 0 run scoreboard players remove temp_2 mech_data 32

execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 1
execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 1
execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 1
execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 1

execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 8
execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 8
execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 8
execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 8

execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 8
execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 8
execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 8
execute if score temp_4 mech_data matches 0 if entity @s[tag=mech_upgrade_nether,predicate=du:random/0.1] run scoreboard players add temp_0 mech_data 8

execute if score temp_4 mech_data matches 0 if score temp_3 mech_data matches 0 run loot replace block ~ ~ ~ container.7 loot mechanization:base/ender_alloy_ingot
execute if score temp_4 mech_data matches 0 run scoreboard players add temp_3 mech_data 4
