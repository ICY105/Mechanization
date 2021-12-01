
#check conditions
scoreboard players remove in_1 mechanization.data 1
execute if block ^ ^ ^ #mechanization:piston_nopush run scoreboard players set in_0 mechanization.data 0
execute if score in_1 mechanization.data matches 0 unless block ^ ^ ^1 #du:air run scoreboard players set in_0 mechanization.data 0

#run sub commands
execute if score in_1 mechanization.data matches 1.. positioned ^ ^ ^1 unless block ~ ~ ~ #du:air run function mechanization:machines/machines/super_piston/piston_extend_3

#move
execute if score in_0 mechanization.data matches 1 run clone ^ ^ ^ ^ ^ ^ ^ ^ ^1 replace move
execute if score in_0 mechanization.data matches 1 align xyz as @e[dx=0,dy=0,dz=0,tag=!global.ignore.pos] positioned as @s run tp @s ^ ^ ^1