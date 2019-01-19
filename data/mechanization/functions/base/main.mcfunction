
#player
execute as @a at @s run function mechanization:base/player

#Assign IDs
execute as @e[scores={mech_power=-10000..},tag=!mech_has_gridid] run function mechanization:base/machines/assign_id

#Machine Crafter
execute if score timer_20 du_data matches 1 as @e[tag=mech_machine_crafter] at @s run function mechanization:base/machines/machine_crafting_table

#Energy Storages
execute if score timer_20 du_data matches 2 as @e[type=armor_stand,tag=mech_storage1] at @s run function mechanization:base/machines/battery_tier_1
execute if score timer_20 du_data matches 3 as @e[type=armor_stand,tag=mech_storage2] at @s run function mechanization:base/machines/battery_tier_2
execute if score timer_20 du_data matches 4 as @e[type=armor_stand,tag=mech_storage3] at @s run function mechanization:base/machines/battery_tier_3
execute if score timer_20 du_data matches 5 run function mechanization:base/utils/quantum_network_update

#Energy Relay
execute if score timer_20 du_data matches 6 as @e[type=armor_stand,tag=mech_energy_relay] at @s run function mechanization:base/machines/relay/energy_relay
