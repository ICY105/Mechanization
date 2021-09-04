
#player
execute as @a at @s run function mechanization:gadgets/player

#Machine Ticks
execute if score $base.timer_20 du_data matches 7 as @e[type=minecraft:armor_stand,tag=mech_charging_station] at @s run function mechanization:gadgets/machines/charging_station/charging_station
execute if score $base.timer_20 du_data matches 8 as @e[type=minecraft:glow_item_frame,tag=mech_tinker_table,tag=!mech_active] at @s run function mechanization:gadgets/machines/tinker_table/tinker_table
execute as @e[type=minecraft:glow_item_frame,tag=mech_tinker_table,tag=mech_active] at @s run function mechanization:gadgets/machines/tinker_table/tinker_table_active

#projectiles
execute as @e[type=minecraft:area_effect_cloud,tag=mech_bullet] at @s run function mechanization:gadgets/tools/firearms/bullet/raycast
execute as @e[type=minecraft:armor_stand,tag=mech_energy_saber] at @s run function mechanization:gadgets/tools/energy_saber/saber_projectile
