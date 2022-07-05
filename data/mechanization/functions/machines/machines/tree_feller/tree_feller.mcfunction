
# main
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 160.. if entity @s[nbt={ItemRotation:0b}] run function mechanization:machines/machines/tree_feller/tree_feller_east
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 160.. if entity @s[nbt={ItemRotation:6b}] run function mechanization:machines/machines/tree_feller/tree_feller_south
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 160.. if entity @s[nbt={ItemRotation:4b}] run function mechanization:machines/machines/tree_feller/tree_feller_west
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 160.. if entity @s[nbt={ItemRotation:2b}] run function mechanization:machines/machines/tree_feller/tree_feller_north

# cleanup
execute unless block ~ ~ ~ minecraft:barrier positioned ~ ~-1 ~ run kill @e[tag=mechanization.tree_feller.model,distance=..0.75]
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t1
