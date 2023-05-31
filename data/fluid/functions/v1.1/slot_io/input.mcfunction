#
# Generates slot IO interactions- ie. place a water bucket in the input slot, and the tank should fill
# with water and output an empty bucket.
#
# > storage fluid:io input:{input_slot:{<item>}, output_slot:{<item>}}
# > score #slot_io.in fluid.data: tank slot to alter
# < storage fluid:io output:{input_slot:{<item>}, output_slot:{<item>}}
#

# store data
data modify storage fluid:io output.input_slot set from storage fluid:io input.input_slot
data modify storage fluid:io output.output_slot set from storage fluid:io input.output_slot

function fluid:v1.1/utils/get_fluids

execute if score #slot_io.in fluid.data matches 0 run scoreboard players operation #slot_io.storage fluid.data = @s fluid.storage.0
execute if score #slot_io.in fluid.data matches 1 run scoreboard players operation #slot_io.storage fluid.data = @s fluid.storage.1
execute if score #slot_io.in fluid.data matches 2 run scoreboard players operation #slot_io.storage fluid.data = @s fluid.storage.2
execute if score #slot_io.in fluid.data matches 3 run scoreboard players operation #slot_io.storage fluid.data = @s fluid.storage.3

execute if score #slot_io.in fluid.data matches 0 run scoreboard players operation #slot_io.max_storage fluid.data = @s fluid.max_storage.0
execute if score #slot_io.in fluid.data matches 1 run scoreboard players operation #slot_io.max_storage fluid.data = @s fluid.max_storage.1
execute if score #slot_io.in fluid.data matches 2 run scoreboard players operation #slot_io.max_storage fluid.data = @s fluid.max_storage.2
execute if score #slot_io.in fluid.data matches 3 run scoreboard players operation #slot_io.max_storage fluid.data = @s fluid.max_storage.3

data modify storage fluid:io fluid set value {}
execute if score #slot_io.storage fluid.data matches 1.. if score #slot_io.in fluid.data matches 0 run data modify storage fluid:io fluid set from storage fluid:io fluids[0]
execute if score #slot_io.storage fluid.data matches 1.. if score #slot_io.in fluid.data matches 1 run data modify storage fluid:io fluid set from storage fluid:io fluids[1]
execute if score #slot_io.storage fluid.data matches 1.. if score #slot_io.in fluid.data matches 2 run data modify storage fluid:io fluid set from storage fluid:io fluids[2]
execute if score #slot_io.storage fluid.data matches 1.. if score #slot_io.in fluid.data matches 3 run data modify storage fluid:io fluid set from storage fluid:io fluids[3]

# get output slot item
scoreboard players set #slot_io.output_item fluid.data 0
execute if data storage fluid:io input.output_slot.id run scoreboard players set #slot_io.output_item fluid.data 1
execute if data storage fluid:io input.output_slot{id:"minecraft:bucket"} run scoreboard players set #slot_io.output_item fluid.data 2
execute if data storage fluid:io input.output_slot{id:"minecraft:glass_bottle"} run scoreboard players set #slot_io.output_item fluid.data 3
execute if data storage fluid:io input.output_slot{id:"minecraft:bowl"} run scoreboard players set #slot_io.output_item fluid.data 4

execute store result score #slot_io.output_count fluid.data run data get storage fluid:io input.output_slot.Count

# compute available space
scoreboard players operation #slot_io.available_storage fluid.data = #slot_io.max_storage fluid.data
scoreboard players operation #slot_io.available_storage fluid.data -= #slot_io.storage fluid.data

# get input item
scoreboard players set #slot_io.input_item fluid.data 0

execute if data storage fluid:io input.input_slot.tag.fluid run scoreboard players set #slot_io.input_item fluid.data -1
execute if score #slot_io.input_item fluid.data matches -1 store result score #slot_io.output_amount fluid.data run data get storage fluid:io input.input_slot.tag.fluid.max_storage
execute if score #slot_io.input_item fluid.data matches -1 if score #slot_io.output_amount fluid.data > #slot_io.storage fluid.data if data storage fluid:io input.input_slot.tag.fluid{fixed_storage:0b} run scoreboard players operation #slot_io.output_amount fluid.data = #slot_io.storage fluid.data

execute if data storage fluid:io input.input_slot.tag.fluid.id run scoreboard players set #slot_io.input_item fluid.data 1
execute if score #slot_io.input_item fluid.data matches 1 run data modify storage fluid:io fluid2 set from storage fluid:io input.input_slot.tag.fluid
execute if score #slot_io.input_item fluid.data matches 1 store result score #slot_io.item_storage fluid.data run data get storage fluid:io input.input_slot.tag.fluid.storage
execute if score #slot_io.input_item fluid.data matches 1 run scoreboard players operation #slot_io.input_amount fluid.data = #slot_io.item_storage fluid.data
execute if score #slot_io.input_item fluid.data matches 1 if score #slot_io.input_amount fluid.data > #slot_io.available_storage fluid.data if data storage fluid:io input.input_slot.tag.fluid{fixed_storage:0b} run scoreboard players operation #slot_io.input_amount fluid.data = #slot_io.available_storage fluid.data
execute if score #slot_io.input_item fluid.data matches 1 run data modify storage fluid:io fluid2 set from storage fluid:io input.input_slot.tag.fluid
execute if score #slot_io.input_item fluid.data matches 1 run data remove storage fluid:io fluid2.storage
execute if score #slot_io.input_item fluid.data matches 1 run data remove storage fluid:io fluid2.max_storage
execute if score #slot_io.input_item fluid.data matches 1 run data remove storage fluid:io fluid2.fixed_storage

execute if score #slot_io.input_item fluid.data matches 0 run function fluid:v1.1/slot_io/get_vanilla_item
execute store result score #slot_io.input_count fluid.data run data get storage fluid:io input.input_slot.Count

# split
execute if score #slot_io.input_item fluid.data matches -1 if score #slot_io.output_count fluid.data matches 0 if score #slot_io.output_count fluid.data matches 0 if score #slot_io.storage fluid.data >= #slot_io.output_amount fluid.data run function fluid:v1.1/slot_io/withdraw_custom
execute if score #slot_io.input_item fluid.data matches 1 if score #slot_io.output_count fluid.data matches 0 if score #slot_io.available_storage fluid.data >= #slot_io.input_amount fluid.data run function fluid:v1.1/slot_io/deposit_custom

execute if score #slot_io.input_item fluid.data matches ..-2 if score #slot_io.output_count fluid.data matches 0 if score #slot_io.storage fluid.data >= #slot_io.output_amount fluid.data run function fluid:v1.1/slot_io/withdraw_vanilla
execute if score #slot_io.input_item fluid.data matches 2.. if score #slot_io.available_storage fluid.data >= #slot_io.input_amount fluid.data run function fluid:v1.1/slot_io/deposit_vanilla

# store result
execute if score #slot_io.in fluid.data matches 0 run scoreboard players operation @s fluid.storage.0 = #slot_io.storage fluid.data
execute if score #slot_io.in fluid.data matches 1 run scoreboard players operation @s fluid.storage.1 = #slot_io.storage fluid.data
execute if score #slot_io.in fluid.data matches 2 run scoreboard players operation @s fluid.storage.2 = #slot_io.storage fluid.data
execute if score #slot_io.in fluid.data matches 3 run scoreboard players operation @s fluid.storage.3 = #slot_io.storage fluid.data

execute if score #slot_io.in fluid.data matches 0 if score #slot_io.storage fluid.data matches 0 run data modify storage fluid:io fluids[0] set value {}
execute if score #slot_io.in fluid.data matches 1 if score #slot_io.storage fluid.data matches 0 run data modify storage fluid:io fluids[1] set value {}
execute if score #slot_io.in fluid.data matches 2 if score #slot_io.storage fluid.data matches 0 run data modify storage fluid:io fluids[2] set value {}
execute if score #slot_io.in fluid.data matches 3 if score #slot_io.storage fluid.data matches 0 run data modify storage fluid:io fluids[3] set value {}

execute if score #slot_io.in fluid.data matches 0 if score #slot_io.storage fluid.data matches 1.. run data modify storage fluid:io fluids[0] set from storage fluid:io fluid
execute if score #slot_io.in fluid.data matches 1 if score #slot_io.storage fluid.data matches 1.. run data modify storage fluid:io fluids[1] set from storage fluid:io fluid
execute if score #slot_io.in fluid.data matches 2 if score #slot_io.storage fluid.data matches 1.. run data modify storage fluid:io fluids[2] set from storage fluid:io fluid
execute if score #slot_io.in fluid.data matches 3 if score #slot_io.storage fluid.data matches 1.. run data modify storage fluid:io fluids[3] set from storage fluid:io fluid

execute if score #slot_io.input_count fluid.data matches 0 run data modify storage fluid:io output.input_slot set value {}
execute if score #slot_io.input_count fluid.data matches 1.. store result storage fluid:io output.input_slot.Count byte 1 run scoreboard players get #slot_io.input_count fluid.data

execute if score #slot_io.output_count fluid.data matches 0 run data modify storage fluid:io output.output_slot set value {}
execute if score #slot_io.output_count fluid.data matches 1.. store result storage fluid:io output.output_slot.Count byte 1 run scoreboard players get #slot_io.output_count fluid.data

function fluid:v1.1/utils/store_fluids
