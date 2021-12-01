
#copy data
data modify storage du:temp obj set value {output_item:{},fluid_item:{}}
data modify storage du:temp obj.fluid_item set from entity @s Item.tag.tank
data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:12b}]
execute store result score $temp_0 mechanization.data run data get storage du:temp obj.output_item.Count

#check recipes
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 1 if score @s mechanization.stored_fluid matches 144.. run function mechanization:machines/machines/casting_basin/process_result_ingot
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 2 if score @s mechanization.stored_fluid matches 1296.. run function mechanization:machines/machines/casting_basin/process_result_block
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 2 if score @s mechanization.stored_fluid matches 288.. run function mechanization:machines/machines/casting_basin/process_result_block_gem
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 3 if score @s mechanization.stored_fluid matches 16.. run function mechanization:machines/machines/casting_basin/process_result_nugget
execute if score $temp_0 mechanization.data matches ..63 if score @s mechanization.data matches 4 if score @s mechanization.stored_fluid matches 72.. run function mechanization:machines/machines/casting_basin/process_result_gem

execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=!mech_upgraded] mechanization.data matches 5 if score @s mechanization.stored_fluid matches 432.. run function mechanization:machines/machines/casting_basin/process_result_rod
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=!mech_upgraded] mechanization.data matches 6 if score @s mechanization.stored_fluid matches 576.. run function mechanization:machines/machines/casting_basin/process_result_plate
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=!mech_upgraded] mechanization.data matches 7 if score @s mechanization.stored_fluid matches 720.. run function mechanization:machines/machines/casting_basin/process_result_gear

execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgraded,tag=!mech_upgrade_ender] mechanization.data matches 5 if score @s mechanization.stored_fluid matches 360.. run function mechanization:machines/machines/casting_basin/process_result_rod
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgraded,tag=!mech_upgrade_ender] mechanization.data matches 6 if score @s mechanization.stored_fluid matches 504.. run function mechanization:machines/machines/casting_basin/process_result_plate
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgraded,tag=!mech_upgrade_ender] mechanization.data matches 7 if score @s mechanization.stored_fluid matches 648.. run function mechanization:machines/machines/casting_basin/process_result_gear

execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgrade_ender] mechanization.data matches 5 if score @s mechanization.stored_fluid matches 288.. run function mechanization:machines/machines/casting_basin/process_result_rod
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgrade_ender] mechanization.data matches 6 if score @s mechanization.stored_fluid matches 432.. run function mechanization:machines/machines/casting_basin/process_result_plate
execute if score $temp_0 mechanization.data matches ..63 if score @s[tag=mech_upgrade_ender] mechanization.data matches 7 if score @s mechanization.stored_fluid matches 576.. run function mechanization:machines/machines/casting_basin/process_result_gear

#cleanup
execute if score @s mechanization.stored_fluid matches 0 run data modify entity @s Item.tag.tank set value {}
