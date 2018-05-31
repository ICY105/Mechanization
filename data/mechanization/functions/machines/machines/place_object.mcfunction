
#Furnace Generator
execute if score @s mech_data matches 2001 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_furnace_gen","mech_transmitter","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:44}}]}
execute if score @s mech_data matches 2001 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_furnace_gen","mech_transmitter","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:44}}]}
execute if score @s mech_data matches 2001 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_furnace_gen","mech_transmitter","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:44}}]}
execute if score @s mech_data matches 2001 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_furnace_gen","mech_transmitter","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:44}}]}
execute if score @s mech_data matches 2001 run scoreboard players set @e[tag=mech_furnace_gen,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2001 run setblock ~ ~ ~ minecraft:furnace[facing=south]{CustomName:"{\"text\":\"Furnace Generator\",\"color\":\"gold\",\"italic\":false}",Items:[{Slot:0,Count:1,id:"minecraft:cobblestone",tag:{UIPart:1}}]}

#Solar Panel
execute if score @s mech_data matches 2014 run summon armor_stand ~ ~ ~ {Tags:["mech_solar_panel_model"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:57}}]}
execute if score @s mech_data matches 2014 positioned ~ ~-0.42 ~ run summon armor_stand ~ ~ ~ {Tags:["mech_solar_panel","mech_transmitter"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,Small:1,DisabledSlots:2039583,Rotation:[90f,0.0f],Pose:{Head:[0f,0.1f,0f]},ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:58}}]}
execute if score @s mech_data matches 2014 run scoreboard players set @e[tag=mech_solar_panel,distance=..0.5] mech_power 0
execute if score @s mech_data matches 2014 run setblock ~ ~ ~ minecraft:daylight_detector

#Electric Furnace
execute if score @s mech_data matches 2003 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_ele_furnace","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:46}}]}
execute if score @s mech_data matches 2003 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_ele_furnace","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:46}}]}
execute if score @s mech_data matches 2003 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_ele_furnace","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:46}}]}
execute if score @s mech_data matches 2003 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_ele_furnace","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:46}}]}
execute if score @s mech_data matches 2003 run scoreboard players set @e[tag=mech_ele_furnace,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2003 run setblock ~ ~ ~ minecraft:furnace[facing=south]{CustomName:"{\"text\":\"Electric Furnace\",\"color\":\"dark_blue\",\"italic\":false}"}

#Grinder
execute if score @s mech_data matches 2009 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_grinder","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:60}}]}
execute if score @s mech_data matches 2009 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_grinder","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:60}}]}
execute if score @s mech_data matches 2009 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_grinder","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:60}}]}
execute if score @s mech_data matches 2009 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_grinder","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:60}}]}
execute if score @s mech_data matches 2009 run scoreboard players set @e[tag=mech_grinder,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2009 run setblock ~ ~ ~ minecraft:furnace[facing=south]{CustomName:"{\"text\":\"Grinder\",\"color\":\"dark_gray\",\"italic\":false}"}

#Alloy Furnace
execute if score @s mech_data matches 2000 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_alloy_furnace","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:48}}]}
execute if score @s mech_data matches 2000 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_alloy_furnace","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:48}}]}
execute if score @s mech_data matches 2000 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_alloy_furnace","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:48}}]}
execute if score @s mech_data matches 2000 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_alloy_furnace","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:48}}]}
execute if score @s mech_data matches 2000 run scoreboard players set @e[tag=mech_alloy_furnace,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2000 run setblock ~ ~ ~ minecraft:dropper[facing=south]{CustomName:"{\"text\":\"Alloy Furnace\",\"color\":\"gold\",\"italic\":false}",Items:[{Slot:4b,id:"minecraft:diamond_shovel",tag:{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:50,HideFlags:63},Count:1b}]}

#Tree Feller
execute if score @s mech_data matches 2002 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_tree_feller","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:52}}]}
execute if score @s mech_data matches 2002 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_tree_feller","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:52}}]}
execute if score @s mech_data matches 2002 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_tree_feller","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:52}}]}
execute if score @s mech_data matches 2002 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_tree_feller","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:52}}]}
execute if score @s mech_data matches 2002 positioned ~ ~-0.5 ~0.23 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_tree_feller_model","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Small:1,Rotation:[0.01f,0.0f],Pose:{Head:[90f,0f,90f]},ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:53}}]}
execute if score @s mech_data matches 2002 positioned ~-0.23 ~-0.5 ~ if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_tree_feller_model","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Small:1,Rotation:[90f,0.0f],Pose:{Head:[90f,0f,90f]},ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:53}}]}
execute if score @s mech_data matches 2002 positioned ~ ~-0.5 ~-0.23 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_tree_feller_model","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Small:1,Rotation:[180f,0.0f],Pose:{Head:[90f,0f,90f]},ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:53}}]}
execute if score @s mech_data matches 2002 positioned ~0.23 ~-0.5 ~ if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_tree_feller_model","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Small:1,Rotation:[270f,0.0f],Pose:{Head:[90f,0f,90f]},ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:53}}]}
execute if score @s mech_data matches 2002 run scoreboard players set @e[tag=mech_tree_feller,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2002 run setblock ~ ~ ~ minecraft:barrier

#Block Breaker
execute if score @s mech_data matches 2008 positioned ~ ~-0.5 ~ run summon area_effect_cloud ~ ~ ~ {Tags:["mech_block_breaker","mech_reciever"],Duration:2000000000}
execute if score @s mech_data matches 2008 positioned ~ ~-0.5 ~ run scoreboard players set @e[tag=mech_block_breaker,distance=..0.25] mech_power 0

#Auto Farm
execute if score @s mech_data matches 2005 run summon armor_stand ~ ~ ~ {Tags:["mech_auto_farm","mech_reciever"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:64}}]}
execute if score @s mech_data matches 2005 run scoreboard players set @e[tag=mech_auto_farm,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2005 run setblock ~ ~ ~ minecraft:barrier

#Mob Grinder
execute if score @s mech_data matches 2012 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_mob_grinder","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:63}}]}
execute if score @s mech_data matches 2012 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_mob_grinder","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:63}}]}
execute if score @s mech_data matches 2012 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_mob_grinder","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:63}}]}
execute if score @s mech_data matches 2012 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_mob_grinder","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:63}}]}
execute if score @s mech_data matches 2012 run scoreboard players set @e[tag=mech_mob_grinder,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2012 run setblock ~ ~ ~ minecraft:barrier

#Quarry
execute if score @s mech_data matches 2013 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_quarry","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:62}}]}
execute if score @s mech_data matches 2013 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_quarry","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:62}}]}
execute if score @s mech_data matches 2013 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_quarry","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:62}}]}
execute if score @s mech_data matches 2013 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_quarry","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:62}}]}
execute if score @s mech_data matches 2013 run scoreboard players set @e[tag=mech_quarry,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2013 as @e[tag=mech_quarry,distance=..0.25] store result score @s mech_data run data get entity @s Pos[1] 10
execute if score @s mech_data matches 2013 run scoreboard players remove @e[tag=mech_quarry,distance=..0.25] mech_data 10
execute if score @s mech_data matches 2013 run setblock ~ ~ ~ minecraft:barrier

#Chunk Loader
execute if score @s mech_data matches 2018 run summon armor_stand ~ ~ ~ {Tags:["mech_chunk_loader","mech_reciever"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,du_uuid:0,Unbreakable:1,Damage:75}}]}
execute if score @s mech_data matches 2018 as @e[tag=mech_chunk_loader,distance=..0.25] at @s run function mechanization:machines/machines/chunk_loader/chunk_loader_marker_spawn
execute if score @s mech_data matches 2018 run scoreboard players set @e[tag=mech_chunk_loader,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2018 run setblock ~ ~ ~ minecraft:barrier

#Teleporter
execute if score @s mech_data matches 2017 run summon armor_stand ~ ~ ~ {Tags:["mech_teleporter","mech_reciever"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:76}}]}
execute if score @s mech_data matches 2017 run scoreboard players set @e[tag=mech_teleporter,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2017 run setblock ~ ~ ~ minecraft:barrier

#Lava Fabricator
execute if score @s mech_data matches 2011 run summon armor_stand ~ ~ ~ {Tags:["mech_lava_fabricator","mech_reciever"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:65}}]}
execute if score @s mech_data matches 2011 run scoreboard players set @e[tag=mech_lava_fabricator,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2011 run setblock ~ ~ ~ minecraft:barrier

#Growth Accelerator
execute if score @s mech_data matches 2004 run summon armor_stand ~ ~ ~ {Tags:["mech_growth_accelerator","mech_reciever"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:54}}]}
execute if score @s mech_data matches 2004 run scoreboard players set @e[tag=mech_growth_accelerator,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2004 run setblock ~ ~ ~ minecraft:barrier

#Fisher
execute if score @s mech_data matches 2006 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_fisher","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:66}}]}
execute if score @s mech_data matches 2006 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_fisher","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:66}}]}
execute if score @s mech_data matches 2006 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_fisher","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:66}}]}
execute if score @s mech_data matches 2006 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_fisher","mech_reciever","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:66}}]}
execute if score @s mech_data matches 2006 run scoreboard players set @e[tag=mech_fisher,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2006 run setblock ~ ~ ~ minecraft:barrier

#Super Piston
execute if score @s mech_data matches 2020 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_super_piston","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:70}}]}
execute if score @s mech_data matches 2020 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_super_piston","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:70}}]}
execute if score @s mech_data matches 2020 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_super_piston","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:70}}]}
execute if score @s mech_data matches 2020 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_super_piston","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:70}}]}
execute if score @s mech_data matches 2020 run setblock ~ ~ ~ minecraft:dropper{Lock:"afhoigbioasbas",CustomName:"{\"text\":\"Super Piston\",\"color\":\"dark_gray\",\"italic\":false}"}

#Super Sticky Piston
execute if score @s mech_data matches 2021 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_super_sticky_piston","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:71}}]}
execute if score @s mech_data matches 2021 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_super_sticky_piston","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:71}}]}
execute if score @s mech_data matches 2021 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_super_sticky_piston","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:71}}]}
execute if score @s mech_data matches 2021 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_super_sticky_piston","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:71}}]}
execute if score @s mech_data matches 2021 run setblock ~ ~ ~ minecraft:dropper{Lock:"afhoigbioasbas",CustomName:"{\"text\":\"Super Sticky Piston\",\"color\":\"dark_gray\",\"italic\":false}"}

#Turn Table
execute if score @s mech_data matches 2022 run summon armor_stand ~ ~ ~ {Tags:["mech_turn_table"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:69}}]}
execute if score @s mech_data matches 2022 run setblock ~ ~ ~ minecraft:dropper{Lock:"afhoigbioasbas",CustomName:"{\"text\":\"Turn Table\",\"color\":\"dark_gray\",\"italic\":false}"}

#Bio Generator
execute if score @s mech_data matches 2007 run summon armor_stand ~ ~ ~ {Tags:["mech_bio_gen","mech_transmitter"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:67}}]}
execute if score @s mech_data matches 2007 run scoreboard players set @e[tag=mech_bio_gen,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2007 run setblock ~ ~ ~ minecraft:dropper{CustomName:"{\"text\":\"Bio Generator\",\"color\":\"dark_green\",\"italic\":false}"}

#Item Reformer
execute if score @s mech_data matches 2010 run summon armor_stand ~ ~ ~ {Tags:["mech_reformer","mech_reciever"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:72}}]}
execute if score @s mech_data matches 2010 run scoreboard players set @e[tag=mech_reformer,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2010 run setblock ~ ~ ~ minecraft:dropper{CustomName:"{\"text\":\"Item Reformer\",\"color\":\"dark_blue\",\"italic\":false}"}

#Disenchanter
execute if score @s mech_data matches 2016 run summon armor_stand ~ ~ ~ {Tags:["mech_disenchanter","mech_reciever"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:78}}]}
execute if score @s mech_data matches 2016 run scoreboard players set @e[tag=mech_disenchanter,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2016 run setblock ~ ~ ~ minecraft:dropper{CustomName:"{\"text\":\"Disenchanter\",\"color\":\"dark_purple\",\"italic\":false}"}

#Ender Generator
execute if score @s mech_data matches 2015 if entity @s[tag=mech_rot_0] run summon armor_stand ~ ~ ~ {Tags:["mech_end_generator","mech_transmitter","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:73}}]}
execute if score @s mech_data matches 2015 if entity @s[tag=mech_rot_1] run summon armor_stand ~ ~ ~ {Tags:["mech_end_generator","mech_transmitter","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[90f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:73}}]}
execute if score @s mech_data matches 2015 if entity @s[tag=mech_rot_2] run summon armor_stand ~ ~ ~ {Tags:["mech_end_generator","mech_transmitter","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[180f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:73}}]}
execute if score @s mech_data matches 2015 if entity @s[tag=mech_rot_3] run summon armor_stand ~ ~ ~ {Tags:["mech_end_generator","mech_transmitter","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[270f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,Unbreakable:1,Damage:73}}]}
execute if score @s mech_data matches 2015 run scoreboard players set @e[tag=mech_end_generator,distance=..0.25] mech_power 0
execute if score @s mech_data matches 2015 run scoreboard players set @e[tag=mech_end_generator,distance=..0.25] mech_data 0
execute if score @s mech_data matches 2015 run setblock ~ ~ ~ minecraft:furnace{CustomName:"{\"text\":\"Ender Generator\",\"color\":\"dark_purple\",\"italic\":false}"}








