
# mechanization.time: lifetime in ticks
# mechanization.fluid.in: fast flux
# mechanization.fluid.out: thermal flux

# add tags
tag @s add mechanization
tag @s add mechanization.ticking
tag @s add mechanization.neutron

# set random rotation
execute unless score #rotation mechanization.data matches 1..11 at @s run tp @s ~ ~ ~ 0 0
execute if score #rotation mechanization.data matches 1 at @s run tp @s ~ ~ ~ 30 0
execute if score #rotation mechanization.data matches 2 at @s run tp @s ~ ~ ~ 60 0
execute if score #rotation mechanization.data matches 3 at @s run tp @s ~ ~ ~ 90 0
execute if score #rotation mechanization.data matches 4 at @s run tp @s ~ ~ ~ 120 0
execute if score #rotation mechanization.data matches 5 at @s run tp @s ~ ~ ~ 150 0
execute if score #rotation mechanization.data matches 6 at @s run tp @s ~ ~ ~ 180 0
execute if score #rotation mechanization.data matches 7 at @s run tp @s ~ ~ ~ 210 0
execute if score #rotation mechanization.data matches 8 at @s run tp @s ~ ~ ~ 240 0
execute if score #rotation mechanization.data matches 9 at @s run tp @s ~ ~ ~ 270 0
execute if score #rotation mechanization.data matches 10 at @s run tp @s ~ ~ ~ 300 0
execute if score #rotation mechanization.data matches 11 at @s run tp @s ~ ~ ~ 330 0

# energy
scoreboard players operation @s mechanization.fluid.in = #flux mechanization.data
scoreboard players set @s mechanization.fluid.out 0

# time alive
scoreboard players set @s mechanization.time 150
