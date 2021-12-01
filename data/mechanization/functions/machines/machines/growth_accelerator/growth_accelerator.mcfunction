
#load scoreboard values
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

#main
scoreboard players set temp_0 mech_data 0
execute if score @s[tag=!mech_upgrade_nether] mech_power >= $machines.cf.growth.power mech_data run function mechanization:machines/machines/growth_accelerator/accelerate
execute if score @s[tag=mech_upgraded,tag=!mech_upgrade_nether] mech_power >= $machines.cf.growth.power mech_data run function mechanization:machines/machines/growth_accelerator/accelerate_upgrade
execute if score @s[tag=mech_upgrade_ender] mech_power >= $machines.cf.growth.power mech_data run function mechanization:machines/machines/growth_accelerator/accelerate_ender
execute if score @s[tag=mech_upgrade_nether] mech_power >= $machines.cf.growth.power mech_data run function mechanization:machines/machines/growth_accelerator/accelerate_nether
execute if score temp_0 mech_data matches 1 run scoreboard players operation @s mech_power -= $machines.cf.growth.power mech_data

#store scoreboard values
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t1
