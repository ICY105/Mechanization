
execute store result score $temp_0 mech_data run data get storage mechanization:networks teleporter[0].uuid
execute unless score $temp_0 mech_data = @s du_uuid run data modify storage mechanization:networks teleporter append from storage mechanization:networks teleporter[0]
execute if score $temp_0 mech_data = @s du_uuid run scoreboard players set in_0 mech_data -1

scoreboard players remove $in_0 mech_data 1
data remove storage mechanization:networks teleporter[0]
execute if score $in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/remove_2
