
#ensure scores are initialized
scoreboard players add @s energy.storage 0
scoreboard players add @s energy.max_storage 0
scoreboard players add @s energy.transfer_rate 0
scoreboard players add @s energy.network_id 0

scoreboard players add @s energy.network_id_up 0
scoreboard players add @s energy.network_id_down 0
scoreboard players add @s energy.network_id_north 0
scoreboard players add @s energy.network_id_south 0
scoreboard players add @s energy.network_id_east 0
scoreboard players add @s energy.network_id_west 0

#update adjacent cables
function energy:v1.3/machine/update_adjacent
