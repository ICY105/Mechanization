
# copy item
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
item replace block -30000000 0 3201 container.0 from entity @s container.0

# drop item
loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

# kill self
kill @s
