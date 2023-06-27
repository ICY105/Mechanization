# check if the double chest is locked
# @s = player who clicked on a double chest
# located at the center of the clicked block
# run from vanilla/container/check_double_chest_lock

# check if the other chest is locked
execute if block ~ ~ ~ #smithed.actionbar:v0.4.1/chests[type=right] store success score $locked smithed.actionbar.temp if data block ~1 ~ ~ Lock
execute if block ~ ~ ~ #smithed.actionbar:v0.4.1/chests[type=left] store success score $locked smithed.actionbar.temp if data block ~-1 ~ ~ Lock

# store info for locked container
execute if score $locked smithed.actionbar.temp matches 1 if block ~ ~ ~ #smithed.actionbar:v0.4.1/chests[type=right] run data modify storage smithed.actionbar:data block set from block ~1 ~ ~ {}
execute if score $locked smithed.actionbar.temp matches 1 if block ~ ~ ~ #smithed.actionbar:v0.4.1/chests[type=left] run data modify storage smithed.actionbar:data block set from block ~-1 ~ ~ {}
