
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

#main
function du:world/blocks/is_active
execute if score $world.out_0 du_data matches 0 if entity @s[tag=!mech_upgraded] run function mechanization:machines/machines/fisher/normal
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgraded,tag=!mech_upgrade_ender,tag=!mech_upgrade_nether] run function mechanization:machines/machines/fisher/upgrade
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgrade_ender] run function mechanization:machines/machines/fisher/upgrade_ender
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgrade_nether] run function mechanization:machines/machines/fisher/upgrade_nether

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ barrier run function mechanization:base/utils/break_machine_t2
