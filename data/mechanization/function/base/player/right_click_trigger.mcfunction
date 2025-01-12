
advancement revoke @s only mechanization:triggers/use_custom_item
execute unless score @s mechanization.used_item matches 1.. run function #mechanization:calls/right_click
scoreboard players set @s mechanization.used_item 2
