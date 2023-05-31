
# init values
scoreboard players set #pipe.model_data fluid.data 0
scoreboard players operation #pipe.network_id fluid.data = @s fluid.network_id

# up
scoreboard players set #pipe.direction fluid.data 0
execute align xyz positioned ~ ~1 ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/update_2

# down
scoreboard players set #pipe.direction fluid.data 1
execute align xyz positioned ~ ~-1 ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/update_2

# north
scoreboard players set #pipe.direction fluid.data 2
execute align xyz positioned ~ ~ ~-1 as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/update_2

# south
scoreboard players set #pipe.direction fluid.data 3
execute align xyz positioned ~ ~ ~1 as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/update_2

# east
scoreboard players set #pipe.direction fluid.data 4
execute align xyz positioned ~1 ~ ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/update_2

# west
scoreboard players set #pipe.direction fluid.data 5
execute align xyz positioned ~-1 ~ ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/update_2

# store values
scoreboard players operation @s fluid.data = #pipe.model_data fluid.data
function #fluid:v1/pipe_update
