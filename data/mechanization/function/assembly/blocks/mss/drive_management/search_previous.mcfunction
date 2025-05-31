
scoreboard players remove #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches ..0 run scoreboard players remove #drive_bay mechanization.data 1
execute if score #drive_item mechanization.data matches ..0 run scoreboard players set #drive_item mechanization.data 9

execute store result score #search mechanization.data if entity @e[type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16]
scoreboard players add #search mechanization.data 1
execute at @e[sort=furthest,type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16] run function mechanization:assembly/blocks/mss/drive_management/search_previous_2

scoreboard players set #again mechanization.data 0
execute if score #search mechanization.data matches 1.. if score #drive_bay mechanization.data matches ..0 run scoreboard players set #again mechanization.data 1

execute if score #again mechanization.data matches 1 store result score #search mechanization.data if entity @e[type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16]
execute if score #again mechanization.data matches 1 run scoreboard players operation #drive_bay mechanization.data = #search mechanization.data
scoreboard players add #search mechanization.data 1
execute if score #again mechanization.data matches 1 run scoreboard players set #drive_item mechanization.data 9

execute if score #again mechanization.data matches 1 at @e[sort=furthest,type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16] run function mechanization:assembly/blocks/mss/drive_management/search_previous_2

scoreboard players set #again mechanization.data 0
execute if score #search mechanization.data matches 1.. if score #drive_bay mechanization.data matches ..0 run scoreboard players set #again mechanization.data 1

execute if score #again mechanization.data matches 1 run scoreboard players set #drive_bay mechanization.data 1
execute if score #again mechanization.data matches 1 run scoreboard players set #drive_item mechanization.data 1
