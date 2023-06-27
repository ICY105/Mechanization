# raycast to find the (most-likely) block the player clicked
# @s = player who clicked a lockable block
# located at @s anchored eyes positioned ^ ^ ^0.X; X = loop count
# run from vanilla/container/clicked_lockable_block

execute if block ~ ~ ~ #smithed.actionbar:v0.4.1/lockable align xyz positioned ~0.5 ~ ~0.5 run function smithed.actionbar:v0.4.1/vanilla/container/check_lock

# loop until bed is found
scoreboard players remove $ray smithed.actionbar.temp 1
execute unless block ~ ~ ~ #smithed.actionbar:v0.4.1/lockable if score $ray smithed.actionbar.temp matches 1.. positioned ^ ^ ^0.1 run function smithed.actionbar:v0.4.1/vanilla/container/raycast
