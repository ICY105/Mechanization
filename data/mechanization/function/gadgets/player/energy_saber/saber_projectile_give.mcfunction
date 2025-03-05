
# copy item
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
item replace block -30000000 0 3201 container.0 from entity @s container.0

# give item to player
execute as @a[sort=nearest,limit=1,distance=..1,predicate=mechanization:is_player,gamemode=!creative] if items entity @s weapon.mainhand * at @s run loot spawn ~ ~1 ~ mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
execute as @a[sort=nearest,limit=1,distance=..1,predicate=mechanization:is_player,gamemode=!creative] unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0

# kill self
kill @s
