
scoreboard players add #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches 10.. run scoreboard players add #drive_bay mechanization.data 1
execute if score #drive_item mechanization.data matches 10.. run scoreboard players set #drive_item mechanization.data 1

scoreboard players set #search mechanization.data 0
execute at @e[sort=nearest,type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16] run function mechanization:assembly/blocks/mss/drive_management/search_next_2

scoreboard players set #again mechanization.data 0
execute if score #search mechanization.data matches 1.. if score #drive_bay mechanization.data > #search mechanization.data run scoreboard players set #again mechanization.data 1

execute if score #again mechanization.data matches 1 run scoreboard players set #drive_bay mechanization.data 1
execute if score #again mechanization.data matches 1 run scoreboard players set #drive_item mechanization.data 1

scoreboard players set #search mechanization.data 0
execute if score #again mechanization.data matches 1 at @e[sort=nearest,type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16] run function mechanization:assembly/blocks/mss/drive_management/search_next_2

scoreboard players set #again mechanization.data 0
execute if score #search mechanization.data matches 1.. if score #drive_bay mechanization.data > #search mechanization.data run scoreboard players set #again mechanization.data 1

execute if score #again mechanization.data matches 1 run scoreboard players set #drive_bay mechanization.data 1
execute if score #again mechanization.data matches 1 run scoreboard players set #drive_item mechanization.data 1

