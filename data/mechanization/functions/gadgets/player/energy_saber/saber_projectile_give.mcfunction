
tag @s remove mechanization.speed

# copy item
data remove block -30000000 0 3201 Items
item replace block -30000000 0 3201 container.0 from entity @s container.0

# give item to player
execute as @a[sort=nearest,limit=1,distance=..1,predicate=mechanization:is_player,gamemode=!creative] if data entity @s SelectedItem at @s run loot spawn ~ ~1 ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}
execute as @a[sort=nearest,limit=1,distance=..1,predicate=mechanization:is_player,gamemode=!creative] unless data entity @s SelectedItem run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0

# kill self
kill @s
