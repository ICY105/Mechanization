
execute if score @s mechanization.manual matches 1.. run function mechanization:base/player/manual/pin_recipe
execute if score @s mechanization.manual matches ..-1 run function mechanization:base/player/manual/switch_mode

scoreboard players set @s mechanization.manual 0
