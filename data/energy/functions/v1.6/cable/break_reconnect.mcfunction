
#update adjacent cables
execute unless score @s energy.network_id_up matches 0 align xyz positioned ~ ~1 ~ run scoreboard players operation @s energy.network_id_up = @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0,limit=1] energy.network_id
execute unless score @s energy.network_id_down matches 0 align xyz positioned ~ ~-1 ~ run scoreboard players operation @s energy.network_id_down = @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0,limit=1] energy.network_id
execute unless score @s energy.network_id_north matches 0 align xyz positioned ~ ~ ~1 run scoreboard players operation @s energy.network_id_north = @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0,limit=1] energy.network_id
execute unless score @s energy.network_id_south matches 0 align xyz positioned ~ ~ ~-1 run scoreboard players operation @s energy.network_id_south = @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0,limit=1] energy.network_id
execute unless score @s energy.network_id_east matches 0 align xyz positioned ~-1 ~ ~ run scoreboard players operation @s energy.network_id_east = @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0,limit=1] energy.network_id
execute unless score @s energy.network_id_west matches 0 align xyz positioned ~1 ~ ~ run scoreboard players operation @s energy.network_id_west = @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0,limit=1] energy.network_id
