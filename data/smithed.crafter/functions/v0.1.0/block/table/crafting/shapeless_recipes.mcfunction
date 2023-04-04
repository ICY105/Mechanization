####################
# Shapeless recipes for crafting
####################

function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes/simplify
execute store result score count smithed.data if data storage smithed.crafter:main root.temp.shapeless_crafting_input[]

data modify storage smithed.crafter:input flags set value []
data remove storage smithed.crafter:input recipe
data modify storage smithed.crafter:input recipe set from storage smithed.crafter:main root.temp.shapeless_crafting_input

function #smithed.crafter:event/shapeless_recipes
