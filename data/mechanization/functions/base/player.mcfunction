
#Click Detect
tag @s remove mech_right_click
execute if score @s mech_use_coas matches 1.. run tag @s add mech_right_click
scoreboard players set @s mech_use_coas 0

execute store result score @s mech_usedid run data get entity @s SelectedItem.tag.mech_itemid
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1100 run function mechanization:base/tools/wrench
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1101 run function mechanization:base/tools/multimeter
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1102 run function mechanization:base/tools/machine_upgrade
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1103 run function mechanization:base/tools/nether_upgrade
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1104 run function mechanization:base/tools/ender_upgrade

#manual
execute if entity @s[tag=du_right_click,scores={mech_usedid=1103}] run function mechanization:base/tools/manual/manual
execute if entity @s[tag=du_left_click,scores={mech_usedid=1103}] run function mechanization:base/tools/manual/manual
execute if entity @s[tag=mech_manual_open] if entity @s[nbt=!{SelectedItem:{ tag:{mech_itemid: 1103} }}] run function mechanization:base/tools/manual/close
execute if entity @s[tag=mech_manual_open,tag=du_jumping] run function mechanization:base/tools/manual/open_menu
execute if entity @s[tag=mech_manual_open,scores={mech_manual=1..9}] if entity @s[nbt={SelectedItem:{ tag:{mech_itemid: 1103} }}] run function mechanization:base/tools/manual/menu

#Craft Machine Crafter
execute if score @s mech_crafter matches 1.. run function mechanization:base/machines/crafter

#assign grid id
scoreboard players set @s[tag=!mech_has_id] mech_gridid 0
scoreboard players enable @s mech_gridid
tag @s[tag=!mech_has_id] add mech_has_id

#clear bad items
clear @s minecraft:structure_block{du_gui:1b}