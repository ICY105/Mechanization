
### energy display
scoreboard players operation #max_storage mechanization.data = @s energy.max_storage
scoreboard players operation #storage mechanization.data = @s energy.storage

scoreboard players set #model mechanization.data 6421900
execute if entity @s[tag=mechanization.battery.t2] run scoreboard players set #model mechanization.data 6421909
execute if entity @s[tag=mechanization.battery.t3] run scoreboard players set #model mechanization.data 6421918

scoreboard players operation #max_storage mechanization.data /= #cons.7 mechanization.data
scoreboard players operation #storage mechanization.data /= #max_storage mechanization.data

execute if score @s energy.storage matches 1.. run scoreboard players add #storage mechanization.data 1
execute if score #storage mechanization.data matches 9.. run scoreboard players set #storage mechanization.data 8
scoreboard players operation #storage mechanization.data += #model mechanization.data

item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#storage"},"score":"mechanization.data"}}
