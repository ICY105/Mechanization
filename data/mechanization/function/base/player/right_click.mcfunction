
scoreboard players set @s mechanization.item_id 0
execute store result score @s mechanization.item_id run data get entity @s SelectedItem.tag.mechanization.id

execute if score @s mechanization.item_id matches 3 if data entity @s SelectedItem.tag.mechanization{id:"gps"} run function mechanization:base/player/gps/use
execute if score @s mechanization.item_id matches 6 if data entity @s SelectedItem.tag.mechanization{id:"wrench"} run function mechanization:base/player/wrench/use
execute if score @s mechanization.item_id matches 10 if data entity @s SelectedItem.tag.mechanization{id:"multimeter"} run function mechanization:base/player/multimeter/use
execute if score @s mechanization.item_id matches 11 if data entity @s SelectedItem.tag.mechanization{id:"pipe_wrench"} run function mechanization:base/player/pipe_wrench/modify_state
execute if score @s mechanization.item_id matches 15 if data entity @s SelectedItem.tag.mechanization{id:"machine_upgrade"} run function mechanization:base/player/upgrades/use
execute if score @s mechanization.item_id matches 14 if data entity @s SelectedItem.tag.mechanization{id:"nether_upgrade"} run function mechanization:base/player/upgrades/use
execute if score @s mechanization.item_id matches 13 if data entity @s SelectedItem.tag.mechanization{id:"ender_upgrade"} run function mechanization:base/player/upgrades/use
execute if score @s mechanization.item_id matches 15 if data entity @s SelectedItem.tag.mechanization{id:"muffler_upgrade"} run function mechanization:base/player/upgrades/use
