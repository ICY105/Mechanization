
#water tank
scoreboard players set $temp_4 mechanization.data 0
execute if data storage du:temp obj.tag.ctc.traits.liquid{id:"water"} run scoreboard players set $temp_4 mechanization.data 1
execute if data storage du:temp obj.tag.ctc.traits.liquid{id:"water"} unless score @s mechanization.stored_fluid matches 1.. run data modify entity @s Item.tag.water_item set from storage du:temp obj

execute if score $temp_4 mechanization.data matches 1 run scoreboard players set $temp_5 mechanization.data 4000
execute if score $temp_4 mechanization.data matches 1 run scoreboard players operation $temp_5 mechanization.data -= @s mech_fluid
execute if score $temp_4 mechanization.data matches 1 if score $temp_5 mechanization.data > $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $in_0 mech_data
execute if score $temp_4 mechanization.data matches 1 if score $temp_5 mechanization.data <= $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $temp_5 mech_data
execute if score $temp_4 mechanization.data matches 1 if score $out_0 mechanization.data matches ..-1 run scoreboard players set $out_0 mechanization.data 0
execute if score $temp_4 mechanization.data matches 1 run scoreboard players operation @s mechanization.stored_fluid += $out_0 mech_data

#steam tank
scoreboard players set $temp_4 mechanization.data 0
execute if data storage du:temp obj.tag.ctc.traits.liquid{id:"steam"} run scoreboard players set $temp_4 mechanization.data 1
execute if data storage du:temp obj.tag.ctc.traits.liquid{id:"steam"} unless score @s mechanization.stored_fluid matches 1.. run data modify entity @s Item.tag.steam_item set from storage du:temp obj

execute if score $temp_4 mechanization.data matches 1 run scoreboard players set $temp_5 mechanization.data 4000
execute if score $temp_4 mechanization.data matches 1 run scoreboard players operation $temp_5 mechanization.data -= @s du_data
execute if score $temp_4 mechanization.data matches 1 if score $temp_5 mechanization.data > $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $in_0 mech_data
execute if score $temp_4 mechanization.data matches 1 if score $temp_5 mechanization.data <= $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $temp_5 mech_data
execute if score $temp_4 mechanization.data matches 1 if score $out_0 mechanization.data matches ..-1 run scoreboard players set $out_0 mechanization.data 0
execute if score $temp_4 mechanization.data matches 1 run scoreboard players operation @s du_data += $out_0 mech_data

