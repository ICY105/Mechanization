function ttb:block/move
function ttb:block/check_items

tag @s remove mech_transmitter
tag @s remove mech_reciever
tag @s[tag=!mysterious] add mech_transmitter
tag @s[tag=mysterious] add mech_reciever

#Conversion Rate: 1 tempite per 10 kJ

scoreboard players set temp_0 mech_data 25
scoreboard players operation temp_0 mech_data *= @s ascended
scoreboard players add temp_0 mech_data 25

scoreboard players set temp_1 mech_data 10
scoreboard players operation temp_1 mech_data *= temp_0 mech_data



#Energy waste, starting at 25%. Amethyst crystal gives -5% waste
scoreboard players set temp_2 mech_data 5
scoreboard players operation temp_2 mech_data *= @s reduced
scoreboard players set temp_3 mech_data 75
scoreboard players operation temp_3 mech_data += temp_3 mech_data

scoreboard players set temp2 mech_data 100 
execute if entity @s[tag=!mysterious] run scoreboard players operation temp_1 mech_data *= temp_3 mech_data
execute if entity @s[tag=!mysterious] run scoreboard players operation temp_1 mech_data /= temp2 mech_data
execute if entity @s[tag=mysterious] run scoreboard players operation temp_0 mech_data *= temp_3 mech_data
execute if entity @s[tag=mysterious] run scoreboard players operation temp_0 mech_data /= temp2 mech_data

execute if entity @s[tag=!mysterious] run scoreboard players operation @s mech_power += temp_1



scoreboard players set temp_2 mech_data 0
execute if entity @s[scores={mech_power=..4000,mech_timer=0},tag=!mysterious] as @e[scores={tempite=1..},distance=..20] if score @s tempite >= temp_0 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=..4000,mech_timer=0},tag=!mysterious] store success score temp_2 mech_data run scoreboard players operation @e[limit=1,sort=nearest,tag=mech_posstrans] tempite -= temp_0 mech_data
execute if score temp_2 mech_data matches 1 run scoreboard players operation @s mech_power += temp_1 mech_data
tag @e[tag=mech_posstrans] remove mech_posstrans

execute if entity @s[tag=mysterious,scores={mech_timer=0}] if score @s mech_power >= temp_1 mech_data run scoreboard players operation @e[limit=1,sort=nearest,scores={tempite=1..}] tempite += temp_0 mech_data
execute if entity @s[tag=mysterious,scores={mech_timer=0}] if score @s mech_power >= temp_1 mech_data run scoreboard players operation @s mech_power -= temp_1 mech_data

scoreboard players set @s mech_timer 4