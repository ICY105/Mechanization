
# Get ID Length
execute store result score #id mechanization.data run data get storage smithed.custom_block:main blockApi.id

# reactor core
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:reactor_core"} run function mechanization:nuclear/blocks/reactor_core/place

