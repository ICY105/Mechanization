data modify storage smithed.item:main lore.temp set from storage smithed.item:main item.tag.smithed.lore
execute store result score $iter smithed.data if data storage smithed.item:main lore.temp[]

function smithed.item:impl/v0.0.1/lore/custom/iter









