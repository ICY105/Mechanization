
# copy item
data remove block -30000000 0 3201 Items
item replace block -30000000 0 3201 container.0 from entity @s armor.head

# drop item
loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}

# kill self
kill @s
