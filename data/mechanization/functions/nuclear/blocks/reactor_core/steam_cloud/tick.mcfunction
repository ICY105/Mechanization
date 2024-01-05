
tp @s ~ ~0.1 ~
particle cloud ~ ~0.1 ~ 0.2 0.2 0.2 0 1
scoreboard players remove @s mechanization.time 1

scoreboard players operation #time mechanization.data = @s mechanization.time
scoreboard players operation #time mechanization.data %= #cons.10 mechanization.data

scoreboard players operation #steam mechanization.data = @s mechanization.data
execute if score #time mechanization.data matches 0 at @s if block ~ ~ ~ minecraft:barrier align xyz as @e[tag=mechanization.steam_condenser,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/steam_condenser/collect
execute if score #time mechanization.data matches 0 at @s unless block ~ ~ ~ #mechanization:water-air run kill @s
execute if score @s mechanization.time matches ..0 run kill @s
