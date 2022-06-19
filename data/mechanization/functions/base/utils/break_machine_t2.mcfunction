
execute if entity @s[tag=energy.send] at @s run function mechanization:base/machines/cable/remove_adjacent_cable
execute if entity @s[tag=!energy.send,tag=energy.receive] at @s run function mechanization:base/machines/cable/remove_adjacent_cable

function mechanization:base/utils/break_machine
execute unless entity @p[gamemode=creative,distance=..8] run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
