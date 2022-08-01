
# copy uuid
scoreboard players operation #uuid.0 player_action.data = @s player_action.uuid.0
scoreboard players operation #uuid.1 player_action.data = @s player_action.uuid.1
scoreboard players operation #uuid.2 player_action.data = @s player_action.uuid.2
scoreboard players operation #uuid.3 player_action.data = @s player_action.uuid.3

# destroy entities
execute as @e[tag=player_action.click_entity,predicate=player_action:v1.0/equals_uuid] run tp @s ~ -300 ~
execute as @e[tag=player_action.click_entity,predicate=player_action:v1.0/equals_uuid] run kill @s

# remove tag
tag @s remove player_action.click_detection
