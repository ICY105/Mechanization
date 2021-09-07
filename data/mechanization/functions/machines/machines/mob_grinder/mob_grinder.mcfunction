
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_fluid

## Main
function du:world/blocks/is_active

#spawn loot
execute if score $world.out_0 du_data matches 0 if score @s mech_power >= $machines.cf.mob_grinder.power mech_data if entity @s[tag=!mech_upgrade_ender] as @e[distance=..5,type=#mechanization:mob_grinder,tag=!global.ignore.kill,tag=!global.ignore] run loot spawn ~ ~1 ~ kill @s
execute if score $world.out_0 du_data matches 0 if score @s mech_power >= $machines.cf.mob_grinder.power mech_data if entity @s[tag=mech_upgrade_nether] as @e[distance=..5,type=#mechanization:mob_grinder,tag=!global.ignore.kill,tag=!global.ignore] run loot spawn ~ ~1 ~ kill @s
execute if score $world.out_0 du_data matches 0 if score @s mech_power >= $machines.cf.mob_grinder.power mech_data if entity @s[tag=mech_upgrade_ender] as @p run function mechanization:machines/machines/mob_grinder/player_drop

#kill entities
execute if score $world.out_0 du_data matches 0 if score @s mech_power >= $machines.cf.mob_grinder.power mech_data store result score $temp_0 mech_data run tp @e[distance=..5,type=#mechanization:mob_grinder,tag=!global.ignore.kill,tag=!global.ignore] ~ -300 ~

#power & effects
execute if score $world.out_0 du_data matches 0 if score $temp_0 mech_data matches 1.. run particle flame ~ ~ ~ 2 0 2 0 100
execute if score $world.out_0 du_data matches 0 if score $temp_0 mech_data matches 1.. run scoreboard players operation @s mech_power -= $machines.cf.mob_grinder.power mech_data
execute if score $world.out_0 du_data matches 0 if score $temp_0 mech_data matches 1.. if entity @s[tag=mech_upgraded] run scoreboard players operation $temp_0 mech_data *= $machines.cf.mob_grinder.xp mech_data
execute if score $world.out_0 du_data matches 0 if score $temp_0 mech_data matches 1.. if entity @s[tag=mech_upgraded] run scoreboard players operation @s mech_fluid += $temp_0 mech_data

#store scoreboard values
execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
