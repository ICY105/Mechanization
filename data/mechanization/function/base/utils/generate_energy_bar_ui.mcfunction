
scoreboard players operation #max_storage mechanization.data = @s energy.max_storage
scoreboard players operation #max_storage mechanization.data /= #cons.31 mechanization.data

scoreboard players operation #model mechanization.data = @s energy.storage
execute if score @s energy.storage matches 1.. run scoreboard players operation #model mechanization.data += #max_storage mechanization.data
scoreboard players operation #model mechanization.data /= #max_storage mechanization.data

execute if score #model mechanization.data matches 33.. run scoreboard players set #model mechanization.data 32

data modify storage mechanization:temp obj set value {cmd: 0}
execute store result storage mechanization:temp obj.cmd int 1 run scoreboard players get #model mechanization.data

execute if block ~ ~ ~ #mechanization:inv_3 run function mechanization:base/utils/generate_energy_bar/m.inv_3 with storage mechanization:temp obj
execute if block ~ ~ ~ #mechanization:inv_9 run function mechanization:base/utils/generate_energy_bar/m.inv_9 with storage mechanization:temp obj
execute if block ~ ~ ~ #mechanization:inv_27 run function mechanization:base/utils/generate_energy_bar/m.inv_27 with storage mechanization:temp obj
