
execute store result score #loop mechanization.data run attribute @s minecraft:block_interaction_range get 2000
scoreboard players add #loop mechanization.data 10

playsound mechanization:base.wrench_break player @a ~ ~ ~
execute anchored eyes positioned ^ ^ ^ run function mechanization:base/player/wrench/loop
scoreboard players set #interaction mechanization.data 0
