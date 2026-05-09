
# copy item
data remove block -30000000 0 3201 Items
item replace block -30000000 0 3201 container.0 from entity @s container.0

# drop item
loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

# kill self
kill @s
