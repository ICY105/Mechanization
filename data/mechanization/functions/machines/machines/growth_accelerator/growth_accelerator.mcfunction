
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

#main
scoreboard players set temp_0 mechanization.data 0
execute if score @s[tag=!mech_upgrade_nether] mechanization.stored_energy >= $machines.cf.growth.power mechanization.data run function mechanization:machines/machines/growth_accelerator/accelerate
execute if score @s[tag=mech_upgraded,tag=!mech_upgrade_nether] mechanization.stored_energy >= $machines.cf.growth.power mechanization.data run function mechanization:machines/machines/growth_accelerator/accelerate_upgrade
execute if score @s[tag=mech_upgrade_ender] mechanization.stored_energy >= $machines.cf.growth.power mechanization.data run function mechanization:machines/machines/growth_accelerator/accelerate_ender
execute if score @s[tag=mech_upgrade_nether] mechanization.stored_energy >= $machines.cf.growth.power mechanization.data run function mechanization:machines/machines/growth_accelerator/accelerate_nether
execute if score temp_0 mechanization.data matches 1 run scoreboard players operation @s mechanization.stored_energy -= $machines.cf.growth.power mech_data

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t1
