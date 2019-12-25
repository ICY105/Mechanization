
scoreboard players set temp_0 mech_data 0
execute if data entity @s Item{id:"minecraft:stone"} run scoreboard players set temp_0 mech_data 1
execute if data entity @s Item{id:"minecraft:cobblestone"} run scoreboard players set temp_0 mech_data 1
execute if data entity @s Item{id:"minecraft:granite"} run scoreboard players set temp_0 mech_data 1
execute if data entity @s Item{id:"minecraft:andesite"} run scoreboard players set temp_0 mech_data 1
execute if data entity @s Item{id:"minecraft:diorite"} run scoreboard players set temp_0 mech_data 1

execute if score temp_0 mech_data matches 1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #mechanization:smash_upgrade
execute if score temp_0 mech_data matches 1 run kill @s
