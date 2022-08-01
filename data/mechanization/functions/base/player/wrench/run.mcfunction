
execute if entity @s[tag=!player_action.sneaking] align xyz as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] at @s run function #mechanization:wrench_modify
execute if entity @s[tag=!player_action.sneaking] unless block ~ ~ ~ #mechanization:air run function mechanization:base/player/wrench/rotate_block
execute if entity @s[tag=player_action.sneaking] align xyz as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run function #mechanization:wrench_break
execute if block ~ ~ ~ minecraft:moving_piston align xyz unless entity @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] run setblock ~ ~ ~ minecraft:air

# End Loop
scoreboard players set #loop mechanization.data -1
