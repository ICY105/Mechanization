execute store result score temp_0 mech_data run data get storage du:temp list[{Slot:26b}].tag.mss.count
scoreboard players operation temp_0 mech_data += in_0 mech_data
scoreboard players operation temp_0 mech_data -= in_1 mech_data
execute store result storage du:temp list[{Slot:26b}].tag.mss.count int 1 run scoreboard players get temp_0 mech_data

execute if score temp_0 mech_data matches 1.. if score temp_0 mech_data < in_1 mech_data store result storage du:temp list[{Slot:26b}].Count byte 1 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches ..0 run data remove storage du:temp list[{Slot:26b}]

execute if score temp_0 mech_data matches 1.. run data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.mss.item_count","color":"gray","italic":false,"with":[{"score":{"name":"temp_0","objective":"mech_data"}}]}]'}
execute if score temp_0 mech_data matches 1.. run data modify storage du:temp list[{Slot:26b}].tag.display.Lore[0] set from block -29999999 0 1602 Text1
