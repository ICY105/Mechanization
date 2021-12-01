
data modify storage du:temp var set from entity @s Item.tag.tank.tag.ctc.traits.liquid.id
execute store success score $temp_4 mechanization.data run data modify storage du:temp var set from storage du:temp obj.tag.ctc.traits.liquid.id

execute unless score @s mechanization.stored_fluid matches 1.. run scoreboard players set $temp_4 mechanization.data 0
execute unless score @s mechanization.stored_fluid matches 1.. run data modify entity @s Item.tag.tank set from storage du:temp obj

execute if score $temp_4 mechanization.data matches 0 run scoreboard players set $temp_5 mechanization.data 4000
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation $temp_5 mechanization.data -= @s mech_fluid
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data > $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $in_0 mech_data
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data <= $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $temp_5 mech_data
execute if score $temp_4 mechanization.data matches 0 if score $out_0 mechanization.data matches ..-1 run scoreboard players set $out_0 mechanization.data 0
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation @s mechanization.stored_fluid += $out_0 mech_data
