
execute unless block ~ ~ ~ #mechanization:drill/empty run function mechanization:gadgets/tools/drill/select_mode_transform

scoreboard players remove $in_0 mech_data 1
execute if score $in_0 mech_data matches 1.. positioned ^ ^ ^0.05 run function mechanization:gadgets/tools/drill/select_mode
