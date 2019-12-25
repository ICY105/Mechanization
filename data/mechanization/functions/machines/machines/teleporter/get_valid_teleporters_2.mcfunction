
#get data
execute store result score temp_1 mech_data run data get storage du:temp list[0].grid_id
execute store result score temp_2 mech_data run data get storage du:temp list[0].dimension
execute store result score temp_3 mech_data run data get storage du:temp list[0].uuid

#check data
execute if entity @s[tag=!mech_upgrade_ender,tag=!mech_upgrade_nether] if score temp_1 mech_data = @s mech_gridid if score temp_2 mech_data matches 0 unless score temp_3 mech_data = @s du_uuid run data modify storage du:temp list append from storage du:temp list[0]
execute if entity @s[tag=mech_upgrade_ender] if score temp_1 mech_data = @s mech_gridid if score temp_2 mech_data matches 0..1 unless score temp_3 mech_data = @s du_uuid run data modify storage du:temp list append from storage du:temp list[0]
execute if entity @s[tag=mech_upgrade_nether] if score temp_1 mech_data = @s mech_gridid if score temp_2 mech_data matches -1..0 unless score temp_3 mech_data = @s du_uuid run data modify storage du:temp list append from storage du:temp list[0]

#cycle
data remove storage du:temp list[0] 

#repeat
scoreboard players remove in_0 mech_data 1
execute if score in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/get_valid_teleporters_2
