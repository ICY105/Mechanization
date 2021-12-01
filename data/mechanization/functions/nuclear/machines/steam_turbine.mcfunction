#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s ArmorItems[3].tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s ArmorItems[3].tag.mech_gridid

tag @s remove mech_active

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier positioned ~ ~0.4 ~ run kill @e[tag=mech_turbine_model,distance=..0.25]
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
