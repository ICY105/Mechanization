
#Storage Cells
execute if score @s mech_data matches 1000 run summon armor_stand ~ ~ ~ {Tags:["mech_storage1","mech_power_storage"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,Unbreakable:1,Damage:1}}]}
execute if score @s mech_data matches 1001 run summon armor_stand ~ ~ ~ {Tags:["mech_storage2","mech_power_storage"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,Unbreakable:1,Damage:10}}]}

execute if entity @s[scores={mech_data=1002},tag=!mech_operator] run summon armor_stand ~ ~ ~ {Tags:["mech_storage3","mech_power_storage"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,Unbreakable:1,Damage:19}}]}
execute if entity @s[scores={mech_data=1002},tag=mech_operator] run summon armor_stand ~ ~ ~ {Tags:["mech_storage3","mech_power_storage","mech_storage_creative"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,Unbreakable:1,Enchantments:[{id:1,lvl:1}],Damage:19}}]}

execute if score @s mech_data matches 1003 run summon armor_stand ~ ~ ~ {Tags:["mech_storageq","mech_power_storage"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Enchantments:[{id:1,lvl:1}],Unbreakable:1,Damage:28}}]}
execute if score @s mech_data matches 1003 run scoreboard players set @e[tag=mech_storageq,distance=..0.5] mech_data 0

execute if score @s mech_data matches 1000..1003 run setblock ~ ~ ~ minecraft:barrier
execute if score @s mech_data matches 1000..1003 run scoreboard players set @e[tag=mech_power_storage,distance=..0.5] mech_power 0

#energy relay
execute if score @s mech_data matches 1004 run summon armor_stand ~ ~ ~ {Tags:["mech_energy_relay","mech_reciever"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:37}}]}
execute if score @s mech_data matches 1004 run scoreboard players set @e[tag=mech_energy_relay,distance=..0.5] mech_data 0
execute if score @s mech_data matches 1004 run setblock ~ ~ ~ minecraft:barrier
execute if score @s mech_data matches 1004 run scoreboard players set @e[tag=mech_energy_relay,distance=..0.5] mech_power 0

#machine crafter
execute if score @s mech_data matches 1005 run summon armor_stand ~ ~ ~ {Tags:["mech_machine_crafter","du_crafter"],Marker:1b,Fire:32676,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:38}}]}
execute if score @s mech_data matches 1005 run setblock ~ ~ ~ minecraft:trapped_chest[type=left]{CustomName:"{\"translate\":\"mech.block.machine_crafting_table\",\"color\":\"dark_red\",\"italic\":false}"}

#Network Reformer
execute if score @s mech_data matches 1006 run summon armor_stand ~ ~ ~ {Tags:["mech_network_reformer"],Marker:1b,Fire:32676,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:39}}]}
execute if score @s mech_data matches 1006 run setblock ~ ~ ~ minecraft:dropper{CustomName:"{\"translate\":\"mech.block.network_reformer\",\"color\":\"white\",\"italic\":false}",Lock:"adsd"}

