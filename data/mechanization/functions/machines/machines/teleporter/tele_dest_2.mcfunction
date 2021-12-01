
#get data
execute store result score $temp_0 mechanization.data run data get storage du:temp obj.valid[0].uuid

#repeat
execute unless score $temp_0 mechanization.data = @s mechanization.data run data remove storage du:temp obj.valid[0] 
execute unless score $temp_0 mechanization.data = @s mechanization.data if data storage du:temp obj.valid[0] run function mechanization:machines/machines/teleporter/tele_dest_2
