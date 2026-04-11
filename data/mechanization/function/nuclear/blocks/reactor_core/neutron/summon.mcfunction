
# mechanization.time: lifetime in mili-meters
# mechanization.fluid.in: fast flux
# mechanization.fluid.out: thermal flux

# add tags
tag @s add mechanization
tag @s add mechanization.ticking
tag @s add mechanization.neutron

# set random rotation
scoreboard players set #ran mechanization.data 1
#execute store result score #ran mechanization.data run random value 0..11
execute if score #ran mechanization.data matches 0 run scoreboard players set #rot mechanization.data 0
execute if score #ran mechanization.data matches 1 run scoreboard players set #rot mechanization.data 30
execute if score #ran mechanization.data matches 2 run scoreboard players set #rot mechanization.data 60
execute if score #ran mechanization.data matches 3 run scoreboard players set #rot mechanization.data 90
execute if score #ran mechanization.data matches 4 run scoreboard players set #rot mechanization.data 120
execute if score #ran mechanization.data matches 5 run scoreboard players set #rot mechanization.data 150
execute if score #ran mechanization.data matches 6 run scoreboard players set #rot mechanization.data 180
execute if score #ran mechanization.data matches 7 run scoreboard players set #rot mechanization.data 210
execute if score #ran mechanization.data matches 8 run scoreboard players set #rot mechanization.data 240
execute if score #ran mechanization.data matches 9 run scoreboard players set #rot mechanization.data 270
execute if score #ran mechanization.data matches 10 run scoreboard players set #rot mechanization.data 300
execute if score #ran mechanization.data matches 11 run scoreboard players set #rot mechanization.data 330

execute store result entity @s Rotation[0] float 1 run scoreboard players get #rot mechanization.data
execute at @s run tp @s ~ ~ ~ ~ ~

# store data
data modify entity @s data set value {rot: 0, rot_normal: 0, d: 0, x: 500, y: 500}
execute store result entity @s data.rot int 1 run scoreboard players get #rot mechanization.data

# energy
scoreboard players operation @s mechanization.fluid.in = #flux mechanization.data
scoreboard players set @s mechanization.fluid.out 0

# time alive
#scoreboard players set @s mechanization.time 1000000

# test
scoreboard players set @s mechanization.time 200000
execute if score #debug test matches 1 run tag @s add mechanization.debug
scoreboard players set #debug test 0
