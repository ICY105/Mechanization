
# example item registry entries:
# data modify storage mechanization:registry recipes.alchemy_chamber append value {
#     input:{flux: 30, upgraded: 0, 0: {id: "minecraft:copper_ingot"}},
#     output:{0:{type: "item", stacksize: 64, id:"minecraft:iron_ingot"}}
# }
# data modify storage mechanization:registry recipes.alchemy_chamber append value {
#     input:{flux: 40, upgraded: 0, 0: {id: "minecraft:iron_ingot"}},
#     output:{0:{type: "loot_table", stacksize: 64, id:"mechanization:base/tin_ingot"}}
# }
# data modify storage mechanization:registry recipes.alchemy_chamber append value {
#     input:{flux: 50, upgraded: 0, 0: {id: "minecraft:structure_block", tag:{smithed:{dict:{ingot:{tin: 1b}}}}}},
#     output:{0:{type: "item", stacksize: 64, id:"minecraft:gold_ingot"}}
# }

# copy item ids to storage and find possible recipes
data modify storage mechanization:temp obj set value {}
data modify storage mechanization:temp obj.0 set from block ~ ~ ~ Items[{Slot:1b}].id
function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.get_possible_recipes with storage mechanization:temp obj

# copy full item data to storage and loop over possible recipes until a valid one is found. Return if no recipes are valid
data modify storage mechanization:temp obj set value {}
data modify storage mechanization:temp obj.0 set from block ~ ~ ~ Items[{Slot:1b}]
execute if data storage mechanization:temp list[0] run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.find_recipe with storage mechanization:temp list[0].input
execute unless data storage mechanization:temp list[0] run return fail

# check if upgrade is needed, then set recipe flux amount
execute if entity @s[tag=!mechanization.upgraded] if data storage mechanization:temp list[0].input{upgraded: 1b} run return fail
execute store result score @s mechanization.time run data get storage mechanization:temp list[0].input.flux
