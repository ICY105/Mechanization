
execute if entity @s[tag=mech_cable_init,tag=mech_receiver] at @s run function mechanization:base/machines/cable/remove_adjacent_cable
execute if entity @s[tag=mech_cable_init,tag=mech_transmitter] at @s run function mechanization:base/machines/cable/remove_adjacent_cable
execute if entity @s[tag=mech_cable_init,tag=mech_power_storage] at @s run function mechanization:base/machines/cable/remove_adjacent_cable

function mechanization:base/utils/break_machine
execute unless entity @p[gamemode=creative,distance=..8] run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
