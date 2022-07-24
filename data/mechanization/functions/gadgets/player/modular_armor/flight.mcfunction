
scoreboard players operation #player.in energy.data = #gadgets.cf.flight_power mechanization.data
scoreboard players operation #player.in energy.data *= #cons.-1 mechanization.data

scoreboard players set #player.out energy.data 0
execute if block ~ ~-1 ~ #mechanization:air if block ~ ~-2 ~ #mechanization:air run function energy:v1/api/modify_player_energy

effect clear @s minecraft:levitation
execute if score #player.out energy.data matches 1.. run effect give @s[x_rotation=-45..45] minecraft:levitation 1 255 true
execute if score #player.out energy.data matches 1.. run effect give @s[x_rotation=-90..-45] minecraft:levitation 1 5 true
execute if score #player.out energy.data matches 1.. run effect give @s[x_rotation=45..90] minecraft:slow_falling 1 0 true
