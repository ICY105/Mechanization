
#Charging Station
execute if score in_0 mech_data matches 4000 run summon armor_stand ~ ~-0.25 ~ {Tags:["mech_charging_station","mech_receiver"],Marker:0b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:1973790,ShowArms:1,Small:1,Pose:{RightArm:[-90f,-90f,90f]},ArmorItems:[{},{},{},{}],HandItems:[{},{id:"minecraft:blast_furnace",Count:1b,tag:{mech_power:0,mech_gridid:0,CustomModelData:6424000}}]}
execute if score in_0 mech_data matches 4000 run scoreboard players set @e[tag=mech_charging_station,distance=..0.25] mech_power 0
execute if score in_0 mech_data matches 4000 run setblock ~ ~ ~ minecraft:barrier

#Tinker Table
execute if score in_0 mech_data matches 4001 run summon armor_stand ~ ~ ~ {Tags:["mech_tinker_table","mech_rotatable"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Rotation:[0.01f,0.0f],Fire:32676,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6424001}}]}
execute if score in_0 mech_data matches 4001 run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"mech.block.tinker_table","color":"dark_red","italic":false}'}

#XP Tank
execute if score in_0 mech_data matches 4002 run summon armor_stand ~ ~ ~ {Tags:["mech_xp_tank"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{mech_xp:0,CustomModelData:6424003}}]}
execute if score in_0 mech_data matches 4002 run scoreboard players set @e[tag=mech_xp_tank,distance=..0.25] mech_data 0
execute if score in_0 mech_data matches 4002 store result score @e[tag=mech_xp_tank,distance=..0.25,limit=1] mech_data run data get entity @s SelectedItem.tag.mech_xp
execute if score in_0 mech_data matches 4002 run setblock ~ ~ ~ minecraft:glass