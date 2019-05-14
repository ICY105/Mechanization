
#check upgrades
execute if score timer_20 du_data matches 10 if entity @s[nbt={Inventory:[{tag:{modified:3}}]}] run function mechanization:gadgets/upgrades/check_upgrades_armor

execute if entity @s[nbt={SelectedItem:{tag:{modified:2}}}] run function mechanization:gadgets/upgrades/check_upgrades_tools
execute if entity @s[tag=mech_upgrade_tool,nbt=!{SelectedItem:{tag:{modified:2}}}] run function mechanization:gadgets/upgrades/remove_upgrades_tools_2

#upgrades
execute if entity @s[tag=mech_upgrade_slowfall] at @s if block ~ ~-2 ~ air if block ~ ~-3 ~ air run function mechanization:gadgets/upgrades/armor/slowfall
execute if entity @s[tag=mech_upgrade_flight] at @s run function mechanization:gadgets/upgrades/armor/flight
execute if entity @s[tag=mech_invisible] at @s at @e[type=area_effect_cloud,tag=mech_invis_mark,sort=nearest,limit=1] run tp @s ~ ~0.25 ~
execute if score timer_100 du_data matches 0 if entity @s[tag=mech_upgrade_shield] run function mechanization:gadgets/upgrades/armor/shield

#spelunker tools
execute if entity @s[tag=mech_right_click,scores={mech_usedid=4100,mech_firerate=0}] at @s run function mechanization:gadgets/tools/iron_echo-locater
execute if entity @s[tag=mech_right_click,scores={mech_usedid=4101,mech_firerate=0}] at @s run function mechanization:gadgets/tools/diamond_echo-locater


#guns
scoreboard players remove @s mech_firerate 1
scoreboard players set @s[scores={mech_firerate=..-1}] mech_firerate 0
scoreboard players set @s[scores={mech_weaponheat=..-1}] mech_weaponheat 0
scoreboard players remove @s[tag=!mech_right_click] mech_weaponheat 6

execute if entity @s[tag=mech_fire_cont,scores={mech_usedid=4102..4105,mech_firerate=2,mech_weaponheat=..1000}] at @s run function mechanization:gadgets/guns/fire_gun
execute if entity @s[tag=mech_right_click,scores={mech_usedid=4102..4105,mech_firerate=0,mech_weaponheat=..1000}] at @s run function mechanization:gadgets/guns/fire_gun

execute if entity @s[scores={mech_weaponheat=1..}] run function mechanization:gadgets/guns/display_heat
