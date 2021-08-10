
#copy item
data remove block -29999999 0 1601 Items
item replace block -29999999 0 1601 container.0 from entity @s armor.head

#give item to player
execute as @a[sort=nearest,limit=1,distance=..1,predicate=mechanization:matches_uuid,gamemode=!creative] if data entity @s SelectedItem run loot give @s mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute as @a[sort=nearest,limit=1,distance=..1,predicate=mechanization:matches_uuid,gamemode=!creative] unless data entity @s SelectedItem run item replace entity @s weapon.mainhand from block -29999999 0 1601 container.0

#kill self
kill @s
