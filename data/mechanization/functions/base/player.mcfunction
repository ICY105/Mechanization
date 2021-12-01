
#Click Detect
tag @s remove mech_right_click
execute if score @s mech_use_coas matches 1.. run tag @s add mech_right_click
scoreboard players set @s mech_use_coas 0

scoreboard players set @s mech_usedid 0
item replace block -29999999 0 1601 container.0 from entity @s weapon.mainhand
execute store result score @s mech_usedid run data get block -29999999 0 1601 Items[{Slot:0b}].tag.mech_itemid

#tools
execute if entity @s[tag=du_right_click] if score @s mech_usedid matches 1100 run function mechanization:base/tools/wrench
execute if entity @s[tag=du_right_click] if score @s mech_usedid matches 1101 run function mechanization:base/tools/multimeter
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1102 run function mechanization:base/tools/machine_upgrade
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1103 run function mechanization:base/tools/nether_upgrade
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1104 run function mechanization:base/tools/ender_upgrade
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1109 run function mechanization:base/tools/muffler_upgrade

#manual
loot give @s[tag=!mech_has_manual] loot mechanization:base/manual/start
execute if data entity @s[tag=!mech_has_manual] Inventory[].tag{mech_itemid:1105} run tag @s add mech_has_manual

execute if score @s mech_usedid matches 1105 if score @s mech_manual matches 1.. run function mechanization:base/tools/manual_pin_recipe
execute if score @s mech_usedid matches 1105 if score @s mech_manual matches ..-1 run function mechanization:base/tools/manual_switch_mode
execute if score @s mech_usedid matches 1105 run scoreboard players set @s mech_manual 0
execute if score @s mech_usedid matches 1105 run scoreboard players enable @s mech_manual
execute if score @s mech_usedid matches 1105 store result score temp_0 mech_data run data get entity @s SelectedItem.tag.mech_version
execute if score @s mech_usedid matches 1105 if score temp_0 mech_data matches ..6 run loot replace entity @s weapon.mainhand loot mechanization:base/manual/start
