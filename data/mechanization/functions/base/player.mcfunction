
#Click Detect
tag @s remove mech_right_click
execute if score @s mech_use_coas matches 1.. run tag @s add mech_right_click
scoreboard players set @s mech_use_coas 0

scoreboard players set @s mech_usedid 0
execute store result score @s mech_usedid run data get entity @s SelectedItem.tag.mech_itemid

#tools
execute if entity @s[tag=du_right_click] if score @s mech_usedid matches 1100 run function mechanization:base/tools/wrench
execute if entity @s[tag=du_right_click] if score @s mech_usedid matches 1101 run function mechanization:base/tools/multimeter
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1102 run function mechanization:base/tools/machine_upgrade
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1103 run function mechanization:base/tools/nether_upgrade
execute if entity @s[tag=mech_right_click] if score @s mech_usedid matches 1104 run function mechanization:base/tools/ender_upgrade

#manual
execute store result score temp_0 mech_data run data get entity @s SelectedItem.tag.mech_version
execute if data entity @s SelectedItem{id:"minecraft:written_book"}.tag{CustomModelData:6421105} if score temp_0 mech_data matches ..2 run function mechanization:base/utils/replace_manual

#Craft Machine Crafter
execute if score @s mech_crafter matches 1.. run function mechanization:base/machines/crafter

#assign grid id
execute unless score @s mech_gridid matches -2147483648.. run scoreboard players set @s mech_gridid 0
scoreboard players enable @s mech_gridid
