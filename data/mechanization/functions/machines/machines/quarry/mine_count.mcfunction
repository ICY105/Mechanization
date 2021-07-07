
function mechanization:machines/machines/quarry/mine

scoreboard players remove in_3 mech_data 1
execute if score in_3 mech_data matches 1.. run function mechanization:machines/machines/quarry/mine_count
