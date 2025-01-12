
execute store result score #loop mechanization.data run attribute @s minecraft:block_interaction_range get 2000
scoreboard players add #loop mechanization.data 10

scoreboard players set #mode mechanization.data 1
execute anchored eyes positioned ^ ^ ^ run function mechanization:base/player/pipe_wrench/locate_loop
