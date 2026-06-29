
#> heat: amount of fluid to heat
#> heat_total: total heat disappated for all function calls

# modify block
scoreboard players set #level mechanization.data 8
execute if block ~ ~ ~ minecraft:water[level=7] run scoreboard players set #level mechanization.data 1
execute if block ~ ~ ~ minecraft:water[level=6] run scoreboard players set #level mechanization.data 2
execute if block ~ ~ ~ minecraft:water[level=5] run scoreboard players set #level mechanization.data 3
execute if block ~ ~ ~ minecraft:water[level=4] run scoreboard players set #level mechanization.data 4
execute if block ~ ~ ~ minecraft:water[level=3] run scoreboard players set #level mechanization.data 5
execute if block ~ ~ ~ minecraft:water[level=2] run scoreboard players set #level mechanization.data 6
execute if block ~ ~ ~ minecraft:water[level=1] run scoreboard players set #level mechanization.data 7

execute if score #heat mechanization.data > #level mechanization.data run scoreboard players operation #heat mechanization.data = #level mechanization.data
scoreboard players operation #level mechanization.data -= #heat mechanization.data

execute if score #level mechanization.data matches 7 run setblock ~ ~ ~ minecraft:water[level=1]
execute if score #level mechanization.data matches 6 run setblock ~ ~ ~ minecraft:water[level=2]
execute if score #level mechanization.data matches 5 run setblock ~ ~ ~ minecraft:water[level=3]
execute if score #level mechanization.data matches 4 run setblock ~ ~ ~ minecraft:water[level=4]
execute if score #level mechanization.data matches 3 run setblock ~ ~ ~ minecraft:water[level=5]
execute if score #level mechanization.data matches 2 run setblock ~ ~ ~ minecraft:water[level=6]
execute if score #level mechanization.data matches 1 run setblock ~ ~ ~ minecraft:water[level=7]
execute if score #level mechanization.data matches 0 run setblock ~ ~ ~ minecraft:air

# transfer heat
scoreboard players operation #heat_total mechanization.data += #heat mechanization.data
execute if score #heat mechanization.data matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run function mechanization:nuclear/blocks/reactor_core/steam_cloud/summon
