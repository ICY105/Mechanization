
# main
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 160.. if entity @s[nbt={ItemRotation:6b}] rotated 270 positioned ^ ^ ^1 run function mechanization:machines/machines/tree_feller/tree_feller_process
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 160.. if entity @s[nbt={ItemRotation:4b}] rotated 0 0 positioned ^ ^ ^1 run function mechanization:machines/machines/tree_feller/tree_feller_process
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 160.. if entity @s[nbt={ItemRotation:2b}] rotated 90 0 positioned ^ ^ ^1 run function mechanization:machines/machines/tree_feller/tree_feller_process
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 160.. if entity @s[nbt={ItemRotation:0b}] rotated 180 0 positioned ^ ^ ^1 run function mechanization:machines/machines/tree_feller/tree_feller_process

# cleanup
execute unless block ~ ~ ~ minecraft:barrier align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=mechanization.tree_feller.model,distance=..0.75]
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t1
