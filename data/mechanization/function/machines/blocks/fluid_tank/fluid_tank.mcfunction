
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 30
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 30
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 30
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 30
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 30

# model
scoreboard players operation #storage mechanization.data = @s fluid.storage.0
scoreboard players operation #storage mechanization.data *= #cons.8 mechanization.data
scoreboard players operation #storage mechanization.data /= @s fluid.max_storage.0
execute if score #storage mechanization.data matches 9.. run scoreboard players set #storage mechanization.data 8
item modify entity @s contents {"function":"minecraft:set_custom_model_data","floats":{"values":[{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#storage"},"score":"mechanization.data","scale":1}],"mode":"replace_all"}}
execute if entity @s[tag=!mechanization.fluid_tank.t3] if score @s fluid.storage.0 matches 1.. store result score #color mechanization.data run data get entity @s item.components."minecraft:custom_data".fluids[0].color
item modify entity @s contents {"function":"minecraft:set_custom_model_data","colors":{"values":[{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#color"},"score":"mechanization.data","scale":1}],"mode":"replace_all"}}

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/blocks/fluid_tank/break_hard
