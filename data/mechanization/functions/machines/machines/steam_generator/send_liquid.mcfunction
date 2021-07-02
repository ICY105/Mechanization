
execute if score @s du_data matches 1.. run data modify storage du:temp obj set from entity @s Item.tag.steam_item
execute if score @s du_data matches 1.. if score $in_0 mech_data matches ..0 run scoreboard players operation $out_0 mech_data = @s du_data
execute if score @s du_data matches 1.. if score $in_0 mech_data > @s du_data run scoreboard players operation $out_0 mech_data = @s du_data
execute if score @s du_data matches 1.. if score $in_0 mech_data > @s du_data run scoreboard players set @s du_data 0
execute if score @s du_data matches 1.. if score $in_0 mech_data matches 1.. if score $in_0 mech_data <= @s du_data run scoreboard players operation $out_0 mech_data = $in_0 mech_data
execute if score @s du_data matches 1.. if score $in_0 mech_data matches 1.. if score $in_0 mech_data <= @s du_data run scoreboard players operation @s du_data -= $in_0 mech_data
execute if score @s du_data matches 0 run data modify entity @s Item.tag.steam_item set value {}
