

data modify storage fluid:io input set value {input_slot:{},output_slot:{}}
data modify storage fluid:io input.input_slot set from block ~ ~ ~ Items[{Slot:5b}]
data modify storage fluid:io input.output_slot set from block ~ ~ ~ Items[{Slot:23b}]

function fluid:v1/api/slot_io

item replace block ~ ~ ~ container.5 with minecraft:air
item replace block ~ ~ ~ container.23 with minecraft:air
execute if data storage fluid:io output.input_slot.id run data modify storage fluid:io output.input_slot.Slot set value 5b
execute if data storage fluid:io output.input_slot.id run data modify block ~ ~ ~ Items append from storage fluid:io output.input_slot
execute if data storage fluid:io output.output_slot.id run data modify storage fluid:io output.output_slot.Slot set value 23b
execute if data storage fluid:io output.output_slot.id run data modify block ~ ~ ~ Items append from storage fluid:io output.output_slot
