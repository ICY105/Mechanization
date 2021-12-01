
scoreboard players set out_0 mech_data 1

execute store result score temp_1 mech_data run data get storage mechanization:networks mss.drive[{Slot:6b}].tag.mss.count
execute store result score temp_2 mech_data run data get storage mechanization:networks mss.item.Count

scoreboard players operation temp_1 mech_data += temp_2 mech_data
execute if score temp_1 mech_data matches ..-1 run scoreboard players set out_0 mech_data -1

execute if score out_0 mech_data matches 1 store result storage mechanization:networks mss.drive[{Slot:6b}].tag.mss.count int 1 run scoreboard players get temp_1 mech_data
execute if score out_0 mech_data matches 1 run data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.mss.item_count","color":"gray","italic":false,"with":[{"score":{"name":"temp_1","objective":"mech_data"}}]}]'}
execute if score out_0 mech_data matches 1 run data modify storage mechanization:networks mss.drive[{Slot:6b}].tag.display.Lore[0] set from block -29999999 0 1602 Text1

execute if score out_0 mech_data matches 1 store result score temp_2 mech_data run data get storage mechanization:networks mss.drive[{Slot:6b}].Count
execute if score temp_2 mech_data matches 1.. run scoreboard players set out_0 du_data 64
execute if score temp_2 mech_data matches 1.. run data modify entity @s ArmorItems[0] set from storage mechanization:networks mss.drive[{Slot:6b}]
execute if score temp_2 mech_data matches 1.. if predicate mechanization:is_stacksize_16 run scoreboard players set out_0 du_data 16
execute if score temp_2 mech_data matches 1.. if predicate mechanization:is_unstackable run scoreboard players set out_0 du_data 1
execute if score temp_2 mech_data matches 1.. if score temp_2 mech_data matches ..63 if score temp_1 mech_data < out_0 du_data run scoreboard players operation out_0 du_data = temp_1 mech_data
execute if score temp_2 mech_data matches 1.. store result storage mechanization:networks mss.drive[{Slot:6b}].Count byte 1 run scoreboard players get out_0 du_data
