
#Converter
execute if score @s mech_data matches 6000 run summon armor_stand ~ ~ ~ {Tags:["mech_ttb_converter","mech_transmitter","block"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Small:1,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{mech_power:0,mech_gridid:0,Unbreakable:1,Damage:205}}]}
execute if score @s mech_data matches 6000 run scoreboard players set @e[tag=mech_ttb_converter,distance=..0.25] mech_power 0
execute if score @s mech_data matches 6000 run scoreboard players set @e[tag=mech_ttb_converter,distance=..0.25] mech_timer 0
execute if score @s mech_data matches 6000 run setblock ~ ~ ~ minecraft:hopper{CustomName:"{\"text\":\"Tempite Converter\",\"color\":\"dark_purple\",\"italic\":false}"}
