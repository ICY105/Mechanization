
execute if score @s mech_fluid matches 1.. run data modify storage du:temp obj set from entity @s Item.tag.tank
execute if score @s mech_fluid matches 1.. if score $in_0 mech_data matches ..0 run scoreboard players operation $out_0 mech_data = @s mech_fluid
execute if score @s mech_fluid matches 1.. if score $in_0 mech_data > @s mech_fluid run scoreboard players operation $out_0 mech_data = @s mech_fluid
execute if score @s mech_fluid matches 1.. if score $in_0 mech_data > @s mech_fluid run scoreboard players set @s mech_fluid 0
execute if score @s mech_fluid matches 1.. if score $in_0 mech_data matches 1.. if score $in_0 mech_data <= @s mech_fluid run scoreboard players operation $out_0 mech_data = $in_0 mech_data
execute if score @s mech_fluid matches 1.. if score $in_0 mech_data matches 1.. if score $in_0 mech_data <= @s mech_fluid run scoreboard players operation @s mech_fluid -= $in_0 mech_data
execute if score @s mech_fluid matches 0 run data modify entity @s Item.tag.tank set value {}
