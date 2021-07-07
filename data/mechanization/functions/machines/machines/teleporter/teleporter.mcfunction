
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid
execute unless score @s du_uuid matches -2147483648.. store result score @s du_uuid run data get entity @s Item.tag.du_uuid

### Main

#get nearby player
scoreboard players set $temp_0 mech_data 0
execute store success score $temp_0 mech_data if entity @p[distance=..0.4]

#cancel timer if no player
execute if score $temp_0 mech_data matches 0 if score @s du_data matches 1.. run stopsound @a[distance=..16] * mechanization:machines.teleporter_charging
execute if score $temp_0 mech_data matches 0 run scoreboard players set @s du_data 0
execute if score $temp_0 mech_data matches 0 run scoreboard players set @s mech_data 0

#run proper mode
execute if score $temp_0 mech_data matches 1 if entity @s[tag=!mech_upgraded,scores={mech_power=1024..}] run function mechanization:machines/machines/teleporter/tele_random
execute if score $temp_0 mech_data matches 1 if entity @s[tag=mech_upgraded,scores={mech_power=1024..,du_data=1..}] unless score @s mech_data matches 0 run function mechanization:machines/machines/teleporter/tele_dest
execute if score $temp_0 mech_data matches 1 if entity @s[tag=mech_upgraded,scores={mech_power=1024..,du_data=0}] run function mechanization:machines/machines/teleporter/dial

#store scoreboard values
execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s Item.tag.du_uuid int 1 run scoreboard players get @s du_uuid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:machines/machines/teleporter/remove
