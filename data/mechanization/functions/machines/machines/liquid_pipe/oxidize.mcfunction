
execute if score @s mechanization.time matches 1 if data entity @s Item{id:"minecraft:waxed_weathered_copper"} run data modify entity @s Item.id set value "waxed_oxidized_copper"
execute if score @s mechanization.time matches 1 if data entity @s Item{id:"minecraft:waxed_exposed_copper"} run data modify entity @s Item.id set value "waxed_weathered_copper"
execute if score @s mechanization.time matches 1 if data entity @s Item{id:"minecraft:waxed_copper_block"} run data modify entity @s Item.id set value "waxed_exposed_copper"

scoreboard players set @s mechanization.time 3600
execute if predicate mechanization:chance_0.5 run scoreboard players add @s mechanization.time 600
execute if predicate mechanization:chance_0.5 run scoreboard players add @s mechanization.time 600
execute if predicate mechanization:chance_0.5 run scoreboard players add @s mechanization.time 600
execute if predicate mechanization:chance_0.5 run scoreboard players add @s mechanization.time 600
execute if predicate mechanization:chance_0.5 run scoreboard players add @s mechanization.time 600
execute if predicate mechanization:chance_0.5 run scoreboard players add @s mechanization.time 600
