
scoreboard players set #success fluid.data 0

# check for fluid equivalence
execute if score #slot_io.storage fluid.data matches 1.. run data modify storage fluid:io id set from storage fluid:io fluid2.id
execute if score #slot_io.storage fluid.data matches 1.. run function fluid:v1.2/utils/check_id
execute if score #slot_io.storage fluid.data matches 1.. if score #utils.out fluid.data matches 0 run scoreboard players set #success fluid.data -1

# bucket
execute if score #slot_io.input_item fluid.data matches 2..5 if score #success fluid.data matches 0 run scoreboard players set #success fluid.data 1
execute if score #slot_io.input_item fluid.data matches 2..5 if score #success fluid.data matches 1 if score #slot_io.output_count fluid.data matches 16.. run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 2..5 if score #success fluid.data matches 1 if score #slot_io.output_count fluid.data matches 1.. unless data storage fluid:io output.output_slot{id:"minecraft:bucket"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 2..5 if score #success fluid.data matches 1 if score #slot_io.input_item fluid.data matches 2 if score #slot_io.storage fluid.data matches 1.. unless data storage fluid:io fluid{id:"water"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 2..5 if score #success fluid.data matches 1 if score #slot_io.input_item fluid.data matches 3 if score #slot_io.storage fluid.data matches 1.. unless data storage fluid:io fluid{id:"lava"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 2..5 if score #success fluid.data matches 1 if score #slot_io.input_item fluid.data matches 4 if score #slot_io.storage fluid.data matches 1.. unless data storage fluid:io fluid{id:"milk"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 2..5 if score #success fluid.data matches 1 if score #slot_io.input_item fluid.data matches 5 if score #slot_io.storage fluid.data matches 1.. unless data storage fluid:io fluid{id:"powder_snow"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 2..5 if score #success fluid.data matches 1 if score #slot_io.output_count fluid.data matches 0 run data modify storage fluid:io output.output_slot set value {id:"minecraft:bucket", Count:1b}

# glass bottle
execute if score #slot_io.input_item fluid.data matches 9..10 if score #success fluid.data matches 0 run scoreboard players set #success fluid.data 1
execute if score #slot_io.input_item fluid.data matches 9..10 if score #success fluid.data matches 1 if score #slot_io.output_count fluid.data matches 64.. run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 9..10 if score #success fluid.data matches 1 if score #slot_io.output_count fluid.data matches 1.. unless data storage fluid:io output.output_slot{id:"minecraft:glass_bottle"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 9..10 if score #success fluid.data matches 1 if score #slot_io.input_item fluid.data matches 9 if score #slot_io.storage fluid.data matches 1.. unless data storage fluid:io fluid{id:"honey"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 9..10 if score #success fluid.data matches 1 if score #slot_io.input_item fluid.data matches 10 if score #slot_io.storage fluid.data matches 1.. unless data storage fluid:io fluid{id:"water"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 9..10 if score #success fluid.data matches 1 if score #slot_io.output_count fluid.data matches 0 run data modify storage fluid:io output.output_slot set value {id:"minecraft:glass_bottle", Count:1b}

# bowl
execute if score #slot_io.input_item fluid.data matches 6..8 if score #success fluid.data matches 0 run scoreboard players set #success fluid.data 1
execute if score #slot_io.input_item fluid.data matches 6..8 if score #success fluid.data matches 1 if score #slot_io.output_count fluid.data matches 16.. run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 6..8 if score #success fluid.data matches 1 if score #slot_io.output_count fluid.data matches 1.. unless data storage fluid:io output.output_slot{id:"minecraft:bowl"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 6..8 if score #success fluid.data matches 1 if score #slot_io.input_item fluid.data matches 6 if score #slot_io.storage fluid.data matches 1.. unless data storage fluid:io fluid{id:"mushroom_stew"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 6..8 if score #success fluid.data matches 1 if score #slot_io.input_item fluid.data matches 7 if score #slot_io.storage fluid.data matches 1.. unless data storage fluid:io fluid{id:"rabbit_stew"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 6..8 if score #success fluid.data matches 1 if score #slot_io.input_item fluid.data matches 8 if score #slot_io.storage fluid.data matches 1.. unless data storage fluid:io fluid{id:"beetroot_soup"} run scoreboard players set #success fluid.data 0
execute if score #slot_io.input_item fluid.data matches 6..8 if score #success fluid.data matches 1 if score #slot_io.output_count fluid.data matches 0 run data modify storage fluid:io output.output_slot set value {id:"minecraft:bowl", Count:1b}

# store data
execute if score #success fluid.data matches 1 unless data storage fluid:io fluid.id run data modify storage fluid:io fluid set from storage fluid:io fluid2
execute if score #success fluid.data matches 1 run scoreboard players remove #slot_io.input_count fluid.data 1
execute if score #success fluid.data matches 1 run scoreboard players add #slot_io.output_count fluid.data 1
execute if score #success fluid.data matches 1 run scoreboard players operation #slot_io.storage fluid.data += #slot_io.input_amount fluid.data

# correct for 1/3 items
execute if score #success fluid.data matches 1 run scoreboard players operation #temp fluid.data = #slot_io.storage fluid.data
execute if score #success fluid.data matches 1 run scoreboard players operation #temp fluid.data %= #cons.1000 fluid.data
execute if score #success fluid.data matches 1 if score #slot_io.input_amount fluid.data matches 333 if score #temp fluid.data matches 999 run scoreboard players add #slot_io.storage fluid.data 1
