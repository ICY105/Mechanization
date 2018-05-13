
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
scoreboard players remove @e[type=armor_stand,tag=mech_ttb_converter,scores={mech_timer=1..}] mech_timer 1

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ hopper run summon item ~ ~ ~ {CustomName:"{\"text\":\"Tempite Converter\",\"color\":\"dark_purple\",\"italic\":false}",CustomNameVisible:1,Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,Unbreakable:1,Damage:214,HideFlags:6,display:{Name:"{\"text\":\"Tempite Converter\",\"color\":\"dark_purple\",\"italic\":false}",Lore:["§fConverts between","§fTTB tempite and kJ."]}}}}
execute unless block ~ ~ ~ hopper run kill @s
