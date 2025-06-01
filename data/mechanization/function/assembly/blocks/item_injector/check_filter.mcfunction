
setblock -30000000 2 3201 minecraft:yellow_shulker_box replace
data modify block -30000000 2 3201 Items set from entity @s Item.components."minecraft:custom_data".filter.components."minecraft:custom_data".mechanization.items

execute store result score #result mechanization.data run loot insert -30000000 2 3201 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score #result mechanization.data matches 0 run scoreboard players set #allowed mechanization.data 0
