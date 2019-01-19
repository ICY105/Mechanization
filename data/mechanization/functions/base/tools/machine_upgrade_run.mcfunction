



scoreboard players set temp_0 mech_data 0
execute if score in_1 mech_data matches 0 store success score temp_0 mech_data run tag @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.5,tag=!mech_no_upgrade] add mech_upgraded
execute if score temp_0 mech_data matches 1 run title @s actionbar [{"translate":"mech.text.machine_upgrade.use","color":"dark_green"}]
execute if score temp_0 mech_data matches 1 run clear @s[gamemode=!creative] minecraft:carrot_on_a_stick{mech_itemid:1102} 1
execute if score temp_0 mech_data matches 1 run playsound minecraft:block.anvil.use player @s

scoreboard players set temp_0 mech_data 0
execute if score in_1 mech_data matches 1 store success score temp_0 mech_data run tag @e[sort=nearest,limit=1,distance=..0.5,tag=mech_upgraded,tag=!mech_upgrade_ender] add mech_upgrade_nether
execute if score temp_0 mech_data matches 1 run title @s actionbar [{"translate":"mech.text.machine_upgrade.use","color":"dark_red"}]
execute if score temp_0 mech_data matches 1 run clear @s[gamemode=!creative] minecraft:carrot_on_a_stick{mech_itemid:1103} 1
execute if score temp_0 mech_data matches 1 run playsound minecraft:block.anvil.use player @s

scoreboard players set temp_0 mech_data 0
execute if score in_1 mech_data matches 2 store success score temp_0 mech_data run tag @e[sort=nearest,limit=1,distance=..0.5,tag=mech_upgraded,tag=!mech_upgrade_nether] add mech_upgrade_ender
execute if score temp_0 mech_data matches 1 run title @s actionbar [{"translate":"mech.text.machine_upgrade.use","color":"dark_purple"}]
execute if score temp_0 mech_data matches 1 run clear @s[gamemode=!creative] minecraft:carrot_on_a_stick{mech_itemid:1104} 1
execute if score temp_0 mech_data matches 1 run playsound minecraft:block.anvil.use player @s