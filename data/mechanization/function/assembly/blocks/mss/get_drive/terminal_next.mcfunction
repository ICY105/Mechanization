
clear @a[distance=..12] minecraft:structure_block{mechanization:{gui_item:1b}}
data modify storage mechanization:networks mss.item set value {item:{},drive:[]}
data modify storage mechanization:networks mss.item set from entity @s item.tag.drive
data modify entity @s item.tag.drive set value {}
execute if data storage mechanization:networks mss.item.id run function mechanization:assembly/blocks/mss/get_drive/insert_drive

scoreboard players add @s mechanization.data 1

function mechanization:assembly/blocks/mss/get_drive/start
execute if data storage mechanization:networks mss.item.id run data modify entity @s item.tag.drive set from storage mechanization:networks mss.item
