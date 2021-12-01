
#get data
data modify storage du:temp obj set from block ~ ~ ~ Items[{Slot:10b}]
function mechanization:machines/machines/ench_station/check_item

scoreboard players operation $in_0 mechanization.data = $out_0 mech_data

data modify storage du:temp var set from storage du:temp list[0].id
function mechanization:machines/machines/ench_station/check_enchant

execute if entity @s[tag=!mech_upgraded] run function mechanization:machines/machines/ench_station/check_conflicting
execute if entity @s[tag=mech_upgraded] run function mechanization:machines/machines/ench_station/check_conflicting_upgrade

execute if score $out_0 mechanization.data matches 1 store result score $temp_1 mechanization.data run data get storage du:temp list[0].lvl
execute if score $out_0 mechanization.data matches 1 run function mechanization:machines/machines/ench_station/get_enchant_level

execute if score $out_0 mechanization.data matches 1 run scoreboard players operation $temp_2 mechanization.data = $temp_1 mech_data
execute if score $out_0 mechanization.data matches 1 run scoreboard players operation $temp_2 mechanization.data *= $out_1 mech_data
execute if score $out_0 mechanization.data matches 1 run scoreboard players operation $temp_2 mechanization.data *= $cons.25 du_data

execute if score $out_0 mechanization.data matches 1 if score @s mechanization.stored_fluid >= $temp_2 mechanization.data if score $temp_1 mechanization.data = $out_4 mechanization.data run scoreboard players operation $in_0 mechanization.data = $temp_1 mech_data
execute if score $out_0 mechanization.data matches 1 if score @s mechanization.stored_fluid >= $temp_2 mechanization.data if score $temp_1 mechanization.data = $out_4 mechanization.data run scoreboard players add $in_0 mechanization.data 1
execute if score $out_0 mechanization.data matches 1 if score @s mechanization.stored_fluid >= $temp_2 mechanization.data if score $temp_1 mechanization.data = $out_4 mechanization.data if score $in_0 mechanization.data <= $out_2 mechanization.data run function mechanization:machines/machines/ench_station/set_enchant_level
execute if score $out_0 mechanization.data matches 1 if score @s mechanization.stored_fluid >= $temp_2 mechanization.data if score $temp_1 mechanization.data = $out_4 mechanization.data if score $in_0 mechanization.data <= $out_2 mechanization.data run scoreboard players set $temp_0 mechanization.data 1
execute if score $out_0 mechanization.data matches 1 if score @s mechanization.stored_fluid >= $temp_2 mechanization.data if score $temp_1 mechanization.data = $out_4 mechanization.data if score $in_0 mechanization.data <= $out_2 mechanization.data run scoreboard players operation @s mechanization.stored_fluid -= $temp_2 mech_data

execute if score $out_0 mechanization.data matches 1 if score @s mechanization.stored_fluid >= $temp_2 mechanization.data if score $temp_1 mechanization.data > $out_4 mechanization.data if score $temp_1 mechanization.data <= $out_2 mechanization.data run scoreboard players operation $in_0 mechanization.data = $temp_1 mech_data
execute if score $out_0 mechanization.data matches 1 if score @s mechanization.stored_fluid >= $temp_2 mechanization.data if score $temp_1 mechanization.data > $out_4 mechanization.data if score $temp_1 mechanization.data <= $out_2 mechanization.data run function mechanization:machines/machines/ench_station/set_enchant_level
execute if score $out_0 mechanization.data matches 1 if score @s mechanization.stored_fluid >= $temp_2 mechanization.data if score $temp_1 mechanization.data > $out_4 mechanization.data if score $temp_1 mechanization.data <= $out_2 mechanization.data run scoreboard players set $temp_0 mechanization.data 1
execute if score $out_0 mechanization.data matches 1 if score @s mechanization.stored_fluid >= $temp_2 mechanization.data if score $temp_1 mechanization.data > $out_4 mechanization.data if score $temp_1 mechanization.data <= $out_2 mechanization.data run scoreboard players operation @s mechanization.stored_fluid -= $temp_2 mech_data

#loop
data remove storage du:temp list[0]
execute if data storage du:temp list[0] run function mechanization:machines/machines/ench_station/add_enchant_2
