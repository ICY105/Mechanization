
execute store result score #loop mechanization.data run attribute @s minecraft:player.block_interaction_range get 20
scoreboard players add #loop mechanization.data 10

scoreboard players set #debug mechanization.data 0
execute if entity @s[tag=mechanization.debug] run scoreboard players set #debug mechanization.data 1

execute anchored eyes positioned ^ ^ ^ run function mechanization:base/player/multimeter/loop
scoreboard players set #interaction mechanization.data 0
