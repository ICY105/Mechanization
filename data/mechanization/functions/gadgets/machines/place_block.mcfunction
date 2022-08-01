
# Get ID Length
execute store result score #id mechanization.data run data get storage smithed.custom_block:main blockApi.id

# Machines
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:tinker_table"} run function mechanization:gadgets/machines/tinker_table/place
execute if score #id mechanization.data matches 30 if data storage smithed.custom_block:main blockApi{id:"mechanization:charging_station"} run function mechanization:gadgets/machines/charging_station/place
