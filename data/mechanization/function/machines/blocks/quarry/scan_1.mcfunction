
particle minecraft:dust{color:[0.6, 0.0, 0.0], scale:1} ~ ~1 ~ 0 0 0 0 1 normal
scoreboard players add #temp.x mechanization.data 1
execute if block ^ ^ ^1 #minecraft:fences unless block ^-1 ^ ^ #minecraft:fences positioned ^ ^ ^1 run function mechanization:machines/blocks/quarry/scan_1
execute if block ^-1 ^ ^ #minecraft:fences rotated ~90 0 positioned ^ ^ ^1 if score #temp.x mechanization.data matches ..32 run function mechanization:machines/blocks/quarry/scan_2-1
