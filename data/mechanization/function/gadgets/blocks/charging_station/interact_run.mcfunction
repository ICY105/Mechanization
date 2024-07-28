
scoreboard players set #loop mechanization.data -1

execute if data entity @s item{id:"minecraft:air"} run scoreboard players set #state mechanization.data 2
execute if score #state mechanization.data matches 1 unless data entity @s item{id:"minecraft:air"} run scoreboard players set #state mechanization.data 3

execute if score #state mechanization.data matches 2 run item replace entity @s container.0 from block -30000000 0 3201 container.0
execute if score #state mechanization.data matches 3 run item replace block -30000000 0 3201 container.0 from entity @s container.0
execute if score #state mechanization.data matches 3 run item replace entity @s container.0 with minecraft:air
