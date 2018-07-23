#### Begin API ####

#Indicates Placed Head
execute as @a[scores={mech_placehead=1..}] at @s run function mechanization:base/placement/trace_head

#Indicates Picked Up Head
execute as @a[scores={mech_pickuphead=1..}] at @s run function #mechanization:pickup_head
scoreboard players remove @a[scores={mech_pickuphead=1..}] mech_pickuphead 1

#Click Detect
execute as @a[tag=du_right_click] run function mechanization:base/utils/get_item_id
execute as @a[tag=du_left_click] run function mechanization:base/utils/get_item_id
execute as @a[tag=du_right_click,scores={mech_usedid=1100}] at @s run function mechanization:base/tools/spawn_wrench
execute as @a[tag=du_right_click,scores={mech_usedid=1101}] at @s run function mechanization:base/tools/spawn_multimeter
execute as @a[tag=du_right_click,scores={mech_usedid=1102}] at @s run function mechanization:base/tools/machine_upgrade
execute as @a[tag=du_right_click,scores={mech_usedid=1000..1099}] at @s run function mechanization:base/placement/trace_spot
execute as @a[tag=du_right_click,scores={mech_usedid=2000..2099}] at @s run function mechanization:base/placement/trace_spot
execute as @a[tag=du_right_click,scores={mech_usedid=3000..3099}] at @s run function mechanization:base/placement/trace_spot
execute as @a[tag=du_right_click,scores={mech_usedid=4000..4099}] at @s run function mechanization:base/placement/trace_spot
execute as @a[tag=du_right_click,scores={mech_usedid=5000..5099}] at @s run function mechanization:base/placement/trace_spot
execute as @a[tag=du_right_click,scores={mech_usedid=6000..6099}] at @s run function mechanization:base/placement/trace_spot

#manual
execute as @a[tag=du_right_click,scores={mech_usedid=1103}] at @s run function mechanization:base/tools/manual/manual
execute as @a[tag=du_left_click,scores={mech_usedid=1103}] at @s run function mechanization:base/tools/manual/manual
execute as @a[tag=mech_manual_open] if entity @s[nbt=!{SelectedItem:{ tag:{mech_itemid: 1103} }}] run function mechanization:base/tools/manual/close
execute as @a[tag=mech_manual_open,tag=du_jumping] run function mechanization:base/tools/manual/open_menu
execute as @a[tag=mech_manual_open,scores={mech_manual=1..9}] if entity @s[nbt={SelectedItem:{ tag:{mech_itemid: 1103} }}] run function mechanization:base/tools/manual/menu

#Removes GUI Parts from Players
clear @a minecraft:diamond_shovel{UIPart:1}

#Assign IDs
scoreboard players set @p[tag=!mech_has_id] mech_gridid 0
scoreboard players enable @p mech_gridid
tag @p[tag=!mech_has_id] add mech_has_id
execute as @e[scores={mech_power=-10000..},tag=!mech_has_gridid] run function mechanization:base/machines/assign_id

#Machine Crafter
execute as @a[scores={mech_crafter=1..}] at @s run function mechanization:base/machines/crafter

#Energy Storages
execute if score timer_20 du_data matches 1 as @e[type=armor_stand,tag=mech_storage1] at @s run function mechanization:base/machines/battery_1/battery
execute if score timer_20 du_data matches 2 as @e[type=armor_stand,tag=mech_storage2] at @s run function mechanization:base/machines/battery_2/battery
execute if score timer_20 du_data matches 3 as @e[type=armor_stand,tag=mech_storage3] at @s run function mechanization:base/machines/battery_3/battery
execute if score timer_20 du_data matches 4 as @e[type=armor_stand,tag=mech_storageq] at @s run function mechanization:base/machines/battery_q/battery

#Energy Relay
execute if score timer_20 du_data matches 5 as @e[type=armor_stand,tag=mech_energy_relay] at @s run function mechanization:base/machines/relay/energy_relay

#Network Reformer
execute if score timer_20 du_data matches 6 as @e[type=armor_stand,tag=mech_network_reformer] at @s run function mechanization:base/machines/network_reformer/network_reformer