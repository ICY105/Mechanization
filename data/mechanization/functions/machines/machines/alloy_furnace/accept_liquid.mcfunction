
#tank 1
data modify storage du:temp var set from entity @s Item.tag.tank_2.tag.ctc.traits.liquid.id
execute store success score $temp_4 mechanization.data run data modify storage du:temp var set from storage du:temp obj.tag.ctc.traits.liquid.id

execute if score $temp_4 mechanization.data matches 0 run scoreboard players set $temp_4 mechanization.data -2
execute unless score $temp_4 mechanization.data matches ..-1 run scoreboard players set $temp_4 mechanization.data 0

execute if score $temp_4 mechanization.data matches 0 run data modify storage du:temp var set from entity @s Item.tag.tank_1.tag.ctc.traits.liquid.id
execute if score $temp_4 mechanization.data matches 0 store success score $temp_4 mechanization.data run data modify storage du:temp var set from storage du:temp obj.tag.ctc.traits.liquid.id

execute unless score $temp_4 mechanization.data matches ..-1 unless score @s mechanization.stored_fluid matches 1.. if data storage du:temp obj.tag.ctc.traits.liquid.molten run scoreboard players set $temp_4 mechanization.data 0
execute unless score $temp_4 mechanization.data matches ..-1 unless score @s mechanization.stored_fluid matches 1.. if data storage du:temp obj.tag.ctc.traits.liquid.molten run data modify entity @s Item.tag.tank_1 set from storage du:temp obj

execute if score $temp_4 mechanization.data matches 0 run scoreboard players set $temp_5 mechanization.data 4000
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation $temp_5 mechanization.data -= @s mech_fluid
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data > $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $in_0 mech_data
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data <= $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $temp_5 mech_data
execute if score $temp_4 mechanization.data matches 0 if score $out_0 mechanization.data matches ..-1 run scoreboard players set $out_0 mechanization.data 0
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation @s mechanization.stored_fluid += $out_0 mech_data

#tank 2
execute if score $temp_4 mechanization.data matches 0 run scoreboard players set $temp_4 mechanization.data -1
execute unless score $temp_4 mechanization.data matches -1 run scoreboard players set $temp_4 mechanization.data 0

execute if score $temp_4 mechanization.data matches 0 run data modify storage du:temp var set from entity @s Item.tag.tank_2.tag.ctc.traits.liquid.id
execute if score $temp_4 mechanization.data matches 0 store success score $temp_4 mechanization.data run data modify storage du:temp var set from storage du:temp obj.tag.ctc.traits.liquid.id

execute unless score $temp_4 mechanization.data matches -1 unless score @s du_data matches 1.. if data storage du:temp obj.tag.ctc.traits.liquid.molten run scoreboard players set $temp_4 mechanization.data 0
execute unless score $temp_4 mechanization.data matches -1 unless score @s du_data matches 1.. if data storage du:temp obj.tag.ctc.traits.liquid.molten run data modify entity @s Item.tag.tank_2 set from storage du:temp obj

execute if score $temp_4 mechanization.data matches 0 run scoreboard players set $temp_5 mechanization.data 4000
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation $temp_5 mechanization.data -= @s du_data
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data > $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $in_0 mech_data
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data <= $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $temp_5 mech_data
execute if score $temp_4 mechanization.data matches 0 if score $out_0 mechanization.data matches ..-1 run scoreboard players set $out_0 mechanization.data 0
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation @s du_data += $out_0 mech_data
