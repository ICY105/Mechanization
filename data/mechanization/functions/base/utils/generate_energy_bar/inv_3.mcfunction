
scoreboard players add #model mechanization.data 6422800
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:0,HideFlags:127,display:{Name:'{"text":""}'},mechanization:{gui_item:1b}}
execute store result block ~ ~ ~ Items[{Slot:1b}].tag.CustomModelData int 1 run scoreboard players get #model mechanization.data
