# track when the sleeping message needs to be resent
# @s = none
# located at world spawn
# run from vanilla/bed/send_sleep_status

# get current number of players in dimension and count how many are sleeping
execute if predicate smithed.actionbar:v0.4.1/is_day run scoreboard players set $sleep_count_expected smithed.actionbar.temp 0
execute store result score $sleeping_players smithed.actionbar.temp if entity @a[x=0, tag=smithed.actionbar.sleeping]
execute store result score $players_in_dimension smithed.actionbar.temp if entity @a[x=0]

# compare to expected amount of players in dimension and how many are sleeping
execute unless score $players_in_dimension smithed.actionbar.temp = $dimension_players_expected smithed.actionbar.temp as @a[x=0] run function smithed.actionbar:v0.4.1/vanilla/bed/show_sleep_percentage
execute if score $sleeping_players smithed.actionbar.temp < $sleep_count_expected smithed.actionbar.temp as @a[x=0] run function smithed.actionbar:v0.4.1/vanilla/bed/show_sleep_percentage

# loop utill there's nobody sleeping
execute if score $sleep_count_expected smithed.actionbar.temp matches 1.. run schedule function smithed.actionbar:v0.4.1/vanilla/bed/track_leave_bed 1 replace
