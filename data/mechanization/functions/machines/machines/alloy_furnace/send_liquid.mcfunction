
execute if score @s mechanization.fluid.2 matches 1.. run data modify storage mechanization:temp obj set from entity @s Item.tag.tank_3
execute if score @s mechanization.fluid.2 matches 1.. if score $in_0 mechanization.data matches ..0 run scoreboard players operation $out_0 mechanization.data = @s mechanization.fluid.2
execute if score @s mechanization.fluid.2 matches 1.. if score $in_0 mechanization.data > @s mechanization.fluid.2 run scoreboard players operation $out_0 mechanization.data = @s mechanization.fluid.2
execute if score @s mechanization.fluid.2 matches 1.. if score $in_0 mechanization.data > @s mechanization.fluid.2 run scoreboard players set @s mechanization.fluid.2 0
execute if score @s mechanization.fluid.2 matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.fluid.2 run scoreboard players operation $out_0 mechanization.data = $in_0 mechanization.data
execute if score @s mechanization.fluid.2 matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.fluid.2 run scoreboard players operation @s mechanization.fluid.2 -= $in_0 mechanization.data
execute if score @s mechanization.fluid.2 matches 0 run data modify entity @s Item.tag.tank_3 set value {}
