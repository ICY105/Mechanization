
scoreboard players operation #player.in energy.data = #gadgets.cf.slow_fall_power mechanization.data
scoreboard players operation #player.in energy.data *= #cons.-1 mechanization.data
execute if block ~ ~-1 ~ #mechanization:air if block ~ ~-2 ~ #mechanization:air if block ~ ~-3 ~ #mechanization:air run function energy:v1/api/modify_player_energy
execute if block ~ ~-1 ~ #mechanization:air if block ~ ~-2 ~ #mechanization:air if block ~ ~-3 ~ #mechanization:air if score #player.out energy.data matches 1.. run effect give @s minecraft:slow_falling 1 0 true
