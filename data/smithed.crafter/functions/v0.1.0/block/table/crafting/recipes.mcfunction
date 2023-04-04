####################
# Recipes for crafting
####################
data modify storage smithed.crafter:input flags set value []
data remove storage smithed.crafter:input recipe
data modify storage smithed.crafter:input recipe set from storage smithed.crafter:main root.temp.crafting_input
function #smithed.crafter:event/recipes
