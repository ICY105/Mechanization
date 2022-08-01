



data modify block -30000000 0 1603 Text1 set from storage smithed.item:main lore.temp[-1]
data remove storage smithed.item:main lore.temp[-1]
scoreboard players remove $iter smithed.data 1

data modify storage smithed.item:main item.tag.display.Lore append from block -30000000 0 1603 Text1

execute if score $iter smithed.data matches 1.. run function smithed.item:impl/v0.0.1/lore/custom/iter


