
data remove entity @s attack
execute if score #interact mechanization.data matches ..14 run return fail

scoreboard players set #loop mechanization.data -1
execute if block ~ ~1 ~ minecraft:barrier run setblock ~ ~1 ~ minecraft:air
kill @s

scoreboard players set #tier mechanization.data 0
execute if entity @s[tag=mechanization.block_hitbox.tier1] run scoreboard players set #tier mechanization.data 1
execute if entity @s[tag=mechanization.block_hitbox.tier2] run scoreboard players set #tier mechanization.data 2
execute if entity @s[tag=mechanization.block_hitbox.tier3] run scoreboard players set #tier mechanization.data 3

execute positioned ~ ~1 ~ align xyz as @e[tag=mechanization.has_block_hitbox,dx=0,dy=0,dz=0] run function mechanization:base/player/block_hitbox/hit_block_hitbox_run_2
