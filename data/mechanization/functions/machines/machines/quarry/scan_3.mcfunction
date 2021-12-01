particle minecraft:dust 0.5 0.0 0.0 1 ~ ~1 ~ 0 0 0 0 1 normal
scoreboard players remove temp_0 mechanization.data 1
execute if block ^ ^ ^1 #minecraft:fences unless block ^-1 ^ ^ #minecraft:fences positioned ^ ^ ^1 run function mechanization:machines/machines/quarry/scan_3
execute if block ^-1 ^ ^ #minecraft:fences rotated ~90 0 positioned ^ ^ ^1 if score temp_0 mechanization.data matches -1.. run function mechanization:machines/machines/quarry/scan_4