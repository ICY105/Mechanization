
#copy item data to storage
data modify storage mechanization:networks mss.item set from block ~ ~ ~ Items[{Slot:17b}]

#try to insert into terminal's drive
scoreboard players set #complete mechanization.data 0

execute if entity @s[tag=mechanization.active] run data modify storage mechanization:networks mss.drive set from storage mechanization:temp list
execute if entity @s[tag=mechanization.active] run function mechanization:assembly/machines/mss/insert_item_drive/start
execute if entity @s[tag=mechanization.active] if score #complete mechanization.data matches 1 run data modify storage mechanization:temp list set from storage mechanization:networks mss.drive

#try to insert into system's drives
execute if score #complete mechanization.data matches 0 as @e[type=minecraft:glow_item_frame,tag=mechanization.drive_bay,distance=..16,sort=nearest] at @s run function mechanization:assembly/machines/mss/system_insert_item

#try to add to terminal's drive
execute if entity @s[tag=mechanization.active] run data modify storage mechanization:networks mss.drive set from storage mechanization:temp list
execute if entity @s[tag=mechanization.active] if score #complete mechanization.data matches 0 unless data storage mechanization:networks mss.drive[23] run function mechanization:assembly/machines/mss/add_item
execute if entity @s[tag=mechanization.active] if score #complete mechanization.data matches 1 run data modify storage mechanization:temp list set from storage mechanization:networks mss.drive

#try to add to system's drives
execute if score #complete mechanization.data matches 0 as @e[type=minecraft:glow_item_frame,tag=mechanization.drive_bay,distance=..16,sort=nearest] at @s run function mechanization:assembly/machines/mss/system_add_item

#if all else fails, eject item
execute if score #complete mechanization.data matches -1..0 run data remove block -30000000 0 3201 Items
execute if score #complete mechanization.data matches -1..0 run data modify block -30000000 0 3201 Items append from block ~ ~ ~ Items[{Slot:17b}]
execute if score #complete mechanization.data matches -1..0 run loot spawn ^ ^1 ^0.5 mine -30000000 0 3201 air{drop_contents:true}
