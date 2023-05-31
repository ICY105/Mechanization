
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
execute store result score #temp player_action.data run data get block -30000000 0 3201 Items[0].tag.player_action.click_detection

execute if score #temp player_action.data matches 0 if entity @s[tag=player_action.click_detection] run function player_action:v1.3/player/click_detection/end
execute if score #temp player_action.data matches 1 run function player_action:v1.3/player/click_detection/process
