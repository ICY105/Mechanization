
scoreboard players operation #max_storage mechanization.data = @s energy.max_storage
scoreboard players operation #max_storage mechanization.data /= #cons.31 mechanization.data

scoreboard players operation #model mechanization.data = @s energy.storage
execute if score @s energy.storage matches 1.. run scoreboard players operation #model mechanization.data += #max_storage mechanization.data
scoreboard players operation #model mechanization.data /= #max_storage mechanization.data

execute if block ~ ~ ~ #mechanization:inv_3 run function mechanization:base/utils/generate_energy_bar/inv_3
execute if block ~ ~ ~ #mechanization:inv_9 run function mechanization:base/utils/generate_energy_bar/inv_9
execute if block ~ ~ ~ #mechanization:inv_27 run function mechanization:base/utils/generate_energy_bar/inv_27
