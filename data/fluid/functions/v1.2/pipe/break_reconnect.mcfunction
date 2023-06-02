
#update adjacent cables
execute unless score @s fluid.network_id.up matches 0 align xyz positioned ~ ~1 ~ run scoreboard players operation @s fluid.network_id.up = @e[tag=fluid.pipe,dx=0,dy=0,dz=0,limit=1] fluid.network_id
execute unless score @s fluid.network_id.down matches 0 align xyz positioned ~ ~-1 ~ run scoreboard players operation @s fluid.network_id.down = @e[tag=fluid.pipe,dx=0,dy=0,dz=0,limit=1] fluid.network_id
execute unless score @s fluid.network_id.north matches 0 align xyz positioned ~ ~ ~1 run scoreboard players operation @s fluid.network_id.north = @e[tag=fluid.pipe,dx=0,dy=0,dz=0,limit=1] fluid.network_id
execute unless score @s fluid.network_id.south matches 0 align xyz positioned ~ ~ ~-1 run scoreboard players operation @s fluid.network_id.south = @e[tag=fluid.pipe,dx=0,dy=0,dz=0,limit=1] fluid.network_id
execute unless score @s fluid.network_id.east matches 0 align xyz positioned ~-1 ~ ~ run scoreboard players operation @s fluid.network_id.east = @e[tag=fluid.pipe,dx=0,dy=0,dz=0,limit=1] fluid.network_id
execute unless score @s fluid.network_id.west matches 0 align xyz positioned ~1 ~ ~ run scoreboard players operation @s fluid.network_id.west = @e[tag=fluid.pipe,dx=0,dy=0,dz=0,limit=1] fluid.network_id
