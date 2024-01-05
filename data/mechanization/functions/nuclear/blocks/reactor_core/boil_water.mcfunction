
#> heat: amount of fluid to heat
#> heat_total: total heat disappated for all function calls

# calc heat transfer
scoreboard players operation #transfer mechanization.data = #heat mechanization.data
execute if score #transfer mechanization.data matches 9.. run scoreboard players set #transfer mechanization.data 8

execute if score #transfer mechanization.data matches 2.. if block ~ ~ ~ water[level=7] run scoreboard players set #transfer mechanization.data 1
execute if score #transfer mechanization.data matches 3.. if block ~ ~ ~ water[level=6] run scoreboard players set #transfer mechanization.data 2
execute if score #transfer mechanization.data matches 4.. if block ~ ~ ~ water[level=5] run scoreboard players set #transfer mechanization.data 3
execute if score #transfer mechanization.data matches 5.. if block ~ ~ ~ water[level=4] run scoreboard players set #transfer mechanization.data 4
execute if score #transfer mechanization.data matches 6.. if block ~ ~ ~ water[level=3] run scoreboard players set #transfer mechanization.data 5
execute if score #transfer mechanization.data matches 7.. if block ~ ~ ~ water[level=2] run scoreboard players set #transfer mechanization.data 6
execute if score #transfer mechanization.data matches 8.. if block ~ ~ ~ water[level=1] run scoreboard players set #transfer mechanization.data 7

# transfer heat
execute if score #transfer mechanization.data matches 1.. run setblock ~ ~ ~ minecraft:air replace
scoreboard players operation #total_heat mechanization.data += #transfer mechanization.data
execute if score #transfer mechanization.data matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run function mechanization:nuclear/blocks/reactor_core/steam_cloud/summon
