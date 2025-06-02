
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

execute store result score #fluid mechanization.data run function mechanization:base/utils/is_fluid_container

execute if score #fluid mechanization.data matches 10 unless items block ~ ~ ~ container.0 * run return 10
execute if score #fluid mechanization.data matches 12 unless items block ~ ~ ~ container.9 * run return 12

execute if score #fluid mechanization.data matches 6 unless items block ~ ~ ~ container.1 * run return 6
