
# copy uuid
scoreboard players operation #uuid.0 player_action.data = @s player_action.uuid.0
scoreboard players operation #uuid.1 player_action.data = @s player_action.uuid.1
scoreboard players operation #uuid.2 player_action.data = @s player_action.uuid.2
scoreboard players operation #uuid.3 player_action.data = @s player_action.uuid.3

# start detection
execute if entity @s[tag=!player_action.click_detection] run function player_action:v1.0/player/click_detection/start

# teleport villager
execute if entity @s[tag=!player_action.moving] as @e[tag=player_action.click_entity,predicate=player_action:v1.0/equals_uuid] run tp @s ~ ~0.75 ~
execute if entity @s[tag=player_action.moving] as @e[tag=player_action.click_entity,predicate=player_action:v1.0/equals_uuid] positioned ~ ~0.75 ~ run tp @s ^ ^ ^1.5
