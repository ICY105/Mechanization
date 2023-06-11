execute store result score #count.2 mechanization.data run data get storage mechanization:temp list[{Slot:16b}].tag.mss.count
scoreboard players operation #count.2 mechanization.data += #count.0 mechanization.data
scoreboard players operation #count.2 mechanization.data -= #count.1 mechanization.data
execute store result storage mechanization:temp list[{Slot:16b}].tag.mss.count int 1 run scoreboard players get #count.2 mechanization.data

execute if score #count.2 mechanization.data matches 1.. if score #count.2 mechanization.data < #count.1 mechanization.data store result storage mechanization:temp list[{Slot:16b}].Count byte 1 run scoreboard players get #count.2 mechanization.data
execute if score #count.2 mechanization.data matches ..0 run data remove storage mechanization:temp list[{Slot:16b}]

execute if score #count.2 mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"lore.mechanization.mss_item_count","color":"gray","italic":false,"with":[{"score":{"name":"#count.2","objective":"mechanization.data"}}]}]'
execute if score #count.2 mechanization.data matches 1.. run data modify storage mechanization:temp list[{Slot:16b}].tag.display.Lore[0] set from block -30000000 0 3202 front_text.messages[0]
