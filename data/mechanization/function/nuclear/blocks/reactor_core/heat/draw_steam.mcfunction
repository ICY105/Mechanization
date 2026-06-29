
particle minecraft:cloud ~ ~ ~ 0 0 0 0 1

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. if block ~ ~ ~ #mechanization:water-air positioned ~ ~0.5 ~ run function mechanization:nuclear/blocks/reactor_core/heat/draw_steam
