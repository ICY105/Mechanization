####################
# Counts all items in player's inventory
####################

tag @s remove smithed.shift_clicked
scoreboard players reset $temp smithed.data
scoreboard players reset $temp1 smithed.data
data modify storage smithed.crafter:main root.temp.Inventory set from entity @s Inventory
execute store result score @s smithed.data run data get entity @s Inventory
function smithed.crafter:impl/v0.0.3/block/table/crafting/output/cursor_check/loop
execute store result score @s smithed.data run clear @s #smithed.crafter:all 0
execute if score $temp1 smithed.data = @s smithed.data run tag @s add smithed.shift_clicked
