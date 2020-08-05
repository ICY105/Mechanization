
data modify storage mechanization:networks mss.item set value {item:{},drive:[]}
data modify storage mechanization:networks mss.item set from entity @s HandItems[0]
replaceitem entity @s weapon.mainhand minecraft:air
execute if data storage mechanization:networks mss.item.id run function mechanization:assembly/machines/mss/get_drive/insert_drive
