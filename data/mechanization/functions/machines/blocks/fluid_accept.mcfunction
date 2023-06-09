
execute store result score #temperature mechanization.data run data get storage fluid:io fluid.temperature
execute if entity @s[tag=mechanization.alloy_furnace] unless score #temperature mechanization.data matches 1000.. run scoreboard players set #out fluid.data 0
execute if entity @s[tag=mechanization.casting_basin] unless score #temperature mechanization.data matches 1000.. run scoreboard players set #out fluid.data 0

execute if entity @s[tag=mechanization.steam_generator] unless data storage fluid:io fluid{id:"steam"} run scoreboard players set #out fluid.data 0
execute if entity @s[tag=mechanization.item_reformer] unless data storage fluid:io fluid{id:"experience"} run scoreboard players set #out fluid.data 0
execute if entity @s[tag=mechanization.enchanting_station] unless data storage fluid:io fluid{id:"experience"} run scoreboard players set #out fluid.data 0
