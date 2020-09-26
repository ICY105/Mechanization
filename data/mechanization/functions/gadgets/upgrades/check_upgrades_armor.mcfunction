
execute if entity @s[tag=mech_up_helm,nbt=!{Inventory:[ {Slot:103b,tag:{mech_modify:1b}} ]}] run function mechanization:gadgets/upgrades/remove_upgrades_armor
execute if entity @s[tag=mech_up_chest,nbt=!{Inventory:[ {Slot:102b,tag:{mech_modify:1b}} ]}] run function mechanization:gadgets/upgrades/remove_upgrades_armor
execute if entity @s[tag=mech_up_legs,nbt=!{Inventory:[ {Slot:101b,tag:{mech_modify:1b}} ]}] run function mechanization:gadgets/upgrades/remove_upgrades_armor
execute if entity @s[tag=mech_up_boots,nbt=!{Inventory:[ {Slot:100b,tag:{mech_modify:1b}} ]}] run function mechanization:gadgets/upgrades/remove_upgrades_armor

execute if entity @s[tag=!mech_up_helm,nbt={Inventory:[ {Slot:103b,tag:{mech_modify:1b}} ]}] run function mechanization:gadgets/upgrades/armor/set_helmet_upgrades
execute if entity @s[tag=!mech_up_chest,nbt={Inventory:[ {Slot:102b,tag:{mech_modify:1b}} ]}] run function mechanization:gadgets/upgrades/armor/set_chestplate_upgrades
execute if entity @s[tag=!mech_up_legs,nbt={Inventory:[ {Slot:101b,tag:{mech_modify:1b}} ]}] run function mechanization:gadgets/upgrades/armor/set_leggings_upgrades
execute if entity @s[tag=!mech_up_boots,nbt={Inventory:[ {Slot:100b,tag:{mech_modify:1b}} ]}] run function mechanization:gadgets/upgrades/armor/set_boots_upgrades

#upgrades
execute if entity @s[tag=mech_upgrade_vision] run scoreboard players set in_0 mech_data 4
execute if entity @s[tag=mech_upgrade_vision] run function mechanization:base/energy/player_energy
execute if entity @s[tag=mech_upgrade_vision] if score out_0 mech_data matches 1 run effect give @s night_vision 2 0 true

execute if entity @s[tag=mech_upgrade_breathing] run scoreboard players set in_0 mech_data 6
execute if entity @s[tag=mech_upgrade_breathing] run function mechanization:base/energy/player_energy
execute if entity @s[tag=mech_upgrade_breathing] if score out_0 mech_data matches 1 run effect give @s water_breathing 2 0 true

execute if entity @s[tag=mech_upgrade_eater] run function mechanization:gadgets/upgrades/armor/eater

execute if entity @s[tag=mech_upgrade_antidote] run scoreboard players set in_0 mech_data 8
execute if entity @s[tag=mech_upgrade_antidote] run function mechanization:base/energy/player_energy
execute if entity @s[tag=mech_upgrade_antidote] if score out_0 mech_data matches 1 run function mechanization:gadgets/upgrades/armor/antidote

execute if entity @s[tag=mech_upgrade_invisibility] at @s run function mechanization:gadgets/upgrades/armor/invisibility


