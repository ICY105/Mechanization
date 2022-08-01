execute store success score $temp smithed.data run data modify storage smithed.custom_block:main blockApi.__data set from block ~ ~ ~

execute if score $temp smithed.data matches 0 run function smithed.custom_block:impl/v0.0.1/place/throw_warning
