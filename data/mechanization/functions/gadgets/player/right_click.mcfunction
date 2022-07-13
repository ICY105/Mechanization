
scoreboard players set @s mechanization.item_id 0
execute store result score @s mechanization.item_id run data get entity @s SelectedItem.tag.mechanization.id

execute if score @s mechanization.item_id matches 12 if data entity @s SelectedItem.tag.mechanization{id:"energy_saber"} run function mechanization:gadgets/player/energy_saber/throw_saber
execute if score @s mechanization.item_id matches 4 if data entity @s SelectedItem.tag.mechanization{id:"epac"} run scoreboard players set @s mechanization.time 4
