
clear @a[distance=..12] minecraft:structure_block{du_gui:1b}
function mechanization:assembly/machines/mss/get_drive/start
execute if data storage mechanization:networks mss.item.id run data modify entity @s Item.tag.drive set from storage mechanization:networks mss.item
