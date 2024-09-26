
# processing
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if score @s energy.storage >= #machines.alloy_furnace.op_energy mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/process

execute if score @s mechanization.time matches 1.. if score @s energy.storage < #machines.cf.alloy_furnace.power mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. run scoreboard players operation @s energy.storage -= #machines.cf.alloy_furnace.power mechanization.data
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

execute if score @s mechanization.time matches 1.. if entity @s[tag=!mechanization.muffled] if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.alloy_furnace block @a[distance=..16] ~ ~ ~

# effects
execute if score @s mechanization.time matches 0 run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422000}
execute if score @s mechanization.time matches 1.. run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422901}
execute if score @s[tag=!mechanization.muffled] mechanization.time matches 1.. run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1

# TODO: ui
function mechanization:machines/blocks/alloy_furnace/gui_slow

# cleanup
tag @s remove mechanization.errored
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
