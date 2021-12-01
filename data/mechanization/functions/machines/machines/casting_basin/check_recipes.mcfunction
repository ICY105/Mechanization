
#copy data
data modify storage du:temp obj set value {output_item:{},fluid_item:{}}
data modify storage du:temp obj.fluid_item set from entity @s Item.tag.tank
data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:12b}]
execute store result score $temp_0 mechanization.data run data get storage du:temp obj.output_item.Count

#check recipes
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 1 if score @s mechanization.stored_fluid matches 144.. run function mechanization:machines/machines/casting_basin/check_recipes_ingot
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 2 if score @s mechanization.stored_fluid matches 1296.. run function mechanization:machines/machines/casting_basin/check_recipes_block
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 2 if score @s mechanization.stored_fluid matches 288.. run function mechanization:machines/machines/casting_basin/check_recipes_block_gem
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 3 if score @s mechanization.stored_fluid matches 16.. run function mechanization:machines/machines/casting_basin/check_recipes_nugget
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 4 if score @s mechanization.stored_fluid matches 72.. run function mechanization:machines/machines/casting_basin/check_recipes_gem

execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=!mech_upgraded] mechanization.data matches 5 if score @s mechanization.stored_fluid matches 432.. run function mechanization:machines/machines/casting_basin/check_recipes_rod
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=!mech_upgraded] mechanization.data matches 6 if score @s mechanization.stored_fluid matches 576.. run function mechanization:machines/machines/casting_basin/check_recipes_plate
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=!mech_upgraded] mechanization.data matches 7 if score @s mechanization.stored_fluid matches 720.. run function mechanization:machines/machines/casting_basin/check_recipes_gear

execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgraded,tag=!mech_upgrade_ender] mechanization.data matches 5 if score @s mechanization.stored_fluid matches 360.. run function mechanization:machines/machines/casting_basin/check_recipes_rod
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgraded,tag=!mech_upgrade_ender] mechanization.data matches 6 if score @s mechanization.stored_fluid matches 504.. run function mechanization:machines/machines/casting_basin/check_recipes_plate
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgraded,tag=!mech_upgrade_ender] mechanization.data matches 7 if score @s mechanization.stored_fluid matches 648.. run function mechanization:machines/machines/casting_basin/check_recipes_gear

execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgrade_ender] mechanization.data matches 5 if score @s mechanization.stored_fluid matches 288.. run function mechanization:machines/machines/casting_basin/check_recipes_rod
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgrade_ender] mechanization.data matches 6 if score @s mechanization.stored_fluid matches 432.. run function mechanization:machines/machines/casting_basin/check_recipes_plate
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgrade_ender] mechanization.data matches 7 if score @s mechanization.stored_fluid matches 576.. run function mechanization:machines/machines/casting_basin/check_recipes_gear

#speed upgrade
execute if score @s[tag=mech_upgrade_nether] mechanization.timer matches 2..5 run scoreboard players set @s mechanization.timer 2
execute if score @s[tag=mech_upgrade_nether] mechanization.timer matches 6.. run scoreboard players operation @s mechanization.timer /= $cons.2 du_data

#calculate needed power
scoreboard players operation $temp_0 mechanization.data = $machines.cf.casting_basin.power mech_data
scoreboard players operation $temp_0 mechanization.data *= @s mechanization.timer
execute if score @s mechanization.stored_energy < $temp_0 mechanization.data run scoreboard players set @s mechanization.timer 0
