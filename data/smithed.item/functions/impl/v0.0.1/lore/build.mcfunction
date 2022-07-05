


# @public
#> input: smithed.item:main item
#> output: smithed.item:main item

execute unless data storage smithed.item:main item.tag.smithed{hasLore: 1b} run function smithed.item:impl/v0.0.1/lore/setup

















data modify storage smithed.item:main item.tag.display.Lore set value []

#resolve enchantments
execute if data storage smithed.item:main item.tag.smithed.hideFlags{0: 0} if data storage smithed.item:main item.tag.Enchantments run function smithed.item:impl/v0.0.1/lore/enchantments

#resolve custom lore
execute if data storage smithed.item:main item.tag.smithed.lore run function smithed.item:impl/v0.0.1/lore/custom


#resolve attributes
execute if data storage smithed.item:main item.tag.smithed.hideFlags{1: 0} run function smithed.item:impl/v0.0.1/lore/attributes

#unbreakable
execute if data storage smithed.item:main item.tag.smithed.hideFlags{2: 0} if data storage smithed.item:main item.tag{Unbreakable: 1b} run data modify storage smithed.item:main item.tag.display.Lore append value '{"translate":"item.unbreakable","color":"blue","italic":false}'
#custom pack id
execute if data storage smithed.item:main item.tag.smithed.origin run function smithed.item:impl/v0.0.1/lore/build/nested_execute_8



#resolve durability
execute if data storage smithed.item:main item.tag.smithed.durability.dur run function smithed.item:impl/v0.0.1/lore/durability
