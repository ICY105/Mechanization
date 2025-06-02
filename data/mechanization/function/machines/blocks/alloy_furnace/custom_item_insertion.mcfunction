
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

execute store result score #fluid mechanization.data run function mechanization:base/utils/is_fluid_container

execute if score #fluid mechanization.data matches 0 unless items block ~ ~ ~ container.0 * run return 0
execute if score #fluid mechanization.data matches 0 unless items block ~ ~ ~ container.9 * run return 9
execute if score #fluid mechanization.data matches 0 unless items block ~ ~ ~ container.18 * run return 18

execute if score #fluid mechanization.data matches 1 unless items block ~ ~ ~ container.1 * run return 1
execute if score #fluid mechanization.data matches 1 unless items block ~ ~ ~ container.4 * run return 4
execute if score #fluid mechanization.data matches 1 unless items block ~ ~ ~ container.7 * run return 7
