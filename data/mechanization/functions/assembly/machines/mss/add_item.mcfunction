
scoreboard players set #count.2 mechanization.data -1

execute unless data storage mechanization:networks mss.drive[{Slot:25b}] run scoreboard players set #count.2 mechanization.data 25
execute unless data storage mechanization:networks mss.drive[{Slot:24b}] run scoreboard players set #count.2 mechanization.data 24
execute unless data storage mechanization:networks mss.drive[{Slot:23b}] run scoreboard players set #count.2 mechanization.data 23
execute unless data storage mechanization:networks mss.drive[{Slot:22b}] run scoreboard players set #count.2 mechanization.data 22
execute unless data storage mechanization:networks mss.drive[{Slot:21b}] run scoreboard players set #count.2 mechanization.data 21
execute unless data storage mechanization:networks mss.drive[{Slot:20b}] run scoreboard players set #count.2 mechanization.data 20
execute unless data storage mechanization:networks mss.drive[{Slot:19b}] run scoreboard players set #count.2 mechanization.data 19
execute unless data storage mechanization:networks mss.drive[{Slot:18b}] run scoreboard players set #count.2 mechanization.data 18

execute unless data storage mechanization:networks mss.drive[{Slot:16b}] run scoreboard players set #count.2 mechanization.data 16
execute unless data storage mechanization:networks mss.drive[{Slot:15b}] run scoreboard players set #count.2 mechanization.data 15
execute unless data storage mechanization:networks mss.drive[{Slot:14b}] run scoreboard players set #count.2 mechanization.data 14
execute unless data storage mechanization:networks mss.drive[{Slot:13b}] run scoreboard players set #count.2 mechanization.data 13
execute unless data storage mechanization:networks mss.drive[{Slot:12b}] run scoreboard players set #count.2 mechanization.data 12
execute unless data storage mechanization:networks mss.drive[{Slot:11b}] run scoreboard players set #count.2 mechanization.data 11
execute unless data storage mechanization:networks mss.drive[{Slot:10b}] run scoreboard players set #count.2 mechanization.data 10
execute unless data storage mechanization:networks mss.drive[{Slot:9b}] run scoreboard players set #count.2 mechanization.data 9

execute unless data storage mechanization:networks mss.drive[{Slot:7b}] run scoreboard players set #count.2 mechanization.data 7
execute unless data storage mechanization:networks mss.drive[{Slot:6b}] run scoreboard players set #count.2 mechanization.data 6
execute unless data storage mechanization:networks mss.drive[{Slot:5b}] run scoreboard players set #count.2 mechanization.data 5
execute unless data storage mechanization:networks mss.drive[{Slot:4b}] run scoreboard players set #count.2 mechanization.data 4
execute unless data storage mechanization:networks mss.drive[{Slot:3b}] run scoreboard players set #count.2 mechanization.data 3
execute unless data storage mechanization:networks mss.drive[{Slot:2b}] run scoreboard players set #count.2 mechanization.data 2
execute unless data storage mechanization:networks mss.drive[{Slot:1b}] run scoreboard players set #count.2 mechanization.data 1
execute unless data storage mechanization:networks mss.drive[{Slot:0b}] run scoreboard players set #count.2 mechanization.data 0

#configure item data
execute store success score #count.4 mechanization.data if data storage mechanization:networks mss.item.tag
data modify storage mechanization:networks mss.item.tag.mss merge value {count:1,display:0b,slot:0b}

execute store result storage mechanization:networks mss.item.Slot byte 1 run scoreboard players get #count.2 mechanization.data
execute store result storage mechanization:networks mss.item.tag.mss.slot byte 1 run scoreboard players get #count.2 mechanization.data

execute store result score #count.3 mechanization.data run data get storage mechanization:networks mss.item.Count
execute store result storage mechanization:networks mss.item.tag.mss.count int 1 run scoreboard players get #count.3 mechanization.data

execute if score #count.4 mechanization.data matches 1 run data modify storage mechanization:networks mss.item.tag.mss.display set value 1b
execute if data storage mechanization:networks mss.item.tag.display run data modify storage mechanization:networks mss.item.tag.mss.display set value 2b
execute if data storage mechanization:networks mss.item.tag.display.Lore run data modify storage mechanization:networks mss.item.tag.mss.display set value 3b

data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.mss.item_count","color":"gray","italic":false,"with":[{"score":{"name":"#count.3","objective":"mechanization.data"}}]}]'}
execute unless data storage mechanization:networks mss.item.tag.display.Lore run data modify storage mechanization:networks mss.item.tag.display.Lore set value []
data modify storage mechanization:networks mss.item.tag.display.Lore prepend from block -29999999 0 1602 Text1

#insert
data modify storage mechanization:networks mss.drive append from storage mechanization:networks mss.item
scoreboard players set #complete mechanization.data 1




