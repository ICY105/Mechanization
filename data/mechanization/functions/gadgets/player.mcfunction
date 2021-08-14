
#energy saber throw
execute if score @s[tag=mech_right_click] mech_usedid matches 4100 run function mechanization:gadgets/tools/energy_saber/throw_saber

#drill
execute if score @s mech_usedid matches 4101 run function mechanization:gadgets/tools/drill/tick

#armor
execute if data entity @s Inventory[].tag.mech_upgrades{type:3b} run function mechanization:gadgets/tools/modular_armor/tick

execute if score $base.timer_20 du_data matches 0 if data entity @s Inventory[{Slot:103b}].tag{mech_itemid:4112} run function mechanization:gadgets/tools/modular_armor/rebreather
execute if score $base.timer_20 du_data matches 0 if data entity @s Inventory[{Slot:103b}].tag{mech_itemid:4113} run function mechanization:gadgets/tools/modular_armor/night_vision

execute if data entity @s Inventory[{Slot:102b}].tag{mech_itemid:4111} unless entity @s[nbt={FallFlying:1b}] run function mechanization:gadgets/tools/modular_armor/flight

execute if score $base.timer_10 du_data matches 0 if data entity @s Inventory[{Slot:100b}].tag{mech_itemid:4114} run function mechanization:gadgets/tools/modular_armor/slowfall
execute if data entity @s[tag=du_moving] Inventory[{Slot:100b}].tag{mech_itemid:4115} run function mechanization:gadgets/tools/modular_armor/wall_walk

#firearm
execute if score @s[tag=mech_right_click] mech_usedid matches 4102..4105 run scoreboard players set @s mech_timer 4
execute if entity @s[scores={mech_usedid=4102..4105,mech_weaponheat=..1000,mech_timer=1..,mech_firerate=0}] run function mechanization:gadgets/tools/firearms/fire_weapon
execute if score @s mech_usedid matches 4102..4105 store result score $temp_0 mech_data run data get entity @s SelectedItem.tag.mech_gun.fire_rate
execute if score @s mech_usedid matches 4102..4105 run scoreboard players remove $temp_0 mech_data 4
execute if entity @s[scores={mech_usedid=4102..4105,mech_weaponheat=..1000,mech_timer=1..,mech_firerate=1..}] if score @s mech_firerate > $temp_0 mech_data run function mechanization:gadgets/tools/firearms/recoil

execute if score @s mech_timer matches 1.. run scoreboard players remove @s mech_timer 1
execute if score @s mech_firerate matches 1.. run scoreboard players remove @s mech_firerate 1
execute if score @s mech_weaponheat matches 1.. run scoreboard players remove @s mech_weaponheat 6
execute if score @s mech_weaponheat matches 1.. run function mechanization:gadgets/tools/firearms/display_heat

#reset scores
scoreboard players set @s mech_use_pick 0
scoreboard players set @s mech_use_axe 0
scoreboard players set @s mech_use_shovel 0
scoreboard players set @s mech_use_hoe 0
