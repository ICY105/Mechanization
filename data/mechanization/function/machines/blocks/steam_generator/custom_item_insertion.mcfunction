
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

execute store result score #fluid mechanization.data run function mechanization:base/utils/is_fluid_container

execute if score #fluid mechanization.data matches 0 unless items block ~ ~ ~ container.10 * if items block -30000000 0 3201 #mechanization:furnace_fuel run return 10

execute if score #fluid mechanization.data matches 1 unless items block ~ ~ ~ container.3 * run return 3
execute if score #fluid mechanization.data matches 1 unless items block ~ ~ ~ container.6 * run return 6
