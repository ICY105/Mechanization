
scoreboard players set #complete mechanization.data 1

execute store result score #count.3 mechanization.data run data get storage mechanization:networks mss.drive[{Slot:13b}].tag.mss.count
execute store result score #count.4 mechanization.data run data get storage mechanization:networks mss.item.Count

scoreboard players operation #count.3 mechanization.data += #count.4 mechanization.data
execute if score #count.3 mechanization.data matches ..-1 run scoreboard players set #complete mechanization.data -1

execute if score #complete mechanization.data matches 1 store result storage mechanization:networks mss.drive[{Slot:13b}].tag.mss.count int 1 run scoreboard players get #count.3 mechanization.data
execute if score #complete mechanization.data matches 1 run data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.mss.item_count","color":"gray","italic":false,"with":[{"score":{"name":"#count.3","objective":"mechanization.data"}}]}]'}
execute if score #complete mechanization.data matches 1 run data modify storage mechanization:networks mss.drive[{Slot:13b}].tag.display.Lore[0] set from block -29999999 0 1602 Text1

execute if score #complete mechanization.data matches 1 store result score #count.4 mechanization.data run data get storage mechanization:networks mss.drive[{Slot:13b}].Count
execute if score #count.4 mechanization.data matches 1.. run scoreboard players set #complete.1 mechanization.data 64
execute if score #count.4 mechanization.data matches 1.. run data modify entity @s ArmorItems[0] set from storage mechanization:networks mss.drive[{Slot:13b}]
execute if score #count.4 mechanization.data matches 1.. if predicate mechanization:is_stacksize_16 run scoreboard players set #complete.1 mechanization.data 16
execute if score #count.4 mechanization.data matches 1.. if predicate mechanization:is_unstackable run scoreboard players set #complete.1 mechanization.data 1
execute if score #count.4 mechanization.data matches 1.. if score #count.4 mechanization.data matches ..63 if score #count.3 mechanization.data < #complete.1 mechanization.data run scoreboard players operation #complete.1 mechanization.data = #count.3 mechanization.data
execute if score #count.4 mechanization.data matches 1.. store result storage mechanization:networks mss.drive[{Slot:13b}].Count byte 1 run scoreboard players get #complete.1 mechanization.data
