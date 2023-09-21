
tag @s add mechanization
tag @s add mechanization.ticking
tag @s add mechanization.neutron

tp @s ~ ~ ~ ~ ~

# speed
scoreboard players set @s mechanization.data 100
# amount
scoreboard players operation @s mechanization.fluid.in = #neutron_amount mechanization.data
# time alive
scoreboard players set @s mechanization.time 0
