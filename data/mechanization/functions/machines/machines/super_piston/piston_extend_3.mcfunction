
#check conditions
scoreboard players remove in_1 mech_data 1
execute if block ^ ^ ^ #mechanization:piston_nopush run scoreboard players set in_0 mech_data 0
execute if score in_1 mech_data matches 0 unless block ^ ^ ^1 #du:air run scoreboard players set in_0 mech_data 0

#run sub commands
execute if score in_1 mech_data matches 1.. positioned ^ ^ ^1 unless block ~ ~ ~ #du:air run function mechanization:machines/machines/super_piston/piston_extend_3

#move
execute if score in_0 mech_data matches 1 run clone ^ ^ ^ ^ ^ ^ ^ ^ ^1 replace move
execute if score in_0 mech_data matches 1 align xyz as @e[dx=0,dy=0,dz=0] positioned as @s run tp @s ^ ^ ^1