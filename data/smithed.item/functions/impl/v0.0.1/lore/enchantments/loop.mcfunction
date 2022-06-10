data modify storage smithed.item:main temp set from storage smithed.item:main enchantments[-1]


















































data remove storage smithed.item:main enchantments[-1]
data modify storage smithed.item:main lore.lvl set from storage smithed.item:main temp.lvl
execute store result score $lvl smithed.data run data get storage smithed.item:main lore.lvl 1

function smithed.item:impl/v0.0.1/lore/enchantments/loop/find_ench





function smithed.item:impl/v0.0.1/lore/enchantments/loop/find_level






data modify block -30000000 0 1603 Text1 set value '[{"nbt":"lore.ench","storage":"smithed.item:main","interpret":true}," ",{"nbt":"lore.lvl","storage":"smithed.item:main","interpret":true}]'
data modify storage smithed.item:main item.tag.display.Lore prepend from block -30000000 0 1603 Text1

execute if data storage smithed.item:main enchantments[] run function smithed.item:impl/v0.0.1/lore/enchantments/loop
