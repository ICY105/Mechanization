
# player
execute as @a at @s run function mechanization:gadgets/player/tick

# Machine Ticks
execute if score #timer.20 mechanization.data matches 7 as @e[type=armor_stand,tag=mechanization.charging_station] at @s run function mechanization:gadgets/machines/charging_station/charging_station
execute if score #timer.20 mechanization.data matches 8 as @e[type=#mechanization:item_frames,tag=mechanization.tinker_table,tag=!mechanization.active] at @s run function mechanization:gadgets/machines/tinker_table/tinker_table
execute as @e[type=#mechanization:item_frames,tag=mechanization.tinker_table,tag=mechanization.active] at @s run function mechanization:gadgets/machines/tinker_table/tinker_table_active

# projectiles
execute as @e[type=minecraft:marker,tag=mechanization.bullet] at @s run function mechanization:gadgets/player/firearms/bullet/raycast
execute as @e[type=minecraft:armor_stand,tag=mechanization.energy_saber] at @s run function mechanization:gadgets/player/energy_saber/saber_projectile
