
# kill & exit if no power
execute if score #energy mechanization.data matches ..0 if score #energy_remainder mechanization.data matches ..0 run kill @s
execute if score #energy mechanization.data matches ..0 if score #energy_remainder mechanization.data matches ..0 run return

# add tags
tag @s add mechanization
tag @s add mechanization.ticking
tag @s add mechanization.neutron

# set random rotation
execute store result entity @s Rotation[0] float 1 run random value 0..359
execute at @s run tp @s ~ ~ ~ ~ ~

# energy
scoreboard players operation @s mechanization.fluid.in = #energy mechanization.data
execute if score #energy_remainder mechanization.data matches 1.. run scoreboard players add @s mechanization.fluid.in 1
execute if score #energy_remainder mechanization.data matches 1.. run scoreboard players remove #energy_remainder mechanization.data 1

# id
scoreboard players operation @s mechanization.item_id = #id mechanization.data

# speed
scoreboard players set @s mechanization.data 100

# time alive
scoreboard players set @s mechanization.time 0
