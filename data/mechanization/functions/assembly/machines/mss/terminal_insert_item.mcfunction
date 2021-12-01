
#copy item data to storage
data modify storage mechanization:networks mss.item set from block ~ ~ ~ Items[{Slot:17b}]

#try to insert into terminal's drive
scoreboard players set out_0 mech_data 0

execute if entity @s[tag=mech_active] run data modify storage mechanization:networks mss.drive set from storage du:temp list
execute if entity @s[tag=mech_active] run function mechanization:assembly/machines/mss/insert_item_drive/start
execute if entity @s[tag=mech_active] if score out_0 mech_data matches 1 run data modify storage du:temp list set from storage mechanization:networks mss.drive

#try to insert into system's drives
execute if score out_0 mech_data matches 0 as @e[type=minecraft:glow_item_frame,tag=mech_drive_bay,distance=..16,sort=nearest] at @s run function mechanization:assembly/machines/mss/system_insert_item

#try to add to terminal's drive
execute if entity @s[tag=mech_active] run data modify storage mechanization:networks mss.drive set from storage du:temp list
execute if entity @s[tag=mech_active] if score out_0 mech_data matches 0 unless data storage mechanization:networks mss.drive[23] run function mechanization:assembly/machines/mss/add_item
execute if entity @s[tag=mech_active] if score out_0 mech_data matches 1 run data modify storage du:temp list set from storage mechanization:networks mss.drive

#try to add to system's drives
execute if score out_0 mech_data matches 0 as @e[type=minecraft:glow_item_frame,tag=mech_drive_bay,distance=..16,sort=nearest] at @s run function mechanization:assembly/machines/mss/system_add_item

#if all else fails, eject item
execute if score out_0 mech_data matches -1..0 run data remove block -29999999 0 1601 Items
execute if score out_0 mech_data matches -1..0 run data modify block -29999999 0 1601 Items append from block ~ ~ ~ Items[{Slot:17b}]
execute if score out_0 mech_data matches -1..0 run loot spawn ^ ^ ^1 mine -29999999 0 1601 air{drop_contents:true}
