
#check upgrades
execute if score $base.timer_20 du_data matches 10 if entity @s[nbt={Inventory:[{tag:{mech_modify:1b}}]}] run function mechanization:gadgets/upgrades/check_upgrades_armor

execute if entity @s[nbt={SelectedItem:{tag:{mech_modify:1b}}}] run function mechanization:gadgets/upgrades/check_upgrades_tools
execute if entity @s[tag=mech_upgrade_tool,nbt=!{SelectedItem:{tag:{mech_modify:1b}}}] run function mechanization:gadgets/upgrades/remove_upgrades_tools_2

#upgrades
execute if entity @s[tag=mech_upgrade_slowfall] if block ~ ~-1 ~ #du:air if block ~ ~-2 ~ #du:air if block ~ ~-3 ~ #du:air run function mechanization:gadgets/upgrades/armor/slowfall
execute if entity @s[tag=mech_upgrade_flight] if entity @s[nbt={FallFlying:0b}] run function mechanization:gadgets/upgrades/armor/flight
execute if entity @s[tag=mech_invisible] at @e[type=area_effect_cloud,tag=mech_invis_mark,sort=nearest,limit=1] run tp @s ~ ~0.25 ~
execute if score $base.timer_100 du_data matches 0 if entity @s[tag=mech_upgrade_shield] run function mechanization:gadgets/upgrades/armor/shield



#guns
scoreboard players remove @s mech_firerate 1
scoreboard players set @s[scores={mech_firerate=..-1}] mech_firerate 0
scoreboard players set @s[scores={mech_weaponheat=..-1}] mech_weaponheat 0
scoreboard players remove @s[tag=!mech_right_click] mech_weaponheat 6

execute if entity @s[tag=mech_fire_cont,scores={mech_usedid=4102..4105,mech_firerate=2,mech_weaponheat=..1000}] at @s run function mechanization:gadgets/guns/fire_gun
execute if entity @s[tag=mech_right_click,scores={mech_usedid=4102..4105,mech_firerate=0,mech_weaponheat=..1000}] at @s run function mechanization:gadgets/guns/fire_gun

execute if entity @s[scores={mech_weaponheat=1..}] run function mechanization:gadgets/guns/display_heat
