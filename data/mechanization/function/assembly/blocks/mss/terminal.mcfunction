
# hoppers
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 30

# insert item
execute if block ~ ~ ~ minecraft:barrel[open=false] if items block ~ ~ ~ container.* * run function mechanization:assembly/blocks/mss/gui/inject_item_offline

# set block display
execute if block ~ ~ ~ minecraft:barrel[open=false] run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[0]}}}
execute if block ~ ~ ~ minecraft:barrel[open=true] run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[1]}}}

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run kill @e[type=minecraft:item,distance=..0.5]
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t3
