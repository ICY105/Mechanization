
execute if score @s mechanization.manual matches 1.. run function mechanization:base/player/manual/pin_recipe
execute if score @s mechanization.manual matches ..-1 run function mechanization:base/player/manual/switch_mode

scoreboard players set @s mechanization.manual 0
scoreboard players enable @s mechanization.manual

execute store result score #version mechanization.data run data get entity @s SelectedItem.tag.mechanization.manual_version
execute if score #version mechanization.data matches ..7 run loot replace entity @s weapon.mainhand loot mechanization:base/manual/start
