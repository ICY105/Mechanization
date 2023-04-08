
execute if data storage fluid:io input.input_slot{id:"minecraft:water_bucket"} run scoreboard players set #slot_io.input_item fluid.data 2
execute if data storage fluid:io input.input_slot{id:"minecraft:potion"}.tag{Potion:"minecraft:water"} run scoreboard players set #slot_io.input_item fluid.data 3
execute if data storage fluid:io input.input_slot{id:"minecraft:lava_bucket"} run scoreboard players set #slot_io.input_item fluid.data 4
execute if data storage fluid:io input.input_slot{id:"minecraft:milk_bucket"} run scoreboard players set #slot_io.input_item fluid.data 5
execute if data storage fluid:io input.input_slot{id:"minecraft:powdered_snow_bucket"} run scoreboard players set #slot_io.input_item fluid.data 6
execute if data storage fluid:io input.input_slot{id:"minecraft:mushroom_stew"} run scoreboard players set #slot_io.input_item fluid.data 7
execute if data storage fluid:io input.input_slot{id:"minecraft:rabbit_stew"} run scoreboard players set #slot_io.input_item fluid.data 8
execute if data storage fluid:io input.input_slot{id:"minecraft:beetroot_soup"} run scoreboard players set #slot_io.input_item fluid.data 9
execute if data storage fluid:io input.input_slot{id:"minecraft:honey_bottle"} run scoreboard players set #slot_io.input_item fluid.data 10

execute if data storage fluid:io input.input_slot{id:"minecraft:bucket"} run scoreboard players set #slot_io.input_item fluid.data -2
execute if data storage fluid:io input.input_slot{id:"minecraft:glass_bottle"} run scoreboard players set #slot_io.input_item fluid.data -3
execute if data storage fluid:io input.input_slot{id:"minecraft:bowl"} run scoreboard players set #slot_io.input_item fluid.data -4

# copy fluid data
execute if score #slot_io.input_item fluid.data matches 2..3 run data modify storage fluid:io fluid2 set from storage fluid:definitions fluid_data[{id:"water"}]
execute if score #slot_io.input_item fluid.data matches 4 run data modify storage fluid:io fluid2 set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score #slot_io.input_item fluid.data matches 5 run data modify storage fluid:io fluid2 set from storage fluid:definitions fluid_data[{id:"milk"}]
execute if score #slot_io.input_item fluid.data matches 6 run data modify storage fluid:io fluid2 set from storage fluid:definitions fluid_data[{id:"powder_snow"}]
execute if score #slot_io.input_item fluid.data matches 7 run data modify storage fluid:io fluid2 set from storage fluid:definitions fluid_data[{id:"mushroom_stew"}]
execute if score #slot_io.input_item fluid.data matches 8 run data modify storage fluid:io fluid2 set from storage fluid:definitions fluid_data[{id:"rabbit_stew"}]
execute if score #slot_io.input_item fluid.data matches 9 run data modify storage fluid:io fluid2 set from storage fluid:definitions fluid_data[{id:"beetroot_soup"}]
execute if score #slot_io.input_item fluid.data matches 10 run data modify storage fluid:io fluid2 set from storage fluid:definitions fluid_data[{id:"honey"}]

# set IO amount
execute if score #slot_io.input_item fluid.data matches 2 run scoreboard players set #slot_io.input_amount fluid.data 1000
execute if score #slot_io.input_item fluid.data matches 3 run scoreboard players set #slot_io.input_amount fluid.data 333
execute if score #slot_io.input_item fluid.data matches 4..6 run scoreboard players set #slot_io.input_amount fluid.data 1000
execute if score #slot_io.input_item fluid.data matches 7..10 run scoreboard players set #slot_io.input_amount fluid.data 333

execute if score #slot_io.input_item fluid.data matches -2 run scoreboard players set #slot_io.output_amount fluid.data 1000
execute if score #slot_io.input_item fluid.data matches -4..-3 run scoreboard players set #slot_io.output_amount fluid.data 333
