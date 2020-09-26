
experience add @s 2
scoreboard players remove temp_0 mech_data 1
execute if score temp_0 mech_data matches 1.. run function mechanization:machines/machines/mob_grinder/give_xp_2
