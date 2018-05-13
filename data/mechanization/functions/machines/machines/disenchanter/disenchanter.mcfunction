data merge entity @s {Fire:32676}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
particle minecraft:enchant ~ ~1 ~ 0 0 0 1 25
execute if score @s mech_power matches 2048.. if block ~ ~ ~ dropper{Items:[{tag:{ench:[{}]}}]} run function mechanization:machines/machines/disenchanter/activate

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ dropper run function give:mech_machines/machine_frame_tier_3
execute unless block ~ ~ ~ dropper run kill @s
