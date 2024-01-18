
# copy item ids to storage and find possible recipes
data modify storage mechanization:temp obj set value {}
data modify storage mechanization:temp obj.0 set from block ~ ~ ~ Items[{Slot:1b}].id
function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.get_possible_recipes with storage mechanization:temp obj

# copy full item data to storage and loop over possible recipes until a valid one is found. Return if no recipes are valid
data modify storage mechanization:temp obj set value {}
data modify storage mechanization:temp obj.0 set from block ~ ~ ~ Items[{Slot:1b}]
execute if data storage mechanization:temp list[0] run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.find_recipe with storage mechanization:temp list[0].input
execute unless data storage mechanization:temp list[0] run return fail

# check additional recipe requirements
execute if entity @s[tag=!mechanization.upgraded] if data storage mechanization:temp list[0].input{upgraded: 1b} run return fail

# determine if outputs match
execute store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot: 7b}].Count
data remove block -30000000 0 1602 Items
execute if data storage mechanization:temp list[0].output.0{type: "item"} run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.output_item with storage mechanization:temp list[0].output.0
execute if data storage mechanization:temp list[0].output.0{type: "loot_table"} run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.output_loot with storage mechanization:temp list[0].output.0

data modify storage mechanization:temp obj set value {0:{}}
data modify storage mechanization:temp obj.0.id set from block ~ ~ ~ Items[{Slot:7b}].id
data modify storage mechanization:temp obj.0.tag set from block ~ ~ ~ Items[{Slot:7b}].tag
execute store result score #success mechanization.data run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.check_output with storage mechanization:temp obj
execute unless score #success mechanization.data matches 1 run return fail

# set output item based on type
execute if score #count mechanization.data matches 0 run item replace block ~ ~ ~ container.7 from block -30000000 0 1602 container.0
execute if score #count mechanization.data matches 1.. run item modify block ~ ~ ~ container.7 mechanization:increment_count
item modify block ~ ~ ~ container.1 mechanization:decrement_count
scoreboard players set @s mechanization.data 0
