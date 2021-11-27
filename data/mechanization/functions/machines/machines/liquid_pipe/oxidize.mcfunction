
execute if score @s mech_data matches 1 if data entity @s Item{id:"minecraft:waxed_weathered_copper"} run data modify entity @s Item.id set value "waxed_oxidized_copper"
execute if score @s mech_data matches 1 if data entity @s Item{id:"minecraft:waxed_exposed_copper"} run data modify entity @s Item.id set value "waxed_weathered_copper"
execute if score @s mech_data matches 1 if data entity @s Item{id:"minecraft:waxed_copper_block"} run data modify entity @s Item.id set value "waxed_exposed_copper"

scoreboard players set $math.in_0 du_data 3600
function du:math/random
scoreboard players add $math.out_0 du_data 3600

scoreboard players operation @s mech_data = $math.out_0 du_data
