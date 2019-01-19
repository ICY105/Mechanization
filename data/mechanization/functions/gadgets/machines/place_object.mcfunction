
#Charging Station
execute if score @s mech_data matches 4000 run summon armor_stand ~ ~-0.25 ~ {Tags:["mech_charging_station","mech_receiver"],Marker:0b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:1973790,ShowArms:1,Small:1,Pose:{RightArm:[-90f,-90f,90f]},ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,Unbreakable:1,Damage:111}}]}
execute if score @s mech_data matches 4000 run scoreboard players set @e[tag=mech_charging_station,distance=..0.25] mech_power 0
execute if score @s mech_data matches 4000 run setblock ~ ~ ~ minecraft:barrier

#Tinker Table
execute if score @s mech_data matches 4001 run summon armor_stand ~ ~ ~ {Tags:["mech_tinker_table","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:112}}]}
execute if score @s mech_data matches 4001 run setblock ~ ~ ~ minecraft:dropper{CustomName:"{\"translate\":\"mech.block.tinker_table\",\"color\":\"dark_aqua\",\"italic\":false}",Items:[{Slot:0b,id:"minecraft:diamond_shovel",tag:{Unbreakable:1,UIPart:1,display:{Name:"{\"translate\":\" \",\"italic\":false}"},Damage:113,HideFlags:63},Count:1b},{Slot:2b,id:"minecraft:diamond_shovel",tag:{Unbreakable:1,UIPart:1,display:{Name:"{\"translate\":\" \",\"italic\":false}"},Damage:43,HideFlags:63},Count:1b},{Slot:6b,id:"minecraft:diamond_shovel",tag:{Unbreakable:1,UIPart:1,display:{Name:"{\"translate\":\" \",\"italic\":false}"},Damage:43,HideFlags:63},Count:1b},{Slot:8b,id:"minecraft:diamond_shovel",tag:{Unbreakable:1,UIPart:1,display:{Name:"{\"translate\":\" \",\"italic\":false}"},Damage:43,HideFlags:63},Count:1b}]}

#XP Tank
execute if score @s mech_data matches 4002 run summon armor_stand ~ ~ ~ {Tags:["mech_xp_tank"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_xp:0,Unbreakable:1,Damage:114}}]}
execute if score @s mech_data matches 4002 run scoreboard players set @e[tag=mech_xp_tank,distance=..0.25] mech_data 0
execute if score @s mech_data matches 4002 as @p[tag=du_right_click,scores={mech_usedid=213},distance=..8] run function mechanization:gadgets/machines/get_xptank_value
execute if score @s mech_data matches 4002 store result score @e[tag=mech_xp_tank,distance=..0.25,limit=1] mech_data run scoreboard players get out_0 mech_data
execute if score @s mech_data matches 4002 run setblock ~ ~ ~ minecraft:glass