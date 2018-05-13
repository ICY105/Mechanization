
#store power
scoreboard players set temp_3 mech_data 0
execute store result score temp_3 mech_data run scoreboard players get @e[scores={mech_power=1..},sort=nearest,limit=1,distance=..0.5] mech_power

#Machine Upgrade
execute as @e[tag=mech_upgraded,distance=..0.5] run function give:mech_base/machine_upgrade

#Batteries
execute as @e[tag=mech_storage1,distance=..0.5] run function give:mech_base/battery_tier_1
execute as @e[tag=mech_storage2,distance=..0.5] run function give:mech_base/battery_tier_2
execute as @e[tag=mech_storage3,distance=..0.5] run function give:mech_base/battery_tier_3
execute as @e[tag=mech_storageq,distance=..0.5] run function give:mech_base/battery_quantum
execute as @e[tag=mech_power_storage,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_power_storage,distance=..0.5]

#Energy Relay
execute as @e[tag=mech_energy_relay,distance=..0.5] run function give:mech_base/energy_relay
execute as @e[tag=mech_energy_relay,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_energy_relay,distance=..0.5]

#Machine Crafter
execute as @e[tag=mech_machine_crafter,distance=..0.5] run function give:mech_base/machine_crafter
execute as @e[tag=mech_machine_crafter,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_machine_crafter,distance=..0.5]

#Machine Crafter
execute as @e[tag=mech_network_reformer,distance=..0.5] run function give:mech_base/network_reformer
execute as @e[tag=mech_network_reformer,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_network_reformer,distance=..0.5]

function #mechanization:wrench_break

#store power to item
execute if score temp_3 mech_data matches 1.. run data merge entity @e[type=item,sort=nearest,limit=1,distance=..0.5] {Item:{tag:{mech_energy:0,display:{Lore:["Stored Energy"]}}}}
execute if score temp_3 mech_data matches 1.. store result entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mech_energy int 1 run scoreboard players get temp_3 mech_data