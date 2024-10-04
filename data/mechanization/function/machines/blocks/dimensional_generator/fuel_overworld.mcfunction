
execute if items block ~ ~ ~ container.0 minecraft:blue_ice run scoreboard players add @s mechanization.data 8
execute if items block ~ ~ ~ container.0 minecraft:prismarine_crystals run scoreboard players add @s mechanization.data 6
execute if items block ~ ~ ~ container.0 minecraft:rabbit_foot run scoreboard players add @s mechanization.data 80
execute if items block ~ ~ ~ container.0 minecraft:phantom_membrane run scoreboard players add @s mechanization.data 40
execute if items block ~ ~ ~ container.0 minecraft:turtle_scute run scoreboard players add @s mechanization.data 90
execute if items block ~ ~ ~ container.0 minecraft:nautilus_shell run scoreboard players add @s mechanization.data 120

execute if items block ~ ~ ~ container.0 minecraft:totem_of_undying run scoreboard players add @s mechanization.data 200
execute if items block ~ ~ ~ container.0 minecraft:heart_of_the_sea run scoreboard players add @s mechanization.data 1000

scoreboard players operation @s mechanization.data *= #machines.cf.dimensional_generator.fuel mechanization.data
scoreboard players operation @s mechanization.data /= #cons.100 mechanization.data

item modify block ~ ~ ~ container.0 mechanization:decrement_count
