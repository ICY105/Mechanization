
execute store result score $temp_6 mechanization.data run data get storage mechanization:temp obj.tag.mechanization.liquid.temperature

#tank 1
data modify storage mechanization:temp var set from entity @s Item.tag.tank_1.tag.mechanization.liquid.id
execute store success score $temp_4 mechanization.data run data modify storage mechanization:temp var set from storage mechanization:temp obj.tag.mechanization.liquid.id

execute unless score @s mechanization.fluid.0 matches 1.. run scoreboard players set $temp_4 mechanization.data 0
execute if score $temp_6 mechanization.data matches 100.. run scoreboard players set $temp_4 mechanization.data -1

execute if score $temp_4 mechanization.data matches 0 run scoreboard players set $temp_5 mechanization.data 4000
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation $temp_5 mechanization.data -= @s mechanization.fluid.0
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data > $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $in_0 mechanization.data
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data <= $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $temp_5 mechanization.data
execute if score $temp_4 mechanization.data matches 0 if score $out_0 mechanization.data matches ..-1 run scoreboard players set $out_0 mechanization.data 0
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation @s mechanization.fluid.0 += $out_0 mechanization.data
execute if score $temp_4 mechanization.data matches 0 if score $out_0 mechanization.data matches 1.. run data modify entity @s Item.tag.tank_1 set from storage mechanization:temp obj

#tank 2
data modify storage mechanization:temp var set from entity @s Item.tag.tank_2.tag.mechanization.liquid.id
execute store success score $temp_4 mechanization.data run data modify storage mechanization:temp var set from storage mechanization:temp obj.tag.mechanization.liquid.id

execute unless score @s mechanization.fluid.1 matches 1.. run scoreboard players set $temp_4 mechanization.data 0
execute if score $temp_6 mechanization.data matches ..99 run scoreboard players set $temp_4 mechanization.data -1

execute if score $temp_4 mechanization.data matches 0 run scoreboard players set $temp_5 mechanization.data 4000
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation $temp_5 mechanization.data -= @s mechanization.fluid.1
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data > $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $in_0 mechanization.data
execute if score $temp_4 mechanization.data matches 0 if score $temp_5 mechanization.data <= $in_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $temp_5 mechanization.data
execute if score $temp_4 mechanization.data matches 0 if score $out_0 mechanization.data matches ..-1 run scoreboard players set $out_0 mechanization.data 0
execute if score $temp_4 mechanization.data matches 0 run scoreboard players operation @s mechanization.fluid.1 += $out_0 mechanization.data
execute if score $temp_4 mechanization.data matches 0 if score $out_0 mechanization.data matches 1.. run data modify entity @s Item.tag.tank_2 set from storage mechanization:temp obj
