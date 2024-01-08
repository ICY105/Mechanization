
# mechanization.time: lifetime in ticks
# mechanization.fluid.in: fast flux
# mechanization.fluid.out: thermal flux

# add tags
tag @s add mechanization
tag @s add mechanization.ticking
tag @s add mechanization.neutron

# set random rotation
execute store result entity @s Rotation[0] float 1 run random value 0..359
execute at @s run tp @s ~ ~ ~ ~ ~

# energy
scoreboard players operation @s mechanization.fluid.in = #flux mechanization.data
scoreboard players set @s mechanization.fluid.out 0

# time alive
scoreboard players set @s mechanization.time 150

data modify entity @s data merge value {summon: 0, capture: [0, 0], fission: [0, 0], reflection: [0, 0], scatter: 0}
execute store result entity @s data.summon int 1 run scoreboard players get #flux mechanization.data
