
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items append from storage mechanization:networks mss.item

scoreboard players set out_0 mech_data 0
execute as @e[tag=mech_drive_bay,distance=..16,sort=nearest] at @s unless data block ~ ~ ~ Items[26] run function mechanization:assembly/machines/mss/get_drive/insert_drive_2
execute if score out_0 mech_data matches 0 run loot spawn ^ ^ ^1 mine -29999999 0 1601 minecraft:air{drop_contents:true}