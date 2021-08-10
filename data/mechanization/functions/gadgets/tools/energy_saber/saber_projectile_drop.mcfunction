
#copy item
data remove block -29999999 0 1601 Items
item replace block -29999999 0 1601 container.0 from entity @s armor.head

#drop item
loot spawn ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}

#kill self
kill @s
