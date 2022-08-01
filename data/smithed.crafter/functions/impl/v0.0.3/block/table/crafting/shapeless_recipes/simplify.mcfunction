data modify storage smithed.crafter:main root.temp.shapeless_crafting_input set from storage smithed.crafter:main root.temp.crafting_input.0
data modify storage smithed.crafter:main root.temp.shapeless_crafting_input append from storage smithed.crafter:main root.temp.crafting_input.1[]
data modify storage smithed.crafter:main root.temp.shapeless_crafting_input append from storage smithed.crafter:main root.temp.crafting_input.2[]

execute if data storage smithed.crafter:main root.temp.shapeless_crafting_input[] run function smithed.crafter:impl/v0.0.3/block/table/crafting/shapeless_recipes/main
