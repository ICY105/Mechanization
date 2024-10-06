

execute store result score #loop mechanization.data run attribute @s minecraft:player.block_interaction_range get 20
scoreboard players add #loop mechanization.data 10

execute anchored eyes positioned ^ ^ ^ run function mechanization:machines/player/spawner_mover/spawner_trace
