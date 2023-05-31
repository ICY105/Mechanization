
#update if dest
scoreboard players set $in_0 mechanization.data 0
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.receive] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mechanization.liquid.receive] if score $out_0 mechanization.data matches 1 align y positioned ~ ~-0.1 ~ as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_dest

scoreboard players set $in_0 mechanization.data 1
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.receive] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mechanization.liquid.receive] if score $out_0 mechanization.data matches 1 align y positioned ~ ~1.9 ~ as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_dest

scoreboard players set $in_0 mechanization.data 2
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.receive] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mechanization.liquid.receive] if score $out_0 mechanization.data matches 1 align y positioned ~ ~0.9 ~-1 as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_dest

scoreboard players set $in_0 mechanization.data 3
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.receive] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mechanization.liquid.receive] if score $out_0 mechanization.data matches 1 align y positioned ~ ~0.9 ~1 as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_dest

scoreboard players set $in_0 mechanization.data 4
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.receive] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mechanization.liquid.receive] if score $out_0 mechanization.data matches 1 align y positioned ~1 ~0.9 ~ as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_dest

scoreboard players set $in_0 mechanization.data 5
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.receive] run function #mechanization:liquid_pipe_can_accept
execute if entity @s[tag=mechanization.liquid.receive] if score $out_0 mechanization.data matches 1 align y positioned ~-1 ~0.9 ~ as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_dest

#update if srcs
scoreboard players set $in_0 mechanization.data 0
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.send] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mechanization.liquid.send] if score $out_0 mechanization.data matches 1 align y positioned ~ ~-0.1 ~ as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_src

scoreboard players set $in_0 mechanization.data 1
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.send] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mechanization.liquid.send] if score $out_0 mechanization.data matches 1 align y positioned ~ ~1.9 ~ as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_src

scoreboard players set $in_0 mechanization.data 2
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.send] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mechanization.liquid.send] if score $out_0 mechanization.data matches 1 align y positioned ~ ~0.9 ~-1 as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_src

scoreboard players set $in_0 mechanization.data 3
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.send] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mechanization.liquid.send] if score $out_0 mechanization.data matches 1 align y positioned ~ ~0.9 ~1 as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_src

scoreboard players set $in_0 mechanization.data 4
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.send] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mechanization.liquid.send] if score $out_0 mechanization.data matches 1 align y positioned ~1 ~0.9 ~ as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_src

scoreboard players set $in_0 mechanization.data 5
scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.send] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mechanization.liquid.send] if score $out_0 mechanization.data matches 1 align y positioned ~-1 ~0.9 ~ as @e[type=item_frame,tag=mechanization.pipe,distance=..0.5] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes_src
