
advancement revoke @s only mechanization:triggers/interact_with_extractor
tag @s add mechanization.interact

scoreboard players set #success mechanization.data 0
data modify storage mechanization:temp obj set value {}
execute if data entity @s SelectedItem.tag.mechanization{id:"item_filter"} run data modify storage mechanization:temp obj set from entity @s SelectedItem
execute as @e[tag=mechanization.item_extractor,sort=nearest,limit=1,distance=..12,nbt={ItemRotation:1b}] at @s run function mechanization:assembly/player/item_filter/interact_2
execute if score #success mechanization.data matches 1 run item replace entity @s weapon.mainhand with minecraft:air

tag @s remove mechanization.interact
