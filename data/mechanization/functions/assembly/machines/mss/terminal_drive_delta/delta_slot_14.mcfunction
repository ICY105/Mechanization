execute store result score #count.2 mechanization.data run data get storage mechanization:temp list[{Slot:14b}].tag.mss.count
scoreboard players operation #count.2 mechanization.data += #count.0 mechanization.data
scoreboard players operation #count.2 mechanization.data -= #count.1 mechanization.data
execute store result storage mechanization:temp list[{Slot:14b}].tag.mss.count int 1 run scoreboard players get #count.2 mechanization.data

execute if score #count.2 mechanization.data matches 1.. if score #count.2 mechanization.data < #count.1 mechanization.data store result storage mechanization:temp list[{Slot:14b}].Count byte 1 run scoreboard players get #count.2 mechanization.data
execute if score #count.2 mechanization.data matches ..0 run data remove storage mechanization:temp list[{Slot:14b}]

execute if score #count.2 mechanization.data matches 1.. run data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.mss.item_count","color":"gray","italic":false,"with":[{"score":{"name":"#count.2","objective":"mechanization.data"}}]}]'}
execute if score #count.2 mechanization.data matches 1.. run data modify storage mechanization:temp list[{Slot:14b}].tag.display.Lore[0] set from block -29999999 0 1602 Text1
