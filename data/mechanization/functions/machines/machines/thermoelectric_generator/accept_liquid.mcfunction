
execute store result score $temp_6 mech_data run data get storage du:temp obj.tag.ctc.traits.liquid.temperature

#tank 1
data modify storage du:temp var set from entity @s Item.tag.tank_1.tag.ctc.traits.liquid.id
execute store success score $temp_4 mech_data run data modify storage du:temp var set from storage du:temp obj.tag.ctc.traits.liquid.id

execute unless score @s mech_fluid matches 1.. run scoreboard players set $temp_4 mech_data 0
execute if score $temp_6 mech_data matches 100.. run scoreboard players set $temp_4 mech_data -1

execute if score $temp_4 mech_data matches 0 run scoreboard players set $temp_5 mech_data 4000
execute if score $temp_4 mech_data matches 0 run scoreboard players operation $temp_5 mech_data -= @s mech_fluid
execute if score $temp_4 mech_data matches 0 if score $temp_5 mech_data > $in_0 mech_data run scoreboard players operation $out_0 mech_data = $in_0 mech_data
execute if score $temp_4 mech_data matches 0 if score $temp_5 mech_data <= $in_0 mech_data run scoreboard players operation $out_0 mech_data = $temp_5 mech_data
execute if score $temp_4 mech_data matches 0 if score $out_0 mech_data matches ..-1 run scoreboard players set $out_0 mech_data 0
execute if score $temp_4 mech_data matches 0 run scoreboard players operation @s mech_fluid += $out_0 mech_data
execute if score $temp_4 mech_data matches 0 if score $out_0 mech_data matches 1.. run data modify entity @s Item.tag.tank_1 set from storage du:temp obj

#tank 2
data modify storage du:temp var set from entity @s Item.tag.tank_2.tag.ctc.traits.liquid.id
execute store success score $temp_4 mech_data run data modify storage du:temp var set from storage du:temp obj.tag.ctc.traits.liquid.id

execute unless score @s du_data matches 1.. run scoreboard players set $temp_4 mech_data 0
execute if score $temp_6 mech_data matches ..99 run scoreboard players set $temp_4 mech_data -1

execute if score $temp_4 mech_data matches 0 run scoreboard players set $temp_5 mech_data 4000
execute if score $temp_4 mech_data matches 0 run scoreboard players operation $temp_5 mech_data -= @s du_data
execute if score $temp_4 mech_data matches 0 if score $temp_5 mech_data > $in_0 mech_data run scoreboard players operation $out_0 mech_data = $in_0 mech_data
execute if score $temp_4 mech_data matches 0 if score $temp_5 mech_data <= $in_0 mech_data run scoreboard players operation $out_0 mech_data = $temp_5 mech_data
execute if score $temp_4 mech_data matches 0 if score $out_0 mech_data matches ..-1 run scoreboard players set $out_0 mech_data 0
execute if score $temp_4 mech_data matches 0 run scoreboard players operation @s du_data += $out_0 mech_data
execute if score $temp_4 mech_data matches 0 if score $out_0 mech_data matches 1.. run data modify entity @s Item.tag.tank_2 set from storage du:temp obj
