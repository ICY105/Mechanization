
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_fluid

## Main
function du:world/blocks/is_active

#spawn loot
execute if score $world.out_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.mob_grinder.power mechanization.data if entity @s[tag=!mech_upgrade_ender] as @e[distance=..5,type=#mechanization:mob_grinder,tag=!global.ignore.kill,tag=!global.ignore,tag=!smithed.ignore,tag=!smithed.strict] run loot spawn ~ ~1 ~ kill @s
execute if score $world.out_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.mob_grinder.power mechanization.data if entity @s[tag=mech_upgrade_nether] as @e[distance=..5,type=#mechanization:mob_grinder,tag=!global.ignore.kill,tag=!global.ignore,tag=!smithed.ignore,tag=!smithed.strict] run loot spawn ~ ~1 ~ kill @s
execute if score $world.out_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.mob_grinder.power mechanization.data if entity @s[tag=mech_upgrade_ender] as @p run function mechanization:machines/machines/mob_grinder/player_drop

#kill entities
execute if score $world.out_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.mob_grinder.power mechanization.data store result score $temp_0 mechanization.data run tp @e[distance=..5,type=#mechanization:mob_grinder,tag=!global.ignore.kill,tag=!global.ignore,tag=!smithed.ignore,tag=!smithed.strict] ~ -300 ~

#power & effects
execute if score $world.out_0 du_data matches 0 if score $temp_0 mechanization.data matches 1.. run particle flame ~ ~ ~ 2 0 2 0 100
execute if score $world.out_0 du_data matches 0 if score $temp_0 mechanization.data matches 1.. run scoreboard players operation @s mechanization.stored_energy -= $machines.cf.mob_grinder.power mech_data
execute if score $world.out_0 du_data matches 0 if score $temp_0 mechanization.data matches 1.. if entity @s[tag=mech_upgraded] run scoreboard players operation $temp_0 mechanization.data *= $machines.cf.mob_grinder.xp mech_data
execute if score $world.out_0 du_data matches 0 if score $temp_0 mechanization.data matches 1.. if entity @s[tag=mech_upgraded] run scoreboard players operation @s mechanization.stored_fluid += $temp_0 mech_data

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
