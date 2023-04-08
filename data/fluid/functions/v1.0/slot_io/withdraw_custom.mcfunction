
# modify item data
data modify storage fluid:io output.output_slot set from storage fluid:io output.input_slot
data remove storage fluid:io output.input_slot

data modify storage fluid:io output.output_slot.tag.fluid merge from storage fluid:io fluid
execute store result storage fluid:io output.output_slot.tag.fluid.storage int 1 run scoreboard players get #slot_io.output_amount fluid.data
function #fluid:v1/modify_fluid_item

# modify data
scoreboard players remove #slot_io.input_count fluid.data 1
scoreboard players add #slot_io.output_count fluid.data 1
scoreboard players operation #slot_io.storage fluid.data -= #slot_io.output_amount fluid.data

# correct for 1/3 items
scoreboard players operation #temp fluid.data = #slot_io.storage fluid.data
scoreboard players operation #temp fluid.data %= #cons.1000 fluid.data
execute if score #slot_io.output_amount fluid.data matches 333 if score #temp fluid.data matches 667 run scoreboard players remove #slot_io.storage fluid.data 1
