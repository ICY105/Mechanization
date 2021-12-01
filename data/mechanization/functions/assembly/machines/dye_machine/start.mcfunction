
#get data
execute store result score $temp_0 mechanization.data run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:7b}].Count
scoreboard players set $temp_2 mechanization.data 0

data modify storage du:temp obj set from block ~ ~ ~ Items[{Slot:7b}]

#run dyeing
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:white_dye"}] run function mechanization:assembly/machines/dye_machine/white
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:orange_dye"}] run function mechanization:assembly/machines/dye_machine/orange
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:magenta_dye"}] run function mechanization:assembly/machines/dye_machine/magenta
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:light_blue_dye"}] run function mechanization:assembly/machines/dye_machine/light_blue
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:yellow_dye"}] run function mechanization:assembly/machines/dye_machine/yellow
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:lime_dye"}] run function mechanization:assembly/machines/dye_machine/lime
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:pink_dye"}] run function mechanization:assembly/machines/dye_machine/pink
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:gray_dye"}] run function mechanization:assembly/machines/dye_machine/gray
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:light_gray_dye"}] run function mechanization:assembly/machines/dye_machine/light_gray
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:cyan_dye"}] run function mechanization:assembly/machines/dye_machine/cyan
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:purple_dye"}] run function mechanization:assembly/machines/dye_machine/purple
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:blue_dye"}] run function mechanization:assembly/machines/dye_machine/blue
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:brown_dye"}] run function mechanization:assembly/machines/dye_machine/brown
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:green_dye"}] run function mechanization:assembly/machines/dye_machine/green
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:red_dye"}] run function mechanization:assembly/machines/dye_machine/red
execute if score $temp_1 mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:black_dye"}] run function mechanization:assembly/machines/dye_machine/black

#set counts
scoreboard players remove $temp_0 mechanization.data 1
scoreboard players remove $temp_1 mechanization.data 8

execute if score $temp_2 mechanization.data matches 1 run scoreboard players remove @s mechanization.stored_energy 16
execute if score $temp_2 mechanization.data matches 1 store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get $temp_0 mech_data
execute if score $temp_2 mechanization.data matches 1 store result block ~ ~ ~ Items[{Slot:7b}].Count byte 1 run scoreboard players get $temp_1 mech_data

