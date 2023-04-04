
scoreboard players operation @s energy.network_id = #cable.network_id energy.data

execute align xyz positioned ~ ~01 ~ as @e[type=#energy:valid_block_entities,predicate=energy:v1.5/equals_network_id,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/break_cable_2
execute align xyz positioned ~ ~-1 ~ as @e[type=#energy:valid_block_entities,predicate=energy:v1.5/equals_network_id,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/break_cable_2
execute align xyz positioned ~ ~ ~-1 as @e[type=#energy:valid_block_entities,predicate=energy:v1.5/equals_network_id,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/break_cable_2
execute align xyz positioned ~ ~ ~01 as @e[type=#energy:valid_block_entities,predicate=energy:v1.5/equals_network_id,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/break_cable_2
execute align xyz positioned ~01 ~ ~ as @e[type=#energy:valid_block_entities,predicate=energy:v1.5/equals_network_id,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/break_cable_2
execute align xyz positioned ~-1 ~ ~ as @e[type=#energy:valid_block_entities,predicate=energy:v1.5/equals_network_id,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/break_cable_2
