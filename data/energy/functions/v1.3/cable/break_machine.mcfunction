
#reset network id
execute if score #cable.direction energy.data matches 0 run scoreboard players set @s energy.network_id_up 0
execute if score #cable.direction energy.data matches 1 run scoreboard players set @s energy.network_id_down 0
execute if score #cable.direction energy.data matches 2 run scoreboard players set @s energy.network_id_north 0
execute if score #cable.direction energy.data matches 3 run scoreboard players set @s energy.network_id_south 0
execute if score #cable.direction energy.data matches 4 run scoreboard players set @s energy.network_id_east 0
execute if score #cable.direction energy.data matches 5 run scoreboard players set @s energy.network_id_west 0
