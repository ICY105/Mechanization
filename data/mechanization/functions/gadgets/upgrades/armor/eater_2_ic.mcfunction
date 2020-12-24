
data modify storage cook:temp list set value []
data modify storage cook:temp list append from entity @s Inventory[{tag:{cook:{}}}]

execute store result score $in_0 cook_data run data get storage cook:temp list[0].tag.cook.food
execute store result score $in_1 cook_data run data get storage cook:temp list[0].tag.cook.quality
function cook:player/custom_food

clear @s #cook:custom_food_items{cook:{}} 1
