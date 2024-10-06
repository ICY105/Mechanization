
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run function mechanization:machines/blocks/reformer/m.hopper_input {location:"~ ~1 ~"}
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run function mechanization:machines/blocks/reformer/m.hopper_input {location:"~1 ~ ~"}
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run function mechanization:machines/blocks/reformer/m.hopper_input {location:"~-1 ~ ~"}
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run function mechanization:machines/blocks/reformer/m.hopper_input {location:"~ ~ ~1"}
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run function mechanization:machines/blocks/reformer/m.hopper_input {location:"~ ~ ~-1"}

# repair
item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422010}

function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 128.. if score @s fluid.storage.0 matches 1.. if items block ~ ~ ~ container.12 * run function mechanization:machines/blocks/reformer/repair

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t2
