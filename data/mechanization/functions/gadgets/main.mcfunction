
#player
execute as @a at @s run function mechanization:gadgets/player

#Machine Ticks
execute if score $base.timer_20 du_data matches 7 as @e[tag=mech_charging_station] at @s run function mechanization:gadgets/machines/charging_station/charging_station
execute if score $base.timer_20 du_data matches 8 as @e[tag=mech_tinker_table] at @s run function mechanization:gadgets/machines/tinker_table/tinker_table
execute if score $base.timer_20 du_data matches 9 as @e[tag=mech_xp_tank] at @s run function mechanization:gadgets/machines/xp_tank
execute if score $base.timer_20 du_data matches 18 as @e[tag=mech_xp_tank] at @s run function mechanization:gadgets/machines/xp_tank

#bullets
kill @e[tag=mech_bullet_arrow]
execute as @e[tag=mech_bullet] at @s run function mechanization:gadgets/guns/bullet/raycast

#titanium trident
execute as @e[type=trident,tag=!mech_landed] at @s run function mechanization:gadgets/upgrades/trident/trident_proj
