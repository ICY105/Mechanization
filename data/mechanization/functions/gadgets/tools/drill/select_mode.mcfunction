
execute unless block ~ ~ ~ #mechanization:drill/empty run function mechanization:gadgets/tools/drill/select_mode_transform

scoreboard players remove $in_0 mechanization.data 1
execute if score $in_0 mechanization.data matches 1.. positioned ^ ^ ^0.05 run function mechanization:gadgets/tools/drill/select_mode
