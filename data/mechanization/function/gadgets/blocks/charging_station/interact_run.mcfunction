
scoreboard players set #loop mechanization.data -1

execute if items block -30000000 0 3201 container.0 * run scoreboard players set #state mechanization.data 2
execute on passengers run scoreboard players set #state mechanization.data 3

execute if score #state mechanization.data matches 2 run tag @s add mechanization.temp
execute if score #state mechanization.data matches 2 summon minecraft:item_display run ride @s mount @n[type=minecraft:item_display,distance=..1,tag=mechanization.temp]
execute if score #state mechanization.data matches 2 on passengers run data merge entity @s {Tags:["mechanization", "mechanization.charging_station.model", "mechanization.has_block_hitbox"],transformation:{left_rotation:[0.7f,0f,0f,0.7f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0.75f,0.75f,0.75f]}}
execute if score #state mechanization.data matches 2 on passengers run item replace entity @s contents from block -30000000 0 3201 container.0
execute if score #state mechanization.data matches 2 run tag @s remove mechanization.temp

execute if score #state mechanization.data matches 3 on passengers run item replace block -30000000 0 3201 container.0 from entity @s contents
execute if score #state mechanization.data matches 3 on passengers run item replace entity @s contents with minecraft:air
execute if score #state mechanization.data matches 3 on passengers run kill @s
