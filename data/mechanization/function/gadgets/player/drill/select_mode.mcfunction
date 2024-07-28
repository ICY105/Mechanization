
execute unless block ~ ~ ~ #mechanization:drill/empty run function mechanization:gadgets/player/drill/select_mode_transform

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. positioned ^ ^ ^0.05 run function mechanization:gadgets/player/drill/select_mode
