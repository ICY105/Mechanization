# check if the block the player clicked is locked
# @s = player who clicked a lockable block
# located at the center of the clicked block
# run from vanilla/container/raycast

# check if the block is locked
scoreboard players set $locked smithed.actionbar.temp 0
execute store success score $locked smithed.actionbar.temp if data block ~ ~ ~ Lock
execute if score $locked smithed.actionbar.temp matches 1 run data modify storage smithed.actionbar:data block set from block ~ ~ ~ {}
execute if score $locked smithed.actionbar.temp matches 0 if block ~ ~ ~ #smithed.actionbar:v0.4.1/chests unless block ~ ~ ~ #smithed.actionbar:v0.4.1/chests[type=single] run function smithed.actionbar:v0.4.1/vanilla/container/check_double_chest_lock

execute if score $locked smithed.actionbar.temp matches 1 run function smithed.actionbar:v0.4.1/vanilla/container/send_message
