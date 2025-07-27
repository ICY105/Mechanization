
particle minecraft:dust{color:[1,0,0],scale:1} ~ ~3.5 ~

execute if score #counter mechanization.data matches 0 if block ~ ~-1 ~ minecraft:light_gray_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 1 if block ~ ~-1 ~ minecraft:gray_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 2 if block ~ ~-1 ~ minecraft:black_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 3 if block ~ ~-1 ~ minecraft:brown_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 4 if block ~ ~-1 ~ minecraft:red_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 5 if block ~ ~-1 ~ minecraft:orange_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 6 if block ~ ~-1 ~ minecraft:yellow_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 7 if block ~ ~-1 ~ minecraft:lime_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 8 if block ~ ~-1 ~ minecraft:green_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 9 if block ~ ~-1 ~ minecraft:cyan_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 10 if block ~ ~-1 ~ minecraft:light_blue_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 11 if block ~ ~-1 ~ minecraft:blue_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 12 if block ~ ~-1 ~ minecraft:purple_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 13 if block ~ ~-1 ~ minecraft:magenta_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 14 if block ~ ~-1 ~ minecraft:pink_wool run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~
execute if score #counter mechanization.data matches 15.. unless block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~-0.5 ~

data modify storage mechanization:temp obj.data set value {}

execute if score #pos.y mechanization.data matches 0 run function mechanization:nuclear/test/m.get_x_data with storage mechanization:temp obj
execute if score #pos.x mechanization.data matches 0 unless score #pos.y mechanization.data matches 0 run function mechanization:nuclear/test/m.get_y_data with storage mechanization:temp obj

execute if score #debug mechanization.data matches 1 run tellraw @p [{"score":{"name":"#pos.x","objective":"mechanization.data"}},{"text":" - "},{"score":{"name":"#pos.y","objective":"mechanization.data"}}]

execute store result score #temp mechanization.data run data get storage mechanization:temp obj.data.x 1000
scoreboard players operation #pos.x mechanization.data += #temp mechanization.data
execute if score #pos.x mechanization.data matches 1000.. run scoreboard players remove #pos.x mechanization.data 1000
execute if score #pos.x mechanization.data matches ..-1 run scoreboard players add #pos.x mechanization.data 1000
execute store result storage mechanization:temp obj.x int 1 run scoreboard players get #pos.x mechanization.data

execute store result score #temp mechanization.data run data get storage mechanization:temp obj.data.y 1000
scoreboard players operation #pos.y mechanization.data += #temp mechanization.data
execute if score #pos.y mechanization.data matches 1000.. run scoreboard players remove #pos.y mechanization.data 1000
execute if score #pos.y mechanization.data matches ..-1 run scoreboard players add #pos.y mechanization.data 1000
execute store result storage mechanization:temp obj.y int 1 run scoreboard players get #pos.y mechanization.data

execute if score #debug mechanization.data matches 1 run tellraw @p [{"score":{"name":"#pos.x","objective":"mechanization.data"}},{"text":" - "},{"score":{"name":"#pos.y","objective":"mechanization.data"}},{"text":" - "},{"nbt":"obj.data","storage":"mechanization:temp"}]

execute unless data storage mechanization:temp obj.data.d run return 0

scoreboard players add #counter mechanization.data 1
data modify storage mechanization:temp obj.d set from storage mechanization:temp obj.data.d
execute if score #counter mechanization.data < #loop mechanization.data run function mechanization:nuclear/test/scan_2 with storage mechanization:temp obj
