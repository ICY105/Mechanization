
execute if score @s mechanization.time matches 1 if items entity @s contents minecraft:waxed_weathered_copper run item modify entity @s contents {"function":"minecraft:set_item","item":"minecraft:waxed_oxidized_copper"}
execute if score @s mechanization.time matches 1 if items entity @s contents minecraft:waxed_exposed_copper run item modify entity @s contents {"function":"minecraft:set_item","item":"minecraft:waxed_weathered_copper"}
execute if score @s mechanization.time matches 1 if items entity @s contents minecraft:waxed_copper_block run item modify entity @s contents {"function":"minecraft:set_item","item":"minecraft:waxed_exposed_copper"}

scoreboard players set @s mechanization.time 4000

execute store result score #random mechanization.data run random value 1..2000
scoreboard players operation @s mechanization.time += #random mechanization.data
execute store result score #random mechanization.data run random value 1..2000
scoreboard players operation @s mechanization.time += #random mechanization.data
