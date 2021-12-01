
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

#main
function du:world/blocks/is_active

execute if score @s mechanization.stored_energy < $machines.cf.lamp.power mechanization.data run scoreboard players set $world.out_0 du_data 0

execute if score $world.out_0 du_data matches 0 run function mechanization:machines/machines/electric_lamp/turn_off
execute if score $world.out_0 du_data matches 1..2 run function mechanization:machines/machines/electric_lamp/turn_on

execute if score $world.out_0 du_data matches 0 run data modify entity @s Item.tag.CustomModelData set value 6422032
execute if score $world.out_0 du_data matches 1..2 run data modify entity @s Item.tag.CustomModelData set value 6422952

execute if score $world.out_0 du_data matches 1..2 run scoreboard players operation @s mechanization.stored_energy -= $machines.cf.lamp.power mech_data

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
