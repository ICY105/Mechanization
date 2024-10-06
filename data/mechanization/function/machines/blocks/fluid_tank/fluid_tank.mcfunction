
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
execute if entity @s[tag=mechanization.fluid_tank.t1] run scoreboard players add #storage mechanization.data 6422822
execute if entity @s[tag=mechanization.fluid_tank.t2] run scoreboard players add #storage mechanization.data 6422831
execute if entity @s[tag=mechanization.fluid_tank.t3] run scoreboard players add #storage mechanization.data 6422840
item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#storage"},"score":"mechanization.data"}}
execute if entity @s[tag=!mechanization.fluid_tank.t3] if score @s fluid.storage.0 matches 1.. store result entity @s item.components."minecraft:dyed_color" int 1 run data get entity @s item.components."minecraft:custom_data".fluids[0].color

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/blocks/fluid_tank/break_hard
