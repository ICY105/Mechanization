
execute if score @s mechanization.fluid.1 matches 1.. run data modify storage du:temp obj set from entity @s Item.tag.steam_item
execute if score @s mechanization.fluid.1 matches 1.. if score $in_0 mechanization.data matches ..0 run scoreboard players operation $out_0 mechanization.data = @s mechanization.fluid.1
execute if score @s mechanization.fluid.1 matches 1.. if score $in_0 mechanization.data > @s mechanization.fluid.1 run scoreboard players operation $out_0 mechanization.data = @s mechanization.fluid.1
execute if score @s mechanization.fluid.1 matches 1.. if score $in_0 mechanization.data > @s mechanization.fluid.1 run scoreboard players set @s mechanization.fluid.1 0
execute if score @s mechanization.fluid.1 matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.fluid.1 run scoreboard players operation $out_0 mechanization.data = $in_0 mechanization.data
execute if score @s mechanization.fluid.1 matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.fluid.1 run scoreboard players operation @s mechanization.fluid.1 -= $in_0 mechanization.data
execute if score @s mechanization.fluid.1 matches 0 run data modify entity @s Item.tag.steam_item set value {}
