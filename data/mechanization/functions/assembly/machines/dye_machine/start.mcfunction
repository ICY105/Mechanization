
#get data
execute store result score #count.0 mechanization.data run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score #count.1 mechanization.data run data get block ~ ~ ~ Items[{Slot:7b}].Count
scoreboard players set #success mechanization.data 0

data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:7b}]

#run dyeing
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:white_dye"}] run function mechanization:assembly/machines/dye_machine/white
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:orange_dye"}] run function mechanization:assembly/machines/dye_machine/orange
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:magenta_dye"}] run function mechanization:assembly/machines/dye_machine/magenta
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:light_blue_dye"}] run function mechanization:assembly/machines/dye_machine/light_blue
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:yellow_dye"}] run function mechanization:assembly/machines/dye_machine/yellow
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:lime_dye"}] run function mechanization:assembly/machines/dye_machine/lime
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:pink_dye"}] run function mechanization:assembly/machines/dye_machine/pink
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:gray_dye"}] run function mechanization:assembly/machines/dye_machine/gray
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:light_gray_dye"}] run function mechanization:assembly/machines/dye_machine/light_gray
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:cyan_dye"}] run function mechanization:assembly/machines/dye_machine/cyan
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:purple_dye"}] run function mechanization:assembly/machines/dye_machine/purple
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:blue_dye"}] run function mechanization:assembly/machines/dye_machine/blue
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:brown_dye"}] run function mechanization:assembly/machines/dye_machine/brown
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:green_dye"}] run function mechanization:assembly/machines/dye_machine/green
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:red_dye"}] run function mechanization:assembly/machines/dye_machine/red
execute if score #count.1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:black_dye"}] run function mechanization:assembly/machines/dye_machine/black

#set counts
scoreboard players remove #count.0 mechanization.data 1
scoreboard players remove #count.1 mechanization.data 8

execute if score #success mechanization.data matches 1 run scoreboard players remove @s energy.storage 16
execute if score #success mechanization.data matches 1 store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get #count.0 mechanization.data
execute if score #success mechanization.data matches 1 store result block ~ ~ ~ Items[{Slot:7b}].Count byte 1 run scoreboard players get #count.1 mechanization.data

