
execute if score @s mech_usedid matches 1.. run data modify storage du:temp obj set from entity @s Item.tag.tank_3
execute if score @s mech_usedid matches 1.. if score $in_0 mech_data matches ..0 run scoreboard players operation $out_0 mech_data = @s mech_usedid
execute if score @s mech_usedid matches 1.. if score $in_0 mech_data > @s mech_usedid run scoreboard players operation $out_0 mech_data = @s mech_usedid
execute if score @s mech_usedid matches 1.. if score $in_0 mech_data > @s mech_usedid run scoreboard players set @s mech_usedid 0
execute if score @s mech_usedid matches 1.. if score $in_0 mech_data matches 1.. if score $in_0 mech_data <= @s mech_usedid run scoreboard players operation $out_0 mech_data = $in_0 mech_data
execute if score @s mech_usedid matches 1.. if score $in_0 mech_data matches 1.. if score $in_0 mech_data <= @s mech_usedid run scoreboard players operation @s mech_usedid -= $in_0 mech_data
execute if score @s mech_usedid matches 0 run data modify entity @s Item.tag.tank_3 set value {}
