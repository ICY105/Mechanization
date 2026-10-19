
# hoppers
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 30

# insert item
execute if block ~ ~ ~ minecraft:barrel[open=false] if items block ~ ~ ~ container.* * run function mechanization:assembly/blocks/mss/gui/inject_item_offline

# set block display
execute if block ~ ~ ~ minecraft:barrel[open=false] run item modify entity @s contents {type:"minecraft:set_custom_model_data",floats:{values:[0],mode:"replace_all"}}
execute if block ~ ~ ~ minecraft:barrel[open=true] run item modify entity @s contents {type:"minecraft:set_custom_model_data",floats:{values:[1],mode:"replace_all"}}

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run kill @e[type=minecraft:item,distance=..0.5]
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t3
