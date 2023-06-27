# send sleep message and prepare for sleep tracking
# @s = player who started sleeping
# located at @s
# run from vanilla/bed/check_sleep_status

# send current sleep status
execute as @a[x=0] run function #smithed.actionbar:message

# track when a player leaves their bed
execute store result score $dimension_players_expected smithed.actionbar.sleep_t if entity @a[x=0]
scoreboard players set @s smithed.actionbar.sleep_t 2
scoreboard players add $sleep_count_expected smithed.actionbar.temp 1
schedule function smithed.actionbar:v0.4.1/vanilla/bed/track_leave_bed 1 replace
