
#get data
execute store result score temp_0 mech_data run data get storage du:temp list[0].uuid

#cycle
execute unless score temp_0 mech_data = @s mech_data run data remove storage du:temp list[0] 

#repeat
execute unless score temp_0 mech_data = @s mech_data if data storage du:temp list[0] run function mechanization:machines/machines/teleporter/tele_dest_2
