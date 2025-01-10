
# main
function mechanization:base/utils/redstone_active

execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 1.. unless score @s energy.storage > @s energy.max_storage if items block ~ ~ ~ container.* #mechanization:bio_generator/fuel run function mechanization:machines/blocks/bio_generator/fuel

execute if score @s mechanization.time matches 0 run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[0]}}}
execute if score @s mechanization.time matches 1.. run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[1]}}}
execute if score @s mechanization.time matches 1.. run particle minecraft:smoke ~ ~1.2 ~ 0.1 0 0.1 0 15

execute if score @s mechanization.time matches 1.. run scoreboard players operation @s energy.storage += @s mechanization.data
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

# cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_block/break_machine_t2
