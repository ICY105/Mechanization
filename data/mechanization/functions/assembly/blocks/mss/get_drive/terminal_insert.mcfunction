
data modify storage mechanization:networks mss.item set value {item:{},drive:[]}
data modify storage mechanization:networks mss.item set from entity @s Item.tag.drive
data modify entity @s Item.tag.drive set value {}
execute if data storage mechanization:networks mss.item.id run function mechanization:assembly/blocks/mss/get_drive/insert_drive
