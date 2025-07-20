
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run function mechanization:machines/blocks/alloy_furnace/m.hopper_input {location:"~ ~1 ~"}
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run function mechanization:machines/blocks/alloy_furnace/m.hopper_input {location:"~1 ~ ~"}
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run function mechanization:machines/blocks/alloy_furnace/m.hopper_input {location:"~-1 ~ ~"}
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run function mechanization:machines/blocks/alloy_furnace/m.hopper_input {location:"~ ~ ~1"}
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run function mechanization:machines/blocks/alloy_furnace/m.hopper_input {location:"~ ~ ~-1"}

# processing
function mechanization:base/utils/redstone_active
tag @s[tag=mechanization.errored] remove mechanization.errored
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0

execute if score @s[tag=!mechanization.upgraded] mechanization.time matches 1 run function mechanization:machines/blocks/alloy_furnace/recipes/output_normal
execute if score @s[tag=mechanization.upgraded] mechanization.time matches 1 run function mechanization:machines/blocks/alloy_furnace/recipes/output_upgrade
execute if score #active mechanization.data matches 1 unless score @s[tag=!mechanization.upgraded] mechanization.time matches 2.. if score @s energy.storage >= #machines.cf.alloy_furnace.power mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipes/input_normal
execute if score #active mechanization.data matches 1 unless score @s[tag=mechanization.upgraded] mechanization.time matches 2.. if score @s energy.storage >= #machines.cf.alloy_furnace.power mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipes/input_upgrade

execute if score @s mechanization.time matches 1.. if score @s energy.storage < #machines.cf.alloy_furnace.power mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. run scoreboard players operation @s energy.storage -= #machines.cf.alloy_furnace.power mechanization.data
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

# effects
execute if score @s mechanization.time matches 0 run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[0]}}}
execute if score @s mechanization.time matches 1.. run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[1]}}}
execute if score @s[tag=!mechanization.muffled] mechanization.time matches 1.. run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1
execute if score @s[tag=!mechanization.muffled] mechanization.time matches 1.. if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.alloy_furnace block @a[distance=..16] ~ ~ ~

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
