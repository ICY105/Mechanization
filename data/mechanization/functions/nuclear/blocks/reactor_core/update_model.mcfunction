
execute positioned ~ ~-1 ~ align xyz store success score #top mechanization.data if entity @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0]
execute positioned ~ ~1 ~ align xyz store success score #bottom mechanization.data if entity @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0]

scoreboard players set #model mechanization.data 6423202
execute if score #top mechanization.data matches 1 run scoreboard players set #model mechanization.data 6423005
execute if score #bottom mechanization.data matches 1 run scoreboard players set #model mechanization.data 6423011
execute if score #top mechanization.data matches 1 if score #bottom mechanization.data matches 1 run scoreboard players set #model mechanization.data 6423008

execute if entity @s[tag=mechanization.reactor_core.uranium] run scoreboard players add #model mechanization.data 1
execute if entity @s[tag=mechanization.reactor_core.plutonium] run scoreboard players add #model mechanization.data 2
execute if score #model mechanization.data matches 6423202 run scoreboard players set #model mechanization.data 6423002

execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get #model mechanization.data
