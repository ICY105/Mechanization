scoreboard players set @s mech_usedid 0
execute store result score @s mech_usedid run data get entity @s SelectedItem.tag.mech_itemid
