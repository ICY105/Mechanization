particle minecraft:dust 0.5 0.0 0.0 1 ~ ~1 ~ 0 0 0 0 1 normal
scoreboard players remove temp_1 mechanization.data 1
execute if block ^ ^ ^1 #minecraft:fences positioned ^ ^ ^1 if score temp_1 mechanization.data matches -1.. run function mechanization:machines/machines/quarry/scan_4
execute if block ^ ^ ^1 minecraft:barrel run scoreboard players remove temp_1 mechanization.data 1
