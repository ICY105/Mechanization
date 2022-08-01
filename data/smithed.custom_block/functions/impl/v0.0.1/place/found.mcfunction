data modify storage smithed.custom_block:main blockApi.id set from block ~ ~ ~ Items[0].tag.smithed.block.id

data modify storage smithed.custom_block:main blockApi.__data set from block ~ ~ ~
function #smithed.custom_block:event/on_place

execute if block ~ ~ ~ #smithed.custom_block:placeable run function smithed.custom_block:impl/v0.0.1/place/block_unchanged
