
scoreboard players set out_0 mech_data 1

execute store result score temp_1 mech_data run data get storage mechanization:networks mss.drive[{Slot:26b}].tag.mss.count
execute store result score temp_2 mech_data run data get storage mechanization:networks mss.item.Count

scoreboard players operation temp_1 mech_data += temp_2 mech_data
execute if score temp_1 mech_data matches ..-1 run scoreboard players set out_0 mech_data -1

execute if score out_0 mech_data matches 1 store result storage mechanization:networks mss.drive[{Slot:26b}].tag.mss.count int 1 run scoreboard players get temp_1 mech_data
execute if score out_0 mech_data matches 1 run data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.mss.item_count","color":"gray","italic":false,"with":[{"score":{"name":"temp_1","objective":"mech_data"}}]}]'}
execute if score out_0 mech_data matches 1 run data modify storage mechanization:networks mss.drive[{Slot:26b}].tag.display.Lore[0] set from block -29999999 0 1602 Text1
