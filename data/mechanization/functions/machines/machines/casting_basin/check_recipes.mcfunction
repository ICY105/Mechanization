
#copy data
data modify storage du:temp obj set value {output_item:{},fluid_item:{}}
data modify storage du:temp obj.fluid_item set from entity @s Item.tag.tank
data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:12b}]
execute store result score $temp_0 mech_data run data get storage du:temp obj.output_item.Count

#check recipes
execute if score $temp_0 mech_data matches ..63 if score @s mech_data matches 1 if score @s mech_fluid matches 144.. run function mechanization:machines/machines/casting_basin/check_recipes_ingot
execute if score $temp_0 mech_data matches ..63 if score @s mech_data matches 2 if score @s mech_fluid matches 1296.. run function mechanization:machines/machines/casting_basin/check_recipes_block
execute if score $temp_0 mech_data matches ..63 if score @s mech_data matches 2 if score @s mech_fluid matches 288.. run function mechanization:machines/machines/casting_basin/check_recipes_block_gem
execute if score $temp_0 mech_data matches ..63 if score @s mech_data matches 3 if score @s mech_fluid matches 16.. run function mechanization:machines/machines/casting_basin/check_recipes_nugget
execute if score $temp_0 mech_data matches ..63 if score @s mech_data matches 4 if score @s mech_fluid matches 72.. run function mechanization:machines/machines/casting_basin/check_recipes_gem

execute if score $temp_0 mech_data matches ..63 if score @s[tag=!mech_upgraded] mech_data matches 5 if score @s mech_fluid matches 432.. run function mechanization:machines/machines/casting_basin/check_recipes_rod
execute if score $temp_0 mech_data matches ..63 if score @s[tag=!mech_upgraded] mech_data matches 6 if score @s mech_fluid matches 576.. run function mechanization:machines/machines/casting_basin/check_recipes_plate
execute if score $temp_0 mech_data matches ..63 if score @s[tag=!mech_upgraded] mech_data matches 7 if score @s mech_fluid matches 720.. run function mechanization:machines/machines/casting_basin/check_recipes_gear

execute if score $temp_0 mech_data matches ..63 if score @s[tag=mech_upgraded,tag=!mech_upgrade_ender] mech_data matches 5 if score @s mech_fluid matches 360.. run function mechanization:machines/machines/casting_basin/check_recipes_rod
execute if score $temp_0 mech_data matches ..63 if score @s[tag=mech_upgraded,tag=!mech_upgrade_ender] mech_data matches 6 if score @s mech_fluid matches 504.. run function mechanization:machines/machines/casting_basin/check_recipes_plate
execute if score $temp_0 mech_data matches ..63 if score @s[tag=mech_upgraded,tag=!mech_upgrade_ender] mech_data matches 7 if score @s mech_fluid matches 648.. run function mechanization:machines/machines/casting_basin/check_recipes_gear

execute if score $temp_0 mech_data matches ..63 if score @s[tag=mech_upgrade_ender] mech_data matches 5 if score @s mech_fluid matches 288.. run function mechanization:machines/machines/casting_basin/check_recipes_rod
execute if score $temp_0 mech_data matches ..63 if score @s[tag=mech_upgrade_ender] mech_data matches 6 if score @s mech_fluid matches 432.. run function mechanization:machines/machines/casting_basin/check_recipes_plate
execute if score $temp_0 mech_data matches ..63 if score @s[tag=mech_upgrade_ender] mech_data matches 7 if score @s mech_fluid matches 576.. run function mechanization:machines/machines/casting_basin/check_recipes_gear

#speed upgrade
execute if score @s[tag=mech_upgrade_nether] mech_timer matches 2..5 run scoreboard players set @s mech_timer 2
execute if score @s[tag=mech_upgrade_nether] mech_timer matches 6.. run scoreboard players operation @s mech_timer /= $cons.2 du_data