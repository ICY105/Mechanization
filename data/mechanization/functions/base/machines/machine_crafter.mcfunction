function #mechanization:machine_crafter
execute unless block ~ ~ ~ minecraft:trapped_chest run kill @s
execute unless block ~ ~ ~ minecraft:trapped_chest run kill @e[type=item,nbt={Item:{tag:{du_gui:1b}}}]

replaceitem block ~ ~ ~ container.0 minecraft:diamond_shovel{Unbreakable:1b,UIPart:1,Damage:207,HideFlags:63,display:{Name:"\"\""}}
