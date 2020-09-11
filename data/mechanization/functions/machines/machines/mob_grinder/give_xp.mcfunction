
#execute as @p[distance=..24] run function mechanization:machines/machines/mob_grinder/give_xp_2
execute if score temp_0 mech_data matches 1.. as @e[tag=mech_xp_tank,distance=..24,sort=nearest,limit=1,scores={mech_data=..2047}] run scoreboard players operation @s mech_data += temp_0 mech_data
