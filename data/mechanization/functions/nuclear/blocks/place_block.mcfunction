
# Get ID Length
execute store result score #id mechanization.data run data get storage smithed.custom_block:main blockApi.id

# blocks
execute if score #id mechanization.data matches 24 if data storage smithed.custom_block:main blockApi{id:"mechanization:centrifuge"} run function mechanization:nuclear/blocks/centrifuge/place
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:control_rod"} run function mechanization:nuclear/blocks/control_rod/place
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:reactor_core"} run function mechanization:nuclear/blocks/reactor_core/place
execute if score #id mechanization.data matches 28 if data storage smithed.custom_block:main blockApi{id:"mechanization:heat_exchanger"} run function mechanization:nuclear/blocks/heat_exchanger/place
execute if score #id mechanization.data matches 28 if data storage smithed.custom_block:main blockApi{id:"mechanization:moderator_cell"} run function mechanization:nuclear/blocks/moderator_cell/place_empty
execute if score #id mechanization.data matches 34 if data storage smithed.custom_block:main blockApi{id:"mechanization:water_moderator_cell"} run function mechanization:nuclear/blocks/moderator_cell/place_water
execute if score #id mechanization.data matches 40 if data storage smithed.custom_block:main blockApi{id:"mechanization:heavy_water_moderator_cell"} run function mechanization:nuclear/blocks/moderator_cell/place_heavy_water
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:nuclear_bomb"} run function mechanization:nuclear/blocks/nuclear_bomb/place
execute if score #id mechanization.data matches 32 if data storage smithed.custom_block:main blockApi{id:"mechanization:thermonuclear_bomb"} run function mechanization:nuclear/blocks/thermonuclear_bomb/place
