
#player
execute as @a at @s run function mechanization:base/player

#Machine Crafter
execute as @e[type=glow_item_frame,tag=mech_machine_crafter] at @s run function mechanization:base/machines/machine_crafting_table/machine_crafting_table

#Energy Storages
#execute if score $base.timer_20 du_data matches 4 run function mechanization:base/machines/quantum_network/main

execute if score $base.timer_20 du_data matches 1 run function mechanization:base/energy/send_power_setup
execute if score $base.timer_20 du_data matches 2 as @e[type=#mechanization:valid_block_entities,tag=mech_transmitter] at @s run function mechanization:base/energy/send_power
execute if score $base.timer_20 du_data matches 3 as @e[type=#mechanization:valid_block_entities,tag=mech_power_storage] at @s run function mechanization:base/energy/send_power

execute if score $base.timer_20 du_data matches 4 as @e[type=item_frame,tag=mech_battery1] at @s run function mechanization:base/machines/tier_1_battery
execute if score $base.timer_20 du_data matches 5 as @e[type=item_frame,tag=mech_battery2] at @s run function mechanization:base/machines/tier_2_battery
execute if score $base.timer_20 du_data matches 6 as @e[type=item_frame,tag=mech_battery3] at @s run function mechanization:base/machines/tier_3_battery

#Energy Relay
execute if score $base.timer_20 du_data matches 7 as @e[type=item_frame,tag=mech_energy_relay] at @s run function mechanization:base/machines/relay/energy_relay

#cleanup abandoned blocks
execute if score $base.timer_100 du_data matches 98 as @e[type=item_frame,tag=mech_cable] at @s run function mechanization:base/machines/cable/cable
execute if score $base.timer_100 du_data matches 99 as @e[type=item_frame,tag=mech_resource_block] at @s unless block ~ ~ ~ minecraft:barrier run kill @s

#Energy Flux compat
execute if score $base.timer_20 du_data matches 0 if score $energy_flux.enabled mech_data matches 1 as @e[tag=EF_Use,tag=!EF_Wire,tag=!mech_ef_setup] at @s run function mechanization:base/energy/energy_flux/setup
