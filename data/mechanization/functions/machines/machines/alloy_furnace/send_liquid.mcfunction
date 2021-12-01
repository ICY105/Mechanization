
execute if score @s mechanization.player.used_item_id matches 1.. run data modify storage du:temp obj set from entity @s Item.tag.tank_3
execute if score @s mechanization.player.used_item_id matches 1.. if score $in_0 mechanization.data matches ..0 run scoreboard players operation $out_0 mechanization.data = @s mechanization.player.used_item_id
execute if score @s mechanization.player.used_item_id matches 1.. if score $in_0 mechanization.data > @s mechanization.player.used_item_id run scoreboard players operation $out_0 mechanization.data = @s mechanization.player.used_item_id
execute if score @s mechanization.player.used_item_id matches 1.. if score $in_0 mechanization.data > @s mechanization.player.used_item_id run scoreboard players set @s mechanization.player.used_item_id 0
execute if score @s mechanization.player.used_item_id matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.player.used_item_id run scoreboard players operation $out_0 mechanization.data = $in_0 mech_data
execute if score @s mechanization.player.used_item_id matches 1.. if score $in_0 mechanization.data matches 1.. if score $in_0 mechanization.data <= @s mechanization.player.used_item_id run scoreboard players operation @s mechanization.player.used_item_id -= $in_0 mech_data
execute if score @s mechanization.player.used_item_id matches 0 run data modify entity @s Item.tag.tank_3 set value {}
