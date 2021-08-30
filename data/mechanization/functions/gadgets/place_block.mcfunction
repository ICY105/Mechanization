
#Charging Station
execute if score $id mech_data matches 4000 run summon armor_stand ~ ~-0.25 ~ {Tags:["mech_charging_station","mech_receiver","global.ignore"],Marker:0b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:1973790,ShowArms:1,Small:1,Pose:{RightArm:[-90f,-90f,90f]},ArmorItems:[{},{},{},{}],HandItems:[{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{mech_power:0,mech_gridid:0,CustomModelData:6424000}}]}
execute if score $id mech_data matches 4000 run scoreboard players set @e[tag=mech_charging_station,distance=..0.25] mech_power 0
execute if score $id mech_data matches 4000 run setblock ~ ~ ~ minecraft:barrier

#Tinker Table
execute if score $id mech_data matches 4001 run summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mech_tinker_table","mech_rotatable","global.ignore"],ItemRotation:0,Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6424001}}}
execute if score $id mech_data matches 4001 run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"mech.block.tinker_table","color":"dark_red","italic":false}'}
