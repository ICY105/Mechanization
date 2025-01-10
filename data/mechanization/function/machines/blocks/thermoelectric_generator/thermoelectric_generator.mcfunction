
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 30
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 30
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 30
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 30
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 30

# active
function mechanization:base/utils/redstone_active
execute if score @s energy.storage matches 4000.. run scoreboard players set #active mechanization.data 0
execute unless score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 5.. run scoreboard players set #active mechanization.data 0
execute unless score @s[tag=!mechanization.upgraded.nether] fluid.storage.1 matches 5.. run scoreboard players set #active mechanization.data 0

# power
execute if score #active mechanization.data matches 1 store result score #temp.0 mechanization.data run data get entity @s item.components."minecraft:custom_data".fluids[0].temperature
execute if score #active mechanization.data matches 1 store result score #temp.1 mechanization.data run data get entity @s item.components."minecraft:custom_data".fluids[1].temperature
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.nether] fluid.storage.1 matches ..4 run scoreboard players set #temp.0 mechanization.data 500
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches ..4 run scoreboard players set #temp.0 mechanization.data 100

scoreboard players remove #temp.0 mechanization.data 100
scoreboard players operation #temp.1 mechanization.data /= #cons.10 mechanization.data
scoreboard players operation #temp.1 mechanization.data -= #temp.0 mechanization.data
scoreboard players operation #temp.1 mechanization.data /= #cons.10 mechanization.data

execute if score #temp.1 mechanization.data matches ..0 run scoreboard players set #temp.1 mechanization.data 1
scoreboard players operation #temp.1 mechanization.data *= #machines.cf.thermoelectric.power mechanization.data
scoreboard players operation #temp.1 mechanization.data /= #cons.100 mechanization.data

execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #temp.1 mechanization.data *= #cons.3 mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #temp.1 mechanization.data /= #cons.2 mechanization.data
execute if score #active mechanization.data matches 1 run scoreboard players operation @s energy.storage += #temp.1 mechanization.data
execute if score #active mechanization.data matches 1 if score @s fluid.storage.0 matches 5.. run scoreboard players remove @s fluid.storage.0 5
execute if score #active mechanization.data matches 1 if score @s fluid.storage.1 matches 5.. run scoreboard players remove @s fluid.storage.1 5
execute if score #active mechanization.data matches 1 if score @s fluid.storage.0 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set value {}
execute if score #active mechanization.data matches 1 if score @s fluid.storage.1 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[1] set value {}

execute if entity @s[tag=!mechanization.muffled] if score #active mechanization.data matches 1 if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.thermoelectric_generator block @a[distance=..16] ~ ~ ~

execute if score #active mechanization.data matches 0 run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[0]}}}
execute if score #active mechanization.data matches 1 run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[1]}}}

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
