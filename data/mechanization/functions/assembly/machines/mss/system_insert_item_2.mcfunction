
#copy drive data
execute if score temp_4 mech_data matches 1 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[0].tag.mech_storage
execute if score temp_4 mech_data matches 2 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[1].tag.mech_storage
execute if score temp_4 mech_data matches 3 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[2].tag.mech_storage
execute if score temp_4 mech_data matches 4 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[3].tag.mech_storage
execute if score temp_4 mech_data matches 5 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[4].tag.mech_storage
execute if score temp_4 mech_data matches 6 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[5].tag.mech_storage
execute if score temp_4 mech_data matches 7 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[6].tag.mech_storage
execute if score temp_4 mech_data matches 8 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[7].tag.mech_storage
execute if score temp_4 mech_data matches 9 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[8].tag.mech_storage
execute if score temp_4 mech_data matches 10 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[9].tag.mech_storage

execute if score temp_4 mech_data matches 11 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[10].tag.mech_storage
execute if score temp_4 mech_data matches 12 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[11].tag.mech_storage
execute if score temp_4 mech_data matches 13 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[12].tag.mech_storage
execute if score temp_4 mech_data matches 14 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[13].tag.mech_storage
execute if score temp_4 mech_data matches 15 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[14].tag.mech_storage
execute if score temp_4 mech_data matches 16 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[15].tag.mech_storage
execute if score temp_4 mech_data matches 17 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[16].tag.mech_storage
execute if score temp_4 mech_data matches 18 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[17].tag.mech_storage
execute if score temp_4 mech_data matches 19 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[18].tag.mech_storage

execute if score temp_4 mech_data matches 20 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[19].tag.mech_storage
execute if score temp_4 mech_data matches 21 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[20].tag.mech_storage
execute if score temp_4 mech_data matches 22 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[21].tag.mech_storage
execute if score temp_4 mech_data matches 23 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[22].tag.mech_storage
execute if score temp_4 mech_data matches 24 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[23].tag.mech_storage
execute if score temp_4 mech_data matches 25 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[24].tag.mech_storage
execute if score temp_4 mech_data matches 26 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[25].tag.mech_storage
execute if score temp_4 mech_data matches 27 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[26].tag.mech_storage

#run function
function mechanization:assembly/machines/mss/insert_item_drive/start

#copy data back
execute if score temp_4 mech_data matches 1 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[0].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 2 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[1].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 3 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[2].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 4 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[3].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 5 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[4].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 6 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[5].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 7 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[6].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 8 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[7].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 9 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[8].tag.mech_storage set from storage mechanization:networks mss.drive

execute if score temp_4 mech_data matches 10 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[9].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 11 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[10].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 12 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[11].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 13 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[12].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 14 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[13].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 15 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[14].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 16 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[15].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 17 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[16].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 18 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[17].tag.mech_storage set from storage mechanization:networks mss.drive

execute if score temp_4 mech_data matches 19 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[18].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 20 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[19].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 21 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[20].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 22 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[21].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 23 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[22].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 24 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[23].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 25 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[24].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 26 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[25].tag.mech_storage set from storage mechanization:networks mss.drive
execute if score temp_4 mech_data matches 27 if score out_0 mech_data matches 1 run data modify block ~ ~ ~ Items[26].tag.mech_storage set from storage mechanization:networks mss.drive

#loop
scoreboard players add temp_4 mech_data 1
execute if score temp_4 mech_data <= temp_3 mech_data if score out_0 mech_data matches 0 run function mechanization:assembly/machines/mss/system_insert_item_2


