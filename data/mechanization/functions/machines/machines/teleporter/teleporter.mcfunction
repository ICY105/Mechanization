
#load scoreboard values
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

### Main

#get nearby player
scoreboard players set $temp_0 mech_data 0
execute positioned ~ ~1 ~ align xyz store success score $temp_0 mech_data if entity @p[dx=0,dy=0,dz=0]

#cancel timer if no player
execute if score $temp_0 mech_data matches 0 if score @s du_data matches 1.. run stopsound @a[distance=..16] * mechanization:machines.teleporter_charging
execute if score $temp_0 mech_data matches 0 run scoreboard players set @s du_data 0
execute if score $temp_0 mech_data matches 0 run scoreboard players set @s mech_data 0

#run proper mode
execute if score $temp_0 mech_data matches 1.. if entity @s[scores={mech_power=1000..}] run function mechanization:machines/machines/teleporter/teleport

#store scoreboard values
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t3
