
scoreboard players set #success fluid.data 1

# check for fluid equivalence
execute if score #slot_io.storage fluid.data matches 1.. run data modify storage fluid:io id set from storage fluid:io fluid2.id
execute if score #slot_io.storage fluid.data matches 1.. run function fluid:v1.3/utils/check_id
execute if score #slot_io.storage fluid.data matches 1.. if score #utils.out fluid.data matches 0 run scoreboard players set #success fluid.data 0

# modify item
scoreboard players operation #slot_io.storage_left fluid.data = #slot_io.item_storage fluid.data
scoreboard players operation #slot_io.storage_left fluid.data -= #slot_io.input_amount fluid.data

execute if score #success fluid.data matches 1 run data modify storage fluid:io output.output_slot set from storage fluid:io output.input_slot
execute if score #success fluid.data matches 1 run data remove storage fluid:io output.input_slot
execute if score #success fluid.data matches 1 if score #slot_io.storage_left fluid.data matches 0 run data remove storage fluid:io output.output_slot.tag.fluid.id
execute if score #success fluid.data matches 1 if score #slot_io.storage_left fluid.data matches 0 run data remove storage fluid:io output.output_slot.tag.fluid.temperature
execute if score #success fluid.data matches 1 if score #slot_io.storage_left fluid.data matches 0 run data remove storage fluid:io output.output_slot.tag.fluid.color
execute if score #success fluid.data matches 1 if score #slot_io.storage_left fluid.data matches 0 run data remove storage fluid:io output.output_slot.tag.fluid.gas
execute if score #success fluid.data matches 1 if score #slot_io.storage_left fluid.data matches 0 run data remove storage fluid:io output.output_slot.tag.fluid.name
execute if score #success fluid.data matches 1 store result storage fluid:io output.output_slot.tag.fluid.storage int 1 run scoreboard players get #slot_io.storage_left fluid.data
execute if score #success fluid.data matches 1 run function #fluid:v1/modify_fluid_item

# store data
execute if score #success fluid.data matches 1 unless data storage fluid:io fluid.id run data modify storage fluid:io fluid set from storage fluid:io fluid2
execute if score #success fluid.data matches 1 run scoreboard players remove #slot_io.input_count fluid.data 1
execute if score #success fluid.data matches 1 run scoreboard players add #slot_io.output_count fluid.data 1
execute if score #success fluid.data matches 1 run scoreboard players operation #slot_io.storage fluid.data += #slot_io.input_amount fluid.data

# correct for 1/3 items
execute if score #success fluid.data matches 1 run scoreboard players operation #temp fluid.data = #slot_io.storage fluid.data
execute if score #success fluid.data matches 1 run scoreboard players operation #temp fluid.data %= #cons.1000 fluid.data
execute if score #success fluid.data matches 1 if score #slot_io.input_amount fluid.data matches 333 if score #temp fluid.data matches 999 run scoreboard players add #slot_io.storage fluid.data 1
