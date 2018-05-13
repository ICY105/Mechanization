
#Machine Ticks
execute if score timer_20 du_data matches 7 as @e[tag=mech_charging_station] at @s run function mechanization:gadgets/machines/charging_station
execute if score timer_20 du_data matches 8 as @e[tag=mech_tinker_table] at @s run function mechanization:gadgets/machines/tinker_table/tinker_table
execute if score timer_20 du_data matches 9 as @e[tag=mech_xp_tank] at @s run function mechanization:gadgets/machines/xp_tank
execute if score timer_20 du_data matches 18 as @e[tag=mech_xp_tank] at @s run function mechanization:gadgets/machines/xp_tank

#check upgrades
execute if score timer_20 du_data matches 10 as @a[nbt={Inventory:[{tag:{modified:3}}]}] run function mechanization:gadgets/upgrades/check_upgrades_armor

execute as @a[nbt={SelectedItem:{tag:{modified:2}}}] run function mechanization:gadgets/upgrades/check_upgrades_tools
execute as @a[tag=mech_upgrade_tool,nbt=!{SelectedItem:{tag:{modified:2}}}] run function mechanization:gadgets/upgrades/remove_upgrades_tools_2

#upgrades
execute as @a[tag=mech_upgrade_slowfall] at @s if block ~ ~-2 ~ air if block ~ ~-3 ~ air run function mechanization:gadgets/upgrades/armor/slowfall
execute as @a[tag=mech_upgrade_flight] at @s run function mechanization:gadgets/upgrades/armor/flight
execute if score timer_100 du_data matches 0 as @a[tag=mech_upgrade_shield] run function mechanization:gadgets/upgrades/armor/shield
execute as @a[tag=mech_invisible] at @s at @e[type=area_effect_cloud,tag=mech_invis_mark,sort=nearest,limit=1] run tp @s ~ ~0.25 ~

execute as @e[type=trident,tag=!mech_landed] at @s run function mechanization:gadgets/upgrades/trident/trident_proj

#spelunker tools
execute as @a[tag=du_right_click,scores={mech_usedid=4100,mech_firerate=0}] at @s run function mechanization:gadgets/tools/iron_ecolocater
execute as @a[tag=du_right_click,scores={mech_usedid=4101,mech_firerate=0}] at @s run function mechanization:gadgets/tools/diamond_ecolocater


#guns
scoreboard players remove @a mech_firerate 1
scoreboard players set @a[scores={mech_firerate=..-1}] mech_firerate 0
scoreboard players remove @a[tag=!du_right_click] mech_weaponheat 6
scoreboard players set @a[scores={mech_weaponheat=..-1}] mech_weaponheat 0

execute as @a[tag=mech_fire_cont,scores={mech_usedid=4102..4104,mech_firerate=2,mech_weaponheat=..1000}] at @s run function mechanization:gadgets/guns/fire_gun
execute as @a[tag=du_right_click,scores={mech_usedid=4102..4104,mech_firerate=0,mech_weaponheat=..1000}] at @s run function mechanization:gadgets/guns/fire_gun
execute as @a[tag=du_left_click,scores={mech_usedid=4102..4104}] run function mechanization:gadgets/guns/switch_ads

execute as @a[scores={mech_weaponheat=1..}] run function mechanization:gadgets/guns/display_heat

kill @e[tag=mech_bullet_arrow]
execute as @e[tag=mech_bullet] at @s run function mechanization:gadgets/guns/bullet/raycast
