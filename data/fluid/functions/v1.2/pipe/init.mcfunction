
# ensure scores are initialized
scoreboard players add @s fluid.transfer_rate 0
scoreboard players add @s fluid.network_id 0

# get network id
scoreboard players set #pipe.network_id fluid.data 0
execute align xyz positioned ~ ~1 ~ as @e[tag=fluid.pipe,dx=0,dy=0,dz=0] at @s run function fluid:v1.2/pipe/init_2
execute align xyz positioned ~ ~-1 ~ as @e[tag=fluid.pipe,dx=0,dy=0,dz=0] at @s run function fluid:v1.2/pipe/init_2
execute align xyz positioned ~ ~ ~-1 as @e[tag=fluid.pipe,dx=0,dy=0,dz=0] at @s run function fluid:v1.2/pipe/init_2
execute align xyz positioned ~ ~ ~1 as @e[tag=fluid.pipe,dx=0,dy=0,dz=0] at @s run function fluid:v1.2/pipe/init_2
execute align xyz positioned ~1 ~ ~ as @e[tag=fluid.pipe,dx=0,dy=0,dz=0] at @s run function fluid:v1.2/pipe/init_2
execute align xyz positioned ~-1 ~ ~ as @e[tag=fluid.pipe,dx=0,dy=0,dz=0] at @s run function fluid:v1.2/pipe/init_2

execute if score #pipe.network_id fluid.data matches 0 run scoreboard players add #global.incr_id fluid.network_id 1
execute if score #pipe.network_id fluid.data matches 0 run scoreboard players operation #pipe.network_id fluid.data = #global.incr_id fluid.network_id
scoreboard players operation @s fluid.network_id = #pipe.network_id fluid.data

# call update function
function fluid:v1.2/pipe/update

# setup network transfer capacity
scoreboard players set @e[tag=fluid.pipe] fluid.transfer_capacity -1
execute as @e[tag=fluid.pipe] at @s run function fluid:v1.2/pipe/init_network_transfer_rate
