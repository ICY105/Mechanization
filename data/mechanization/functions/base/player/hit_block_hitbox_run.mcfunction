
scoreboard players set #loop mechanization.data -1
execute if block ~ ~1 ~ minecraft:barrier run setblock ~ ~1 ~ minecraft:air
kill @s

execute positioned ~ ~1 ~ align xyz run kill @e[tag=mechanization.has_block_hitbox.model,dx=0,dy=0,dz=0]
execute if entity @s[tag=mechanization.block_hitbox.tier_1] positioned ~ ~1 ~ align xyz as @e[tag=mechanization.has_block_hitbox,dx=0,dy=0,dz=0] run function mechanization:base/utils/break_block/break_machine_t1
execute if entity @s[tag=mechanization.block_hitbox.tier_2] positioned ~ ~1 ~ align xyz as @e[tag=mechanization.has_block_hitbox,dx=0,dy=0,dz=0] run function mechanization:base/utils/break_block/break_machine_t2
execute if entity @s[tag=mechanization.block_hitbox.tier_3] positioned ~ ~1 ~ align xyz as @e[tag=mechanization.has_block_hitbox,dx=0,dy=0,dz=0] run function mechanization:base/utils/break_block/break_machine_t3
