
execute if score @s mechanization.fluid.0 matches 1.. run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_experience
execute if score @s mechanization.fluid.0 matches 1.. run data modify storage mechanization:temp obj set from block -30000000 0 3201 Items[{Slot:0b}]
execute if score @s mechanization.fluid.0 matches 1.. if score $in_0 mechanization.data matches ..0 run scoreboard players operation $out_0 mechanization.data = @s mechanization.fluid.0
execute if score @s mechanization.fluid.0 matches 1.. if score $in_0 mechanization.data > @s mechanization.fluid.0 run scoreboard players operation $out_0 mechanization.data = @s mechanization.fluid.0
execute if score @s mechanization.fluid.0 matches 1.. if score $in_0 mechanization.data > @s mechanization.fluid.0 run scoreboard players set @s mechanization.fluid.0 0
execute if score @s mechanization.fluid.0 matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.fluid.0 run scoreboard players operation $out_0 mechanization.data = $in_0 mechanization.data
execute if score @s mechanization.fluid.0 matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.fluid.0 run scoreboard players operation @s mechanization.fluid.0 -= $in_0 mechanization.data
