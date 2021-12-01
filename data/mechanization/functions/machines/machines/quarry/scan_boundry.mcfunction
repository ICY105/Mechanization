
#set scores
scoreboard players set temp_0 mechanization.data 0
scoreboard players set temp_1 mechanization.data 0
scoreboard players set out_0 mechanization.data -1
scoreboard players set out_1 mechanization.data -1

scoreboard players set temp_2 mechanization.data 0
scoreboard players set temp_3 mechanization.data 0

#count nearby fences
execute if block ~1 ~ ~ #minecraft:fences run scoreboard players add temp_2 mechanization.data 1
execute if block ~-1 ~ ~ #minecraft:fences run scoreboard players add temp_2 mechanization.data 1
execute if block ~ ~ ~1 #minecraft:fences run scoreboard players add temp_2 mechanization.data 1
execute if block ~ ~ ~-1 #minecraft:fences run scoreboard players add temp_2 mechanization.data 1

#find orientation
execute if score temp_2 mechanization.data matches 2 if block ~-1 ~ ~ #minecraft:fences if block ~ ~ ~1 #minecraft:fences run scoreboard players set temp_3 mechanization.data 1
execute if score temp_2 mechanization.data matches 2 if block ~-1 ~ ~ #minecraft:fences if block ~ ~ ~-1 #minecraft:fences run scoreboard players set temp_3 mechanization.data 2
execute if score temp_2 mechanization.data matches 2 if block ~1 ~ ~ #minecraft:fences if block ~ ~ ~-1 #minecraft:fences run scoreboard players set temp_3 mechanization.data 3
execute if score temp_2 mechanization.data matches 2 if block ~1 ~ ~ #minecraft:fences if block ~ ~ ~1 #minecraft:fences run scoreboard players set temp_3 mechanization.data 4

#run scan
execute if score temp_3 mechanization.data matches 1 rotated 0 0 positioned ^ ^ ^1 run function mechanization:machines/machines/quarry/scan_1
execute if score temp_3 mechanization.data matches 2 rotated 90 0 positioned ^ ^ ^1 run function mechanization:machines/machines/quarry/scan_1
execute if score temp_3 mechanization.data matches 3 rotated 180 0 positioned ^ ^ ^1 run function mechanization:machines/machines/quarry/scan_1
execute if score temp_3 mechanization.data matches 4 rotated 270 0 positioned ^ ^ ^1 run function mechanization:machines/machines/quarry/scan_1

#output
execute unless score temp_2 mechanization.data matches 2 run title @p actionbar [{"translate":"mech.block.quarry.no_boundary","color":"green"}]
execute if score temp_2 mechanization.data matches 2 if score temp_3 mechanization.data matches 0 run title @p actionbar [{"translate":"mech.block.quarry.no_boundary","color":"green"}]

execute if score temp_3 mechanization.data matches 1..4 unless score temp_0 mechanization.data matches 0 run title @p actionbar [{"translate":"mech.block.quarry.invalid_boundary","color":"green"}]
execute if score temp_3 mechanization.data matches 1..4 unless score temp_1 mechanization.data matches 0 run title @p actionbar [{"translate":"mech.block.quarry.invalid_boundary","color":"green"}]

execute if score temp_3 mechanization.data matches 1..4 if score temp_0 mechanization.data matches 0 if score temp_1 mechanization.data matches 0 run title @p actionbar [{"translate":"mech.block.quarry.formed_boundary","color":"green"}]

#set quarry scores
scoreboard players set @s mechanization.data 0
scoreboard players set @s du_move_x 0
scoreboard players set @s du_move_y 0
scoreboard players set @s du_move_z 0

scoreboard players remove out_0 mechanization.data 1
scoreboard players remove out_1 mechanization.data 1
execute if score temp_3 mechanization.data matches 1..4 if score temp_0 mechanization.data matches 0 if score temp_1 mechanization.data matches 0 run scoreboard players operation @s du_move_x = out_0 mech_data
execute if score temp_3 mechanization.data matches 1..4 if score temp_0 mechanization.data matches 0 if score temp_1 mechanization.data matches 0 run scoreboard players operation @s du_move_z = out_1 mech_data
execute if score temp_3 mechanization.data matches 1..4 if score temp_0 mechanization.data matches 0 if score temp_1 mechanization.data matches 0 run scoreboard players operation @s du_move_y = temp_3 mech_data

