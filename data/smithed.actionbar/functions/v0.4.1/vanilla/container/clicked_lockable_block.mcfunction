# prepare to find the block the player clicked
# @s = player who clicked a lockable block
# located at @s
# run from advancement vanilla/container/clicked_lockable_block

# revoke advancement
advancement revoke @s only smithed.actionbar:v0.4.1/vanilla/container/clicked_lockable_block

# find block that was clicked
scoreboard players set $ray smithed.actionbar.temp 50
execute anchored eyes positioned ^ ^ ^ run function smithed.actionbar:v0.4.1/vanilla/container/raycast
