
scoreboard players operation #max_storage mechanization.data = @s energy.max_storage
scoreboard players operation #max_storage mechanization.data /= #cons.31 mechanization.data

scoreboard players operation #model mechanization.data = @s energy.storage
execute if score @s energy.storage matches 1.. run scoreboard players operation #model mechanization.data += #max_storage mechanization.data
scoreboard players operation #model mechanization.data /= #max_storage mechanization.data

execute if block ~ ~ ~ #mechanization:inv_9 run scoreboard players add #model mechanization.data 6422960
execute if block ~ ~ ~ #mechanization:inv_27 run scoreboard players add #model mechanization.data 6422920

execute if block ~ ~ ~ #mechanization:inv_9 run item replace block ~ ~ ~ container.8 with minecraft:structure_block{CustomModelData:0,HideFlags:127,display:{Name:'{"text":""}'},mechanization:{gui_item:1b}}
execute if block ~ ~ ~ #mechanization:inv_27 run item replace block ~ ~ ~ container.26 with minecraft:structure_block{CustomModelData:0,HideFlags:127,display:{Name:'{"text":""}'},mechanization:{gui_item:1b}}

execute if block ~ ~ ~ #mechanization:inv_9 store result block ~ ~ ~ Items[{Slot:8b}].tag.CustomModelData int 1 run scoreboard players get #model mechanization.data
execute if block ~ ~ ~ #mechanization:inv_27 store result block ~ ~ ~ Items[{Slot:26b}].tag.CustomModelData int 1 run scoreboard players get #model mechanization.data
