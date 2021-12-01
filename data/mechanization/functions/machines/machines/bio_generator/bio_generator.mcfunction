
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

#main
execute store success entity @s Item.tag.CustomModelData int 6422007 if entity @s
execute if entity @s[tag=!mech_upgraded,scores={mech_power=..3000}] run function mechanization:machines/machines/bio_generator/fuel_normal
execute if entity @s[tag=mech_upgraded,tag=!mech_upgrade_nether,tag=!mech_upgrade_ender,scores={mech_power=..3000}] run function mechanization:machines/machines/bio_generator/fuel_upgraded
execute if entity @s[tag=mech_upgrade_ender,scores={mech_power=..3000}] run function mechanization:machines/machines/bio_generator/fuel_upgrade_ender
execute if entity @s[tag=mech_upgrade_nether,scores={mech_power=..3000}] run function mechanization:machines/machines/bio_generator/fuel_upgrade_nether

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t2
