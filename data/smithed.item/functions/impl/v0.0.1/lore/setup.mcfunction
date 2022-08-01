data modify storage smithed.item:main item.tag.smithed.lore set from storage smithed.item:main item.tag.display.Lore
data modify storage smithed.item:main item.tag.smithed.hideFlags set value {0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0}

# @public
#> input: smithed.item:main item
#> output: smithed.item:main item





execute if data storage smithed.item:main item.tag.HideFlags run function smithed.item:impl/v0.0.1/lore/build/nested_execute_7
data modify storage smithed.item:main item.tag.smithed.hasLore set value 1b

data modify storage smithed.item:main item.tag.HideFlags set value 127












#resolve enchantments


#resolve custom lore



#resolve attributes


#unbreakable

#custom pack id




#resolve durability
