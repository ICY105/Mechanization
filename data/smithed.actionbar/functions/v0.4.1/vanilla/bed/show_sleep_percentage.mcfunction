# show new sleep message to all players
# @s = all players in the overworld dimension
# located at world spawn
# run from vanilla/bed/track_leave_bed

# calculate required player count
execute store result score $required_sleeping_players smithed.actionbar.temp if entity @a[x=0]
scoreboard players operation $required_sleeping_players smithed.actionbar.temp *= $sleeping_percent smithed.actionbar.temp
scoreboard players operation $remainder smithed.actionbar.temp = $required_sleeping_players smithed.actionbar.temp
scoreboard players operation $remainder smithed.actionbar.temp %= #100 smithed.actionbar.const
execute if score $remainder smithed.actionbar.temp matches 1.. run scoreboard players add $required_sleeping_players smithed.actionbar.temp 100
scoreboard players operation $required_sleeping_players smithed.actionbar.temp /= #100 smithed.actionbar.const

# bounds checking
execute if score $required_sleeping_players smithed.actionbar.temp matches ..0 run scoreboard players set $required_sleeping_players smithed.actionbar.temp 1

# send message
execute unless score $sleeping_players smithed.actionbar.temp = $required_sleeping_players smithed.actionbar.temp run data modify storage smithed.actionbar:input message set value {json: '{"translate":"sleep.players_sleeping","with":[{"score":{"name":"$sleeping_players","objective":"smithed.actionbar.temp"}},{"score":{"name":"$required_sleeping_players","objective":"smithed.actionbar.temp"}}]}', priority: "notification", freeze: 20}
execute if score $sleeping_players smithed.actionbar.temp = $required_sleeping_players smithed.actionbar.temp run data modify storage smithed.actionbar:input message set value {json: '{"translate":"sleep.skipping_night"}', priority: "notification", freeze: 20}
function #smithed.actionbar:message

# update player counts
scoreboard players operation $sleep_count_expected smithed.actionbar.temp = $sleeping_players smithed.actionbar.temp
scoreboard players operation $dimension_players_expected smithed.actionbar.temp = $players_in_dimension smithed.actionbar.temp
