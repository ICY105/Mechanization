#load scoreboard values
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

tag @s remove mech_active

#store scoreboard values
execute if score $base.cf.backup mech_data matches 1 store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mech_data matches 1 store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier positioned ~ ~0.4 ~ run kill @e[tag=mech_turbine_model,distance=..0.25]
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
