
# copy item data to storage
data modify storage mechanization:temp obj set value {id_grid:{}, item_grid:{}}

data modify storage mechanization:temp obj.item_grid.0 set from block ~ ~ ~ Items[{Slot:1b}]
execute unless data storage mechanization:temp obj.item_grid.0.tag.smithed.dict run data modify storage mechanization:temp obj.id_grid.0 set from storage mechanization:temp obj.item_grid.0.id
execute if data storage mechanization:temp obj.item_grid.0.tag.smithed.dict run data modify storage mechanization:temp obj.id_grid.0 set value "smithed:dict"
execute if data storage mechanization:temp obj.item_grid.0.tag.smithed.dict run data modify storage mechanization:temp obj.item_grid.0.id set value "smithed:dict"

data modify storage mechanization:temp obj.item_grid.1 set value {} 
data modify storage mechanization:temp obj.item_grid.1 set from block ~ ~ ~ Items[{Slot:7b}]
execute store result score #count mechanization.data run data get storage mechanization:temp obj.item_grid.1.Count
data remove storage mechanization:temp obj.item_grid.1.Count
data remove storage mechanization:temp obj.item_grid.1.Slot

# find possible recipes
function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.get_possible_recipes with storage mechanization:temp obj.id_grid

# loop over possible recipes until a valid one is found. Return if no recipes are valid
execute if data storage mechanization:temp list[0] run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.find_recipe with storage mechanization:temp list[0].input
execute unless data storage mechanization:temp list[0] run return fail

data modify storage mechanization:temp test set from storage mechanization:temp list

# check additional recipe requirements
execute if entity @s[tag=!mechanization.upgraded] if data storage mechanization:temp list[0].input{upgraded: 1b} run return fail

# determine if outputs match
data remove block -30000000 0 1602 Items
execute if data storage mechanization:temp list[0].output.0{type: "item"} run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.output_item with storage mechanization:temp list[0].output.0
execute if data storage mechanization:temp list[0].output.0{type: "loot_table"} run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.output_loot with storage mechanization:temp list[0].output.0

execute store result score #success mechanization.data run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.check_output with storage mechanization:temp obj.item_grid
execute unless score #success mechanization.data matches 1 run return fail

# set output item based on type
execute if score #count mechanization.data matches 0 run item replace block ~ ~ ~ container.7 from block -30000000 0 1602 container.0
execute if score #count mechanization.data matches 1.. run item modify block ~ ~ ~ container.7 mechanization:increment_count
item modify block ~ ~ ~ container.1 mechanization:decrement_count
scoreboard players set @s mechanization.data 0
