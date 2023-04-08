# checks if there are other players online
# @s = player who started sleeping
# located at @s
# run from vanilla/bed/check_sleep_status

tag @s add smithed.actionbar.self
execute if entity @a[tag=!smithed.actionbar.self, limit=1] run scoreboard players set $is_server smithed.actionbar.temp 1
tag @s remove smithed.actionbar.self
