

data remove storage du:temp obj.valid[0]
scoreboard players remove $math.out_0 du_data 1
execute if score $math.out_0 du_data matches 1.. run function mechanization:machines/machines/teleporter/remove_temp
