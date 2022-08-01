
execute store result score #temp player_action.data run data get entity @s SelectedItem.tag.player_action.click_detection

execute if score #temp player_action.data matches 0 if entity @s[tag=player_action.click_detection] run function player_action:v1.0/player/click_detection/end
execute if score #temp player_action.data matches 1 run function player_action:v1.0/player/click_detection/process
