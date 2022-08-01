
scoreboard players set @s mechanization.item_id 0
execute store result score @s mechanization.item_id run data get entity @s SelectedItem.tag.mechanization.id

execute if score @s[tag=player_action.sneaking] mechanization.item_id matches 11 if data entity @s SelectedItem.tag.mechanization{id:"item_filter"} run function mechanization:assembly/player/item_filter/start
