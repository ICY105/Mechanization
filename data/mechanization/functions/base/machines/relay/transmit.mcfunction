
#send energy
scoreboard players set $in_0 mechanization.data 600
execute if score @s mechanization.stored_energy matches ..600 run scoreboard players operation $in_0 mechanization.data = @s mech_power

scoreboard players set $temp_0 mechanization.data 0
execute as @e[distance=1..48,type=minecraft:item_frame,tag=mech_energy_relay,scores={mech_power=..2000,mech_data=1},sort=nearest,limit=1] store success score $temp_0 mechanization.data run scoreboard players operation @s mechanization.stored_energy += $in_0 mech_data

execute if score $temp_0 mechanization.data matches 1 run scoreboard players operation @s mechanization.stored_energy -= $in_0 mech_data
