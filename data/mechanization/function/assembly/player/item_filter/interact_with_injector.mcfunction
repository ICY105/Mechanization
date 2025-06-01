
advancement revoke @s only mechanization:triggers/interact_with_injector
tag @s add mechanization.interact

scoreboard players set #success mechanization.data 0

item replace block -30000000 0 1602 container.0 with minecraft:air
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"item_filter"}}] run item replace block -30000000 0 1602 container.0 from entity @s weapon.mainhand
execute as @n[type=minecraft:interaction,tag=mechanization.item_injector.hit_box,nbt={interaction: {}}] at @s positioned ~ ~0.375 ~ as @n[tag=mechanization.item_injector,distance=..0.01] run function mechanization:assembly/player/item_filter/interact_2
execute as @n[type=minecraft:interaction,tag=mechanization.item_injector.hit_box,nbt={interaction: {}}] run data remove entity @s interaction

execute if score #success mechanization.data matches 1 run item replace entity @s weapon.mainhand with minecraft:air

tag @s remove mechanization.interact
