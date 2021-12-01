
execute if score @s mechanization.stored_fluid matches 1.. run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_experience
execute if score @s mechanization.stored_fluid matches 1.. run data modify storage du:temp obj set from block -29999999 0 1601 Items[{Slot:0b}]
execute if score @s mechanization.stored_fluid matches 1.. if score $in_0 mechanization.data matches ..0 run scoreboard players operation $out_0 mechanization.data = @s mech_fluid
execute if score @s mechanization.stored_fluid matches 1.. if score $in_0 mechanization.data > @s mechanization.stored_fluid run scoreboard players operation $out_0 mechanization.data = @s mech_fluid
execute if score @s mechanization.stored_fluid matches 1.. if score $in_0 mechanization.data > @s mechanization.stored_fluid run scoreboard players set @s mechanization.stored_fluid 0
execute if score @s mechanization.stored_fluid matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.stored_fluid run scoreboard players operation $out_0 mechanization.data = $in_0 mech_data
execute if score @s mechanization.stored_fluid matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.stored_fluid run scoreboard players operation @s mechanization.stored_fluid -= $in_0 mech_data
