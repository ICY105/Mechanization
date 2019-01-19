#Centrifuge
execute if score @s mech_data matches 3000 run summon armor_stand ~ ~ ~ {Tags:["mech_centrifuge","mech_receiver"],Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:1973790,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,Unbreakable:1,Damage:86}}]}
execute if score @s mech_data matches 3000 run summon armor_stand ~ ~ ~ {Tags:["mech_centrifuge_model"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:85}}]}
execute if score @s mech_data matches 3000 run scoreboard players set @e[tag=mech_centrifuge,distance=..0.25] mech_power 0
execute if score @s mech_data matches 3000 run setblock ~ ~ ~ minecraft:barrier

#Fission Reactor
execute if score @s mech_data matches 3002 run summon armor_stand ~ ~ ~ {Tags:["mech_fission_reactor"],Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:1973790,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_x:0,mech_y:0,Unbreakable:1,Damage:87}}]}
execute if score @s mech_data matches 3002 run scoreboard players set @e[tag=mech_fission_reactor,distance=..0.25] mech_x 0
execute if score @s mech_data matches 3002 run scoreboard players set @e[tag=mech_fission_reactor,distance=..0.25] mech_y 0
execute if score @s mech_data matches 3002 run setblock ~ ~ ~ minecraft:barrier

#Steam Turbine
execute if score @s mech_data matches 3004 run summon armor_stand ~ ~ ~ {Tags:["mech_turbine","mech_transmitter"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,Unbreakable:1,Damage:92}}]}
execute if score @s mech_data matches 3004 run summon armor_stand ~ ~ ~ {Tags:["mech_turbine_model"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:91}}]}
execute if score @s mech_data matches 3004 run scoreboard players set @e[tag=mech_turbine,distance=..0.25] mech_power 0
execute if score @s mech_data matches 3004 run setblock ~ ~ ~ minecraft:barrier

#Temp Observer
execute if score @s mech_data matches 3005 run summon armor_stand ~ ~ ~ {Tags:["mech_temp_observer"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:2039583,Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:93}}]}
execute if score @s mech_data matches 3005 run setblock ~ ~ ~ minecraft:dropper{Lock:"afhoigbioasbas",CustomName:"{\"translate\":\"mech.block.temperature_observer\",\"color\":\"dark_gray\",\"italic\":false}"}

#Rate Observer
execute if score @s mech_data matches 3003 run summon armor_stand ~ ~ ~ {Tags:["mech_rate_observer"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:2039583,Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:94}}]}
execute if score @s mech_data matches 3003 run setblock ~ ~ ~ minecraft:dropper{Lock:"afhoigbioasbas",CustomName:"{\"translate\":\"mech.block.reaction_rate_observer\",\"color\":\"dark_gray\",\"italic\":false}"}

#Control Rod
execute if score @s mech_data matches 3001 run summon armor_stand ~ ~ ~ {Tags:["mech_control_rod"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:2039583,Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:95}}]}
execute if score @s mech_data matches 3001 run setblock ~ ~ ~ minecraft:dropper{Lock:"afhoigbioasbas",CustomName:"{\"translate\":\"mech.block.control_rod\",\"color\":\"dark_gray\",\"italic\":false}"}
