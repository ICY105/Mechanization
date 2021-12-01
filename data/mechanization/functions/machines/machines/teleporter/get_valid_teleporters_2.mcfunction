
#get data
execute store result score $temp_1 mechanization.data run data get storage du:temp obj.potential[0].grid_id
execute store result score $temp_2 mechanization.data run data get storage du:temp obj.potential[0].dimension
execute store result score $temp_3 mechanization.data run data get storage du:temp obj.potential[0].uuid

#check data
scoreboard players set $temp_4 mechanization.data 1
execute unless score $temp_1 mechanization.data = @s mechanization.network_id run scoreboard players set $temp_4 mechanization.data 0
execute if score $temp_2 mechanization.data matches -1 unless entity @s[tag=mech_upgrade_nether] run scoreboard players set $temp_4 mechanization.data 0
execute if score $temp_2 mechanization.data matches 1 unless entity @s[tag=mech_upgrade_ender] run scoreboard players set $temp_4 mechanization.data 0
execute if score $temp_3 mechanization.data = @s du_uuid run scoreboard players set $temp_4 mechanization.data 0

execute if score $temp_4 mechanization.data matches 1 run data modify storage du:temp obj.valid append from storage du:temp obj.potential[0]

#cycle
data remove storage du:temp obj.potential[0] 
execute if data storage du:temp obj.potential[0] run function mechanization:machines/machines/teleporter/get_valid_teleporters_2
