
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

execute store result score #fluid mechanization.data run function mechanization:base/utils/is_fluid_container
execute if score #fluid mechanization.data matches 1 unless items block ~ ~ ~ container.0 * run return 0
