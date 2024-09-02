
#copy drive data
execute if score #slot mechanization.data matches 1 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[0].tag.mechanization.storage
execute if score #slot mechanization.data matches 2 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[1].tag.mechanization.storage
execute if score #slot mechanization.data matches 3 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[2].tag.mechanization.storage
execute if score #slot mechanization.data matches 4 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[3].tag.mechanization.storage
execute if score #slot mechanization.data matches 5 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[4].tag.mechanization.storage
execute if score #slot mechanization.data matches 6 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[5].tag.mechanization.storage
execute if score #slot mechanization.data matches 7 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[6].tag.mechanization.storage
execute if score #slot mechanization.data matches 8 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[7].tag.mechanization.storage
execute if score #slot mechanization.data matches 9 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[8].tag.mechanization.storage
execute if score #slot mechanization.data matches 10 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[9].tag.mechanization.storage

execute if score #slot mechanization.data matches 11 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[10].tag.mechanization.storage
execute if score #slot mechanization.data matches 12 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[11].tag.mechanization.storage
execute if score #slot mechanization.data matches 13 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[12].tag.mechanization.storage
execute if score #slot mechanization.data matches 14 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[13].tag.mechanization.storage
execute if score #slot mechanization.data matches 15 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[14].tag.mechanization.storage
execute if score #slot mechanization.data matches 16 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[15].tag.mechanization.storage
execute if score #slot mechanization.data matches 17 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[16].tag.mechanization.storage
execute if score #slot mechanization.data matches 18 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[17].tag.mechanization.storage
execute if score #slot mechanization.data matches 19 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[18].tag.mechanization.storage

execute if score #slot mechanization.data matches 20 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[19].tag.mechanization.storage
execute if score #slot mechanization.data matches 21 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[20].tag.mechanization.storage
execute if score #slot mechanization.data matches 22 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[21].tag.mechanization.storage
execute if score #slot mechanization.data matches 23 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[22].tag.mechanization.storage
execute if score #slot mechanization.data matches 24 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[23].tag.mechanization.storage
execute if score #slot mechanization.data matches 25 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[24].tag.mechanization.storage
execute if score #slot mechanization.data matches 26 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[25].tag.mechanization.storage
execute if score #slot mechanization.data matches 27 run data modify storage mechanization:networks mss.drive set from block ~ ~ ~ Items[26].tag.mechanization.storage

#run function
execute unless data storage mechanization:networks mss.drive[23] run function mechanization:assembly/blocks/mss/add_item

#copy data back
execute if score #slot mechanization.data matches 1 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[0].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 2 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[1].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 3 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[2].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 4 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[3].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 5 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[4].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 6 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[5].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 7 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[6].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 8 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[7].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 9 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[8].tag.mechanization.storage set from storage mechanization:networks mss.drive

execute if score #slot mechanization.data matches 10 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[9].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 11 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[10].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 12 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[11].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 13 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[12].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 14 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[13].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 15 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[14].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 16 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[15].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 17 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[16].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 18 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[17].tag.mechanization.storage set from storage mechanization:networks mss.drive

execute if score #slot mechanization.data matches 19 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[18].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 20 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[19].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 21 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[20].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 22 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[21].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 23 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[22].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 24 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[23].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 25 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[24].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 26 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[25].tag.mechanization.storage set from storage mechanization:networks mss.drive
execute if score #slot mechanization.data matches 27 if score #complete mechanization.data matches 1 run data modify block ~ ~ ~ Items[26].tag.mechanization.storage set from storage mechanization:networks mss.drive

#loop
scoreboard players add #slot mechanization.data 1
execute if score #slot mechanization.data <= #items mechanization.data if score #complete mechanization.data matches 0 run function mechanization:assembly/blocks/mss/system_insert_item_2


