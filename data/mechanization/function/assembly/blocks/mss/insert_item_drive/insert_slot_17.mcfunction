
scoreboard players set #complete mechanization.data 1

execute store result score #count.3 mechanization.data run data get storage mechanization:networks mss.drive[{Slot:17b}].tag.mss.count
execute store result score #count.4 mechanization.data run data get storage mechanization:networks mss.item.Count

scoreboard players operation #count.3 mechanization.data += #count.4 mechanization.data
execute if score #count.3 mechanization.data matches ..-1 run scoreboard players set #complete mechanization.data -1

execute if score #complete mechanization.data matches 1 store result storage mechanization:networks mss.drive[{Slot:17b}].tag.mss.count int 1 run scoreboard players get #count.3 mechanization.data
execute if score #complete mechanization.data matches 1 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"lore.mechanization.mss_item_count","color":"gray","italic":false,"with":[{"score":{"name":"#count.3","objective":"mechanization.data"}}]}]'
execute if score #complete mechanization.data matches 1 run data modify storage mechanization:networks mss.drive[{Slot:17b}].tag.display.Lore[0] set from block -30000000 0 3202 front_text.messages[0]

execute if score #complete mechanization.data matches 1 store result score #count.4 mechanization.data run data get storage mechanization:networks mss.drive[{Slot:17b}].Count
execute if score #count.4 mechanization.data matches 1.. run data modify storage mechanization:temp obj set from storage mechanization:networks mss.drive[{Slot:17b}]
execute if score #count.4 mechanization.data matches 1.. summon minecraft:armor_stand run function mechanization:assembly/blocks/mss/insert_item_drive/get_stack_size
execute if score #count.4 mechanization.data matches 1.. if score #count.4 mechanization.data matches ..63 if score #count.3 mechanization.data < #complete.1 mechanization.data run scoreboard players operation #complete.1 mechanization.data = #count.3 mechanization.data
execute if score #count.4 mechanization.data matches 1.. store result storage mechanization:networks mss.drive[{Slot:17b}].Count byte 1 run scoreboard players get #complete.1 mechanization.data
