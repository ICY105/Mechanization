data modify storage smithed.crafter:main root.temp.a set from storage smithed.crafter:main root.temp.shapeless_crafting_input[-1]
data remove storage smithed.crafter:main root.temp.a.Slot
data remove storage smithed.crafter:main root.temp.a.Count
data remove storage smithed.crafter:main root.temp.shapeless_crafting_input[-1]

execute store result score $temp4 smithed.data if data storage smithed.crafter:main root.temp.simplified[]
scoreboard players remove $temp smithed.data 1

scoreboard players set $temp1 smithed.data 1

execute if score $temp4 smithed.data matches 1.. if score $temp1 smithed.data matches 1 run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/checks/0
execute if score $temp4 smithed.data matches 2.. if score $temp1 smithed.data matches 1 run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/checks/1
execute if score $temp4 smithed.data matches 3.. if score $temp1 smithed.data matches 1 run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/checks/2
execute if score $temp4 smithed.data matches 4.. if score $temp1 smithed.data matches 1 run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/checks/3
execute if score $temp4 smithed.data matches 5.. if score $temp1 smithed.data matches 1 run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/checks/4
execute if score $temp4 smithed.data matches 6.. if score $temp1 smithed.data matches 1 run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/checks/5
execute if score $temp4 smithed.data matches 7.. if score $temp1 smithed.data matches 1 run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/checks/6
execute if score $temp4 smithed.data matches 8.. if score $temp1 smithed.data matches 1 run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/checks/7
execute if score $temp4 smithed.data matches 9.. if score $temp1 smithed.data matches 1 run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/checks/8

execute if score $temp1 smithed.data matches 1 unless data storage smithed.crafter:main root.temp.a{id: "minecraft:air"} run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/append

execute if data storage smithed.crafter:main root.temp.shapeless_crafting_input[] run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/loop
