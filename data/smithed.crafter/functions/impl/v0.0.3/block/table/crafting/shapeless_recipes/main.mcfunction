
scoreboard players set $temp smithed.data 0
execute store result score $temp smithed.data if data storage smithed.crafter:main root.temp.shapeless_crafting_input[]

data modify storage smithed.crafter:main root.temp.simplified set value []

function smithed.crafter:impl/v0.0.3/block/table/crafting/shapeless_recipes/loop

data modify storage smithed.crafter:main root.temp.shapeless_crafting_input set from storage smithed.crafter:main root.temp.simplified
