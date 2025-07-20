
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run function mechanization:nuclear/blocks/alchemy_chamber/hopper/m.hopper_input {location:"~ ~1 ~"}
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run function mechanization:nuclear/blocks/alchemy_chamber/hopper/m.hopper_input {location:"~1 ~ ~"}
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run function mechanization:nuclear/blocks/alchemy_chamber/hopper/m.hopper_input {location:"~-1 ~ ~"}
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run function mechanization:nuclear/blocks/alchemy_chamber/hopper/m.hopper_input {location:"~ ~ ~1"}
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run function mechanization:nuclear/blocks/alchemy_chamber/hopper/m.hopper_input {location:"~ ~ ~-1"}
execute if block ~ ~-1 ~ minecraft:hopper run function mechanization:nuclear/blocks/alchemy_chamber/hopper/hopper_output

# main
scoreboard players set #flux mechanization.data 1000000
execute if items block ~ ~ ~ container.1 * unless function mechanization:nuclear/blocks/alchemy_chamber/is_full run function mechanization:nuclear/blocks/alchemy_chamber/recipes/input
execute if score #flux mechanization.data matches 1000000 run scoreboard players set @s mechanization.data 0
execute if score @s mechanization.data >= #flux mechanization.data run function mechanization:nuclear/blocks/alchemy_chamber/recipes/output

# gui
function mechanization:nuclear/blocks/alchemy_chamber/gui

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_block/break_machine_t3
