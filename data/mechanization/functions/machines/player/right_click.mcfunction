
scoreboard players set @s mechanization.item_id 0
execute store result score @s mechanization.item_id run data get entity @s SelectedItem.tag.mechanization.id


execute if score @s[gamemode=!adventure] mechanization.item_id matches 13 if data entity @s SelectedItem.tag.mechanization{id:"spawner_mover", has_spawner:1b} run function mechanization:machines/player/spawner_mover/spawner_place
execute if score @s[gamemode=!adventure] mechanization.item_id matches 13 if data entity @s SelectedItem.tag.mechanization{id:"spawner_mover", has_spawner:0b} run function mechanization:machines/player/spawner_mover/spawner_box
execute if score @s[gamemode=!adventure] mechanization.item_id matches 18 if data entity @s SelectedItem.tag.mechanization{id:"spawner_controller"} run function mechanization:machines/machines/spawner_controller/place
