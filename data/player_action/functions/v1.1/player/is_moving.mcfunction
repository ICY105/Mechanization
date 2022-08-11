
# cache position
data modify storage player_action:temp list set from entity @s Pos

# calc difference
execute store result score #x player_action.data run data get storage player_action:temp list[0] 70
scoreboard players operation #temp player_action.data = #x player_action.data
scoreboard players operation #temp player_action.data -= @s player_action.x
execute unless score #temp player_action.data matches 0 run tag @s add player_action.moving

execute store result score #y player_action.data run data get storage player_action:temp list[1] 70
scoreboard players operation #temp player_action.data = #y player_action.data
scoreboard players operation #temp player_action.data -= @s player_action.y
execute unless score #temp player_action.data matches 0 run tag @s add player_action.moving

execute store result score #z player_action.data run data get storage player_action:temp list[2] 70
scoreboard players operation #temp player_action.data = #z player_action.data
scoreboard players operation #temp player_action.data -= @s player_action.z
execute unless score #temp player_action.data matches 0 run tag @s add player_action.moving

# save score
scoreboard players operation @s player_action.x = #x player_action.data
scoreboard players operation @s player_action.y = #y player_action.data
scoreboard players operation @s player_action.z = #z player_action.data
