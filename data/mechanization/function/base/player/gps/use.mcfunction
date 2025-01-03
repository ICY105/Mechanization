
execute store result score #loop mechanization.data run attribute @s minecraft:block_interaction_range get 20
scoreboard players add #loop mechanization.data 10

execute anchored eyes positioned ^ ^ ^ run function mechanization:base/player/gps/loop
scoreboard players set #interaction mechanization.data 0
