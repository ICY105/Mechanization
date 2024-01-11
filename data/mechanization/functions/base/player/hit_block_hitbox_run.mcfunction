
scoreboard players set #loop mechanization.data -1
execute if block ~ ~1 ~ minecraft:barrier run setblock ~ ~1 ~ minecraft:air
kill @s

scoreboard players set #tier mechanization.data 0
execute if entity @s[tag=mechanization.block_hitbox.tier_1] run scoreboard players set #tier mechanization.data 1
execute if entity @s[tag=mechanization.block_hitbox.tier_2] run scoreboard players set #tier mechanization.data 2
execute if entity @s[tag=mechanization.block_hitbox.tier_3] run scoreboard players set #tier mechanization.data 3

execute positioned ~ ~1 ~ align xyz as @e[tag=mechanization.has_block_hitbox,dx=0,dy=0,dz=0] run function mechanization:base/player/hit_block_hitbox_run_2
