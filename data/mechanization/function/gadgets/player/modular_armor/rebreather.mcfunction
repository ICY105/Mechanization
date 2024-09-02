
scoreboard players operation #player.in energy.data = #gadgets.cf.rebreather_power mechanization.data
scoreboard players operation #player.in energy.data *= #cons.-1 mechanization.data
execute if block ~ ~1 ~ #mechanization:water run function energy:v1/api/modify_player_energy
execute if block ~ ~1 ~ #mechanization:water if score #player.out energy.data matches 1.. run effect give @s minecraft:water_breathing 2 0 true
