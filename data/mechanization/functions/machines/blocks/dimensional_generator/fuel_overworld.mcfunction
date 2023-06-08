
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:blue_ice"}] run scoreboard players add @s mechanization.data 15
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:prismarine_crystals"}] run scoreboard players add @s mechanization.data 20
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:rabbit_foot"}] run scoreboard players add @s mechanization.data 40
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:phantom_membrane"}] run scoreboard players add @s mechanization.data 80
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:scute"}] run scoreboard players add @s mechanization.data 160
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nautilus_shell"}] run scoreboard players add @s mechanization.data 240

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:totem_of_undying"}] run scoreboard players add @s mechanization.data 500
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:heart_of_the_sea"}] run scoreboard players add @s mechanization.data 1000

scoreboard players operation @s mechanization.data *= #machines.cf.dimensional_generator.fuel mechanization.data
scoreboard players operation @s mechanization.data /= #cons.100 mechanization.data

item modify block ~ ~ ~ container.0 mechanization:decrement_count
