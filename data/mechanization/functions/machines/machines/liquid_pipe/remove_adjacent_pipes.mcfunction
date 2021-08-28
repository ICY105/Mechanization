
tag @s add mech_temp

#update if dest
scoreboard players set $in_0 mech_data 0
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_dest] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mech_liquid_dest] if score $out_0 mech_data matches 1 align y positioned ~ ~-0.1 ~ as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_dest

scoreboard players set $in_0 mech_data 1
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_dest] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mech_liquid_dest] if score $out_0 mech_data matches 1 align y positioned ~ ~1.9 ~ as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_dest

scoreboard players set $in_0 mech_data 2
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_dest] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mech_liquid_dest] if score $out_0 mech_data matches 1 align y positioned ~ ~0.9 ~-1 as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_dest

scoreboard players set $in_0 mech_data 3
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_dest] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mech_liquid_dest] if score $out_0 mech_data matches 1 align y positioned ~ ~0.9 ~1 as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_dest

scoreboard players set $in_0 mech_data 4
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_dest] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mech_liquid_dest] if score $out_0 mech_data matches 1 align y positioned ~1 ~0.9 ~ as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_dest

scoreboard players set $in_0 mech_data 5
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_dest] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mech_liquid_dest] if score $out_0 mech_data matches 1 align y positioned ~-1 ~0.9 ~ as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_dest

#update if src
scoreboard players set $in_0 mech_data 0
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_src] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mech_liquid_src] if score $out_0 mech_data matches 1 align y positioned ~ ~-0.1 ~ as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_src

scoreboard players set $in_0 mech_data 1
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_src] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mech_liquid_src] if score $out_0 mech_data matches 1 align y positioned ~ ~1.9 ~ as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_src

scoreboard players set $in_0 mech_data 2
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_src] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mech_liquid_src] if score $out_0 mech_data matches 1 align y positioned ~ ~0.9 ~-1 as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_src

scoreboard players set $in_0 mech_data 3
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_src] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mech_liquid_src] if score $out_0 mech_data matches 1 align y positioned ~ ~0.9 ~1 as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_src

scoreboard players set $in_0 mech_data 4
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_src] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mech_liquid_src] if score $out_0 mech_data matches 1 align y positioned ~1 ~0.9 ~ as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_src

scoreboard players set $in_0 mech_data 5
scoreboard players set $out_0 mech_data 0
execute if entity @s[tag=mech_liquid_src] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mech_liquid_src] if score $out_0 mech_data matches 1 align y positioned ~-1 ~0.9 ~ as @e[tag=mech_pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_src

#cleanup
tag @s remove mech_temp
