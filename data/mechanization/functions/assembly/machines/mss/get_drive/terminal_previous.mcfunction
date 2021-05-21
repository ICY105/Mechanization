
clear @a[distance=..12] minecraft:structure_block{du_gui:1b}
data modify storage mechanization:networks mss.item set value {item:{},drive:[]}
data modify storage mechanization:networks mss.item set from entity @s HandItems[0]
item replace entity @s weapon.mainhand with minecraft:air
execute if data storage mechanization:networks mss.item.id run function mechanization:assembly/machines/mss/get_drive/insert_drive

scoreboard players remove @s mech_data 1

function mechanization:assembly/machines/mss/get_drive/start
execute if data storage mechanization:networks mss.item.id run data modify entity @s HandItems[0] set from storage mechanization:networks mss.item
