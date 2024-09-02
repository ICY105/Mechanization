
execute if entity @s[tag=mechanization] if score #pipe.in fluid.data matches 1 if score @s fluid.io.up matches 0 run scoreboard players set #pipe.out fluid.data 0
execute if entity @s[tag=mechanization] if score #pipe.in fluid.data matches 0 if score @s fluid.io.down matches 0 run scoreboard players set #pipe.out fluid.data 0
execute if entity @s[tag=mechanization] if score #pipe.in fluid.data matches 2 if score @s fluid.io.north matches 0 run scoreboard players set #pipe.out fluid.data 0
execute if entity @s[tag=mechanization] if score #pipe.in fluid.data matches 3 if score @s fluid.io.south matches 0 run scoreboard players set #pipe.out fluid.data 0
execute if entity @s[tag=mechanization] if score #pipe.in fluid.data matches 4 if score @s fluid.io.east matches 0 run scoreboard players set #pipe.out fluid.data 0
execute if entity @s[tag=mechanization] if score #pipe.in fluid.data matches 5 if score @s fluid.io.west matches 0 run scoreboard players set #pipe.out fluid.data 0
