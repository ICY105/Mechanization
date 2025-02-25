
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 unless block ~ ~ ~ #mechanization:non-solid unless block ~ ~1 ~ #mechanization:non-solid run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 0 rotated ~ 0 unless block ^ ^0.5 ^0.5 #mechanization:non-solid unless block ^ ^1.5 ^0.5 #mechanization:non-solid run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 rotated ~ 0 if block ^ ^0.5 ^1.5 #mechanization:air if block ^ ^1.5 ^1.5 #mechanization:air run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 rotated ~ 0 if block ^ ^0.5 ^2.5 #mechanization:air if block ^ ^1.5 ^2.5 #mechanization:air run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 rotated ~ 0 if block ^ ^0.5 ^3.5 #mechanization:air if block ^ ^1.5 ^3.5 #mechanization:air run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 rotated ~ 0 if block ^ ^0.5 ^4.5 #mechanization:air if block ^ ^1.5 ^4.5 #mechanization:air run scoreboard players set #success mechanization.data 2

execute unless score #success mechanization.data matches 2 run return 0

scoreboard players operation #player.in energy.data = #gadgets.cf.wall_walk_power mechanization.data
scoreboard players operation #player.in energy.data *= #cons.-1 mechanization.data
function energy:v1/api/modify_player_energy
execute if score #player.out energy.data matches 1.. rotated ~ 0 run tp @s ^ ^ ^0.5
