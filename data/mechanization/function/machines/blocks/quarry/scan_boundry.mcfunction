
#set scores
scoreboard players set #temp.x mechanization.data 0
scoreboard players set #temp.y mechanization.data 0
scoreboard players set #x mechanization.data -1
scoreboard players set #z mechanization.data -1

scoreboard players set #success mechanization.data 0
scoreboard players set #rotation mechanization.data 0

#count nearby fences
execute if block ~1 ~ ~ #minecraft:fences run scoreboard players add #success mechanization.data 1
execute if block ~-1 ~ ~ #minecraft:fences run scoreboard players add #success mechanization.data 1
execute if block ~ ~ ~1 #minecraft:fences run scoreboard players add #success mechanization.data 1
execute if block ~ ~ ~-1 #minecraft:fences run scoreboard players add #success mechanization.data 1

#find orientation
execute if score #success mechanization.data matches 2 if block ~-1 ~ ~ #minecraft:fences if block ~ ~ ~1 #minecraft:fences run scoreboard players set #rotation mechanization.data 1
execute if score #success mechanization.data matches 2 if block ~-1 ~ ~ #minecraft:fences if block ~ ~ ~-1 #minecraft:fences run scoreboard players set #rotation mechanization.data 2
execute if score #success mechanization.data matches 2 if block ~1 ~ ~ #minecraft:fences if block ~ ~ ~-1 #minecraft:fences run scoreboard players set #rotation mechanization.data 3
execute if score #success mechanization.data matches 2 if block ~1 ~ ~ #minecraft:fences if block ~ ~ ~1 #minecraft:fences run scoreboard players set #rotation mechanization.data 4

#run scan
execute if score #rotation mechanization.data matches 1 rotated 0 0 positioned ^ ^ ^1 run function mechanization:machines/blocks/quarry/scan_1
execute if score #rotation mechanization.data matches 2 rotated 90 0 positioned ^ ^ ^1 run function mechanization:machines/blocks/quarry/scan_1
execute if score #rotation mechanization.data matches 3 rotated 180 0 positioned ^ ^ ^1 run function mechanization:machines/blocks/quarry/scan_1
execute if score #rotation mechanization.data matches 4 rotated 270 0 positioned ^ ^ ^1 run function mechanization:machines/blocks/quarry/scan_1

#output
execute unless score #success mechanization.data matches 2 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.quarry.no_boundary","color":"green"}]'}
execute if score #success mechanization.data matches 2 if score #rotation mechanization.data matches 0 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.quarry.no_boundary","color":"green"}]'}

execute if score #rotation mechanization.data matches 1..4 unless score #temp.x mechanization.data matches 0 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.quarry.invalid_boundary","color":"green"}]'}
execute if score #rotation mechanization.data matches 1..4 unless score #temp.y mechanization.data matches 0 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.quarry.invalid_boundary","color":"green"}]'}

execute if score #rotation mechanization.data matches 1..4 if score #temp.x mechanization.data matches 0 if score #temp.y mechanization.data matches 0 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.quarry.formed_boundary","color":"green"}]'}
execute as @p at @s run function #smithed.actionbar:message

#set quarry scores
scoreboard players set @s mechanization.data 0
scoreboard players set @s player_action.x 0
scoreboard players set @s player_action.y 0
scoreboard players set @s player_action.z 0

scoreboard players remove #x mechanization.data 1
scoreboard players remove #z mechanization.data 1
execute if score #rotation mechanization.data matches 1..4 if score #temp.x mechanization.data matches 0 if score #temp.y mechanization.data matches 0 run scoreboard players operation @s player_action.x = #x mechanization.data
execute if score #rotation mechanization.data matches 1..4 if score #temp.x mechanization.data matches 0 if score #temp.y mechanization.data matches 0 run scoreboard players operation @s player_action.z = #z mechanization.data
execute if score #rotation mechanization.data matches 1..4 if score #temp.x mechanization.data matches 0 if score #temp.y mechanization.data matches 0 run scoreboard players operation @s player_action.y = #rotation mechanization.data
