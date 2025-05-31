# storage mechanization:temp obj: item to insert

# exit early
execute unless data storage mechanization:temp obj.item.id run return fail
execute if data storage mechanization:temp obj.item{id:"minecraft:barrier"} run return fail

# clean data
data modify storage mechanization:temp obj.item.Slot set value 0b
scoreboard players set #complete mechanization.data 0

# try to insert into all drives
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.item.components as @e[type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16,sort=nearest] at @s run function mechanization:assembly/blocks/mss/item_management/m.insert_item with storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 if data storage mechanization:temp obj.item.components as @e[type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16,sort=nearest] at @s run function mechanization:assembly/blocks/mss/item_management/m.insert_item_components with storage mechanization:temp obj.item

# try to add into selected drive
scoreboard players set #search mechanization.data 0
execute if score #complete mechanization.data matches 0 as @e[type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16,sort=nearest] at @s run function mechanization:assembly/blocks/mss/item_management/add_item_target

# try to add into all drives
execute if score #complete mechanization.data matches 0 as @e[type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16,sort=nearest] at @s run function mechanization:assembly/blocks/mss/item_management/add_item

# if all else fails, eject item
execute if score #complete mechanization.data matches 0 run setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
execute if score #complete mechanization.data matches 0 run data modify block -30000000 0 3201 Items append from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 run loot spawn ^ ^1 ^0.5 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
