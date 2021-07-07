
#get data
execute store result score $temp_1 mech_data run data get storage du:temp obj.potential[0].grid_id
execute store result score $temp_2 mech_data run data get storage du:temp obj.potential[0].dimension
execute store result score $temp_3 mech_data run data get storage du:temp obj.potential[0].uuid

#check data
scoreboard players set $temp_4 mech_data 1
execute unless score $temp_1 mech_data = @s mech_gridid run scoreboard players set $temp_4 mech_data 0
execute if score $temp_2 mech_data matches -1 unless entity @s[tag=mech_upgrade_nether] run scoreboard players set $temp_4 mech_data 0
execute if score $temp_2 mech_data matches 1 unless entity @s[tag=mech_upgrade_ender] run scoreboard players set $temp_4 mech_data 0
execute if score $temp_3 mech_data = @s du_uuid run scoreboard players set $temp_4 mech_data 0

execute if score $temp_4 mech_data matches 1 run data modify storage du:temp obj.valid append from storage du:temp obj.potential[0]

#cycle
data remove storage du:temp obj.potential[0] 
execute if data storage du:temp obj.potential[0] run function mechanization:machines/machines/teleporter/get_valid_teleporters_2
