
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run function mechanization:nuclear/blocks/centrifuge/m.hopper_input {location:"~ ~1 ~"}
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run function mechanization:nuclear/blocks/centrifuge/m.hopper_input {location:"~1 ~ ~"}
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run function mechanization:nuclear/blocks/centrifuge/m.hopper_input {location:"~-1 ~ ~"}
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run function mechanization:nuclear/blocks/centrifuge/m.hopper_input {location:"~ ~ ~1"}
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run function mechanization:nuclear/blocks/centrifuge/m.hopper_input {location:"~ ~ ~-1"}

# processing
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0

execute if score @s mechanization.time matches 1 run function mechanization:nuclear/blocks/centrifuge/recipes/output
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if score @s energy.storage >= #nuclear.cf.centrifuge.power mechanization.data run function mechanization:nuclear/blocks/centrifuge/recipes/input

execute if score @s mechanization.time matches 1.. if score @s energy.storage < #nuclear.cf.centrifuge.power mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. if score @s energy.storage >= #nuclear.cf.centrifuge.power mechanization.data run scoreboard players operation @s energy.storage -= #nuclear.cf.centrifuge.power mechanization.data
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

# effects
execute if score @s mechanization.time matches 0 run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[0]}}}
execute if score @s mechanization.time matches 1.. run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[1]}}}
execute if score @s[tag=!mechanization.muffled] mechanization.time matches 1.. run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1
execute if score @s[tag=!mechanization.muffled] mechanization.time matches 1.. if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:nuclear.centrifuge block @a[distance=..16] ~ ~ ~

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t2
