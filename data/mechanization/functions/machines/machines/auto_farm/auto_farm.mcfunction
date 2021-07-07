
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

#main
function du:world/blocks/is_active
execute if score $world.out_0 du_data matches 0 if entity @s[tag=!mech_upgrade_nether,tag=!mech_upgrade_ender,scores={mech_power=240..}] run function mechanization:machines/machines/auto_farm/normal
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgrade_ender,scores={mech_power=240..}] run function mechanization:machines/machines/auto_farm/upgrade_ender
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgrade_nether,scores={mech_power=240..}] run function mechanization:machines/machines/auto_farm/upgrade_nether
execute if score $world.out_0 du_data matches 0 if entity @s[scores={mech_power=240..}] run scoreboard players remove @s mech_power 240

execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgraded] run tp @e[type=item,distance=..5] ~ ~1 ~

#store scoreboard values
execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
