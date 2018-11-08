scoreboard players set out_0 mech_data 0
execute if entity @s[tag=du_sneaking,x_rotation=75..,tag=!mech_invisible] run scoreboard players set in_0 mech_data 25
execute if entity @s[tag=du_sneaking,x_rotation=75..,tag=!mech_invisible] run function mechanization:base/tools/player_energy/use_energy
execute if entity @s[tag=du_sneaking,tag=mech_invisible] run scoreboard players set in_0 mech_data 512
execute if entity @s[tag=du_sneaking,tag=mech_invisible] run function mechanization:base/tools/player_energy/use_energy

execute if score out_0 mech_data matches 1 if entity @s[tag=!mech_invisible,gamemode=survival] run function mechanization:gadgets/upgrades/armor/invisibility_start
execute if score out_0 mech_data matches 0 if entity @s[tag=mech_invisible] run function mechanization:gadgets/upgrades/armor/invisibility_stop
