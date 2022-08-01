scoreboard players operation $remainder smithed.data = $hideFlags smithed.data
scoreboard players operation $remainder smithed.data %= $2 bolt.expr.const
scoreboard players operation $hideFlags smithed.data /= $2 bolt.expr.const
# @public
#> input: smithed.item:main item
#> output: smithed.item:main item












execute store result storage smithed.item:main item.tag.smithed.hideFlags.0 int 1 run scoreboard players get $remainder smithed.data








#resolve enchantments


#resolve custom lore



#resolve attributes


#unbreakable

#custom pack id




#resolve durability
