
execute align xyz if block ~ ~ ~ minecraft:barrel[open=true] as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] at @s run function mechanization:base/player/gui/interact_barrel_run

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. positioned ^ ^ ^0.05 run function mechanization:base/player/gui/interact_barrel_loop
