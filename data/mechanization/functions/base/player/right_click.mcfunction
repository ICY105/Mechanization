
scoreboard players set @s mechanization.usedid 0
execute store result score @s mechanization.usedid run data get entity @s SelectedItem.tag.mechanization.id

#tools
execute if score @s mechanization.usedid matches 6 if data entity @s SelectedItem.tag.mechanization{id:"wrench"} run function mechanization:base/player/wrench/use
execute if score @s mechanization.usedid matches 10 if data entity @s SelectedItem.tag.mechanization{id:"multimeter"} run function mechanization:base/player/multimeter/use
execute if score @s mechanization.usedid matches 15 if data entity @s SelectedItem.tag.mechanization{id:"machine_upgrade"} run function mechanization:base/player/upgrades/use
execute if score @s mechanization.usedid matches 14 if data entity @s SelectedItem.tag.mechanization{id:"nether_upgrade"} run function mechanization:base/player/upgrades/use
execute if score @s mechanization.usedid matches 13 if data entity @s SelectedItem.tag.mechanization{id:"ender_upgrade"} run function mechanization:base/player/upgrades/use
execute if score @s mechanization.usedid matches 15 if data entity @s SelectedItem.tag.mechanization{id:"muffler_upgrade"} run function mechanization:base/player/upgrades/use
