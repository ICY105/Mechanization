
# energy display
scoreboard players operation #max_storage mechanization.data = @s energy.max_storage
scoreboard players operation #model mechanization.data = @s energy.storage

scoreboard players operation #max_storage mechanization.data /= #cons.8 mechanization.data
scoreboard players operation #model mechanization.data /= #max_storage mechanization.data

execute if score @s energy.storage matches 1.. run scoreboard players add #storage mechanization.data 1
execute if score #model mechanization.data matches 9.. run scoreboard players set #model mechanization.data 8

item modify entity @s contents mechanization:set_custom_model_float
