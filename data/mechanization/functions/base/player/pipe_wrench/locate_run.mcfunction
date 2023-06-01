
scoreboard players set #loop mechanization.data -1

# get side
execute summon minecraft:marker run function mechanization:base/player/pipe_wrench/get_pos

execute store result score #x mechanization.data run data get storage mechanization:temp list[0] 100
execute store result score #y mechanization.data run data get storage mechanization:temp list[1] 100
execute store result score #z mechanization.data run data get storage mechanization:temp list[2] 100

scoreboard players operation #x mechanization.data %= #cons.100 mechanization.data
scoreboard players operation #y mechanization.data %= #cons.100 mechanization.data
scoreboard players operation #z mechanization.data %= #cons.100 mechanization.data

scoreboard players set #side mechanization.data -1
execute if score #y mechanization.data matches 0..10 if score #x mechanization.data matches 10..90 if score #z mechanization.data matches 10..90 run scoreboard players set #side mechanization.data 1
execute if score #y mechanization.data matches 90..100 if score #x mechanization.data matches 10..90 if score #z mechanization.data matches 10..90 run scoreboard players set #side mechanization.data 0

execute if score #x mechanization.data matches 0..10 if score #z mechanization.data matches 10..90 if score #y mechanization.data matches 10..90 run scoreboard players set #side mechanization.data 5
execute if score #x mechanization.data matches 90..100 if score #z mechanization.data matches 10..90 if score #y mechanization.data matches 10..90 run scoreboard players set #side mechanization.data 4

execute if score #z mechanization.data matches 0..10 if score #x mechanization.data matches 10..90 if score #y mechanization.data matches 10..90 run scoreboard players set #side mechanization.data 2
execute if score #z mechanization.data matches 90..100 if score #x mechanization.data matches 10..90 if score #y mechanization.data matches 10..90 run scoreboard players set #side mechanization.data 3

# get fluid state
scoreboard players set #state mechanization.data 2
execute if score #side mechanization.data matches 0 if score @s fluid.io.up matches 1.. align xyz positioned ~0.5 ~1 ~0.5 run scoreboard players set #state mechanization.data 0
execute if score #side mechanization.data matches 0 if score @s fluid.io.up matches ..-1 align xyz positioned ~0.5 ~1 ~0.5 run scoreboard players set #state mechanization.data 1

execute if score #side mechanization.data matches 1 if score @s fluid.io.down matches 1.. align xyz positioned ~0.5 ~-0.1 ~0.5 run scoreboard players set #state mechanization.data 0
execute if score #side mechanization.data matches 1 if score @s fluid.io.down matches ..-1 align xyz positioned ~0.5 ~-0.1 ~0.5 run scoreboard players set #state mechanization.data 1

execute if score #side mechanization.data matches 2 if score @s fluid.io.north matches 1.. align xyz positioned ~0.5 ~0.5 ~ run scoreboard players set #state mechanization.data 0
execute if score #side mechanization.data matches 2 if score @s fluid.io.north matches ..-1 align xyz positioned ~0.5 ~0.5 ~ run scoreboard players set #state mechanization.data 1

execute if score #side mechanization.data matches 3 if score @s fluid.io.south matches 1.. align xyz positioned ~0.5 ~0.5 ~1 run scoreboard players set #state mechanization.data 0
execute if score #side mechanization.data matches 3 if score @s fluid.io.south matches ..-1 align xyz positioned ~0.5 ~0.5 ~1 run scoreboard players set #state mechanization.data 1

execute if score #side mechanization.data matches 4 if score @s fluid.io.east matches 1.. align xyz positioned ~1 ~0.5 ~0.5 run scoreboard players set #state mechanization.data 0
execute if score #side mechanization.data matches 4 if score @s fluid.io.east matches ..-1 align xyz positioned ~1 ~0.5 ~0.5 run scoreboard players set #state mechanization.data 1

execute if score #side mechanization.data matches 5 if score @s fluid.io.west matches 1.. align xyz positioned ~ ~0.5 ~0.5 run scoreboard players set #state mechanization.data 0
execute if score #side mechanization.data matches 5 if score @s fluid.io.west matches ..-1 align xyz positioned ~ ~0.5 ~0.5 run scoreboard players set #state mechanization.data 1

# run sub function
execute if score #mode mechanization.data matches 0 run function mechanization:base/player/pipe_wrench/modify_state_run
execute if score #mode mechanization.data matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:item_display run function mechanization:base/player/pipe_wrench/display_state_run
