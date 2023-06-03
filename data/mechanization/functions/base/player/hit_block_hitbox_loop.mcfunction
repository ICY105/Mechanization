
execute align xyz as @e[type=minecraft:interaction,tag=mechanization.block_hitbox,dx=0,dy=0,dz=0,sort=nearest,limit=1,nbt={attack:{}}] at @s run function mechanization:base/player/hit_block_hitbox_run

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. positioned ^ ^ ^0.1 run function mechanization:base/player/hit_block_hitbox_loop
