execute store result score $hideFlags smithed.data run data get storage smithed.item:main item.tag.HideFlags 1


# @public
#> input: smithed.item:main item
#> output: smithed.item:main item









execute if score $hideFlags smithed.data matches 64.. run function smithed.item:impl/v0.0.1/lore/build/nested_execute_0
execute if score $hideFlags smithed.data matches 32.. run function smithed.item:impl/v0.0.1/lore/build/nested_execute_1
execute if score $hideFlags smithed.data matches 16.. run function smithed.item:impl/v0.0.1/lore/build/nested_execute_2
execute if score $hideFlags smithed.data matches 8.. run function smithed.item:impl/v0.0.1/lore/build/nested_execute_3
execute if score $hideFlags smithed.data matches 4.. run function smithed.item:impl/v0.0.1/lore/build/nested_execute_4

execute if score $hideFlags smithed.data matches 2.. run function smithed.item:impl/v0.0.1/lore/build/nested_execute_5
execute if score $hideFlags smithed.data matches 1.. run function smithed.item:impl/v0.0.1/lore/build/nested_execute_6




#resolve enchantments


#resolve custom lore



#resolve attributes


#unbreakable

#custom pack id




#resolve durability
