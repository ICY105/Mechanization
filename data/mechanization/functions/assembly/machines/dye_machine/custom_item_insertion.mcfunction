
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

scoreboard players set #temp mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:white_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:orange_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:magenta_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:light_blue_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:yellow_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:lime_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:pink_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:gray_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:light_gray_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:cyan_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:purple_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:blue_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:brown_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:green_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:red_dye"} run scoreboard players set #temp mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:black_dye"} run scoreboard players set #temp mechanization.data 1

execute if score #temp mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:7b}] run scoreboard players set #slot mechanization.data 7
execute if score #temp mechanization.data matches 1 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set #slot mechanization.data 1
