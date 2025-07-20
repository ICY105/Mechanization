
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1
execute if score #out mechanization.data matches 1 unless items block ~ ~ ~ container.1 * run scoreboard players set #slot mechanization.data 1
