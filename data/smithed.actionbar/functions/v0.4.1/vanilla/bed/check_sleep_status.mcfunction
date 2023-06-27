# checks what kind of message to send
# @s = player who started sleeping
# located at @s
# run from vanilla/bed/clicked_bed

# check if this is a server or a singleplayer world
execute unless score $is_server smithed.actionbar.temp matches 1.. run function smithed.actionbar:v0.4.1/vanilla/bed/get_server_status

# get required percentage
execute store result score $sleeping_percent smithed.actionbar.temp run gamerule playersSleepingPercentage

# if over 100, send can't pass night message for all worlds
execute if score $sleeping_percent smithed.actionbar.temp matches 101.. run function #smithed.actionbar:message
# else, send sleep message if this is a server
execute if score $is_server smithed.actionbar.temp matches 1 if score $sleeping_percent smithed.actionbar.temp matches ..100 run function smithed.actionbar:v0.4.1/vanilla/bed/send_sleep_status
