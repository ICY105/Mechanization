
# recipes
function mechanization:base/utils/redstone_active

scoreboard players set @s mechanization.time -1
execute if score #active mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:7b,Count:64b}] run function mechanization:nuclear/blocks/alchemy_chamber/recipes/input
execute if score #active mechanization.data matches 1 if score @s mechanization.data >= @s mechanization.time run function mechanization:nuclear/blocks/alchemy_chamber/recipes/output

#ui
function mechanization:nuclear/blocks/alchemy_chamber/gui

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_block/break_machine_t3
