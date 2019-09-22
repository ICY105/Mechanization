execute if score in_0 mech_data matches 1 unless block ~ ~ ~ minecraft:cave_air run playsound mechanization:gadgets.echo_rock player @s ~ ~ ~ 4 1
execute if block ~ ~ ~ minecraft:cave_air run playsound mechanization:gadgets.echo_cave player @s ~ ~ ~ 4 1
scoreboard players remove in_0 mech_data 1
execute if score in_0 mech_data matches 1.. unless block ~ ~ ~ minecraft:cave_air positioned ^ ^ ^0.25 run function mechanization:gadgets/tools/echo-locater_2
