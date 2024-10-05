
execute if items block ~ ~ ~ container.10 minecraft:bamboo run scoreboard players add @s mechanization.data 2
execute if items block ~ ~ ~ container.10 minecraft:stick run scoreboard players add @s mechanization.data 5
execute if items block ~ ~ ~ container.10 #minecraft:planks run scoreboard players add @s mechanization.data 15
execute if items block ~ ~ ~ container.10 #minecraft:logs run scoreboard players add @s mechanization.data 15

execute if items block ~ ~ ~ container.10 #minecraft:coals run scoreboard players add @s mechanization.data 80
execute if items block ~ ~ ~ container.10 minecraft:coal_block run scoreboard players add @s mechanization.data 800
execute if items block ~ ~ ~ container.10 minecraft:blaze_rod run scoreboard players add @s mechanization.data 120
execute if items block ~ ~ ~ container.10 minecraft:dried_kelp_block run scoreboard players add @s mechanization.data 200

execute if score @s mechanization.data matches 1.. run item modify block ~ ~ ~ container.10 mechanization:decrement_count
