
# main
function mechanization:base/utils/redstone_active
execute if score @s energy.storage matches 144.. if data block ~ ~ ~ Items[0] run data modify storage mechanization:temp list set from block ~ ~ ~ Items
execute if score #active mechanization.data matches 1 if score @s[nbt={ItemRotation:4b}] energy.storage matches 144.. if data block ~ ~ ~ Items[0] rotated 180 0 run function mechanization:assembly/machines/compressor/check_recipes
execute if score #active mechanization.data matches 1 if score @s[nbt={ItemRotation:2b}] energy.storage matches 144.. if data block ~ ~ ~ Items[0] rotated -90 0 run function mechanization:assembly/machines/compressor/check_recipes
execute if score #active mechanization.data matches 1 if score @s[nbt={ItemRotation:0b}] energy.storage matches 144.. if data block ~ ~ ~ Items[0] rotated 0 0 run function mechanization:assembly/machines/compressor/check_recipes
execute if score #active mechanization.data matches 1 if score @s[nbt={ItemRotation:6b}] energy.storage matches 144.. if data block ~ ~ ~ Items[0] rotated 90 0 run function mechanization:assembly/machines/compressor/check_recipes

# cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t2
