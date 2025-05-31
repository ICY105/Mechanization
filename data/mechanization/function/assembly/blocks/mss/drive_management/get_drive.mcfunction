
data modify storage mechanization:temp obj.drive_contents set value []

scoreboard players set #search mechanization.data 0
execute at @e[sort=nearest,type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16] run function mechanization:assembly/blocks/mss/drive_management/get_drive_2

execute if score #search mechanization.data matches 1.. unless data storage mechanization:temp obj.drive_contents[0] run function mechanization:assembly/blocks/mss/drive_management/search_next
