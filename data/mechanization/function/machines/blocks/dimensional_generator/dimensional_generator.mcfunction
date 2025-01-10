
# add fuel
function mechanization:base/utils/redstone_active

execute if score #active mechanization.data matches 1 if score @s[tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] energy.storage < @s energy.max_storage if score @s mechanization.data matches ..0 if items block ~ ~ ~ container.0 * run function mechanization:machines/blocks/dimensional_generator/fuel_overworld
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.ender] energy.storage < @s energy.max_storage if score @s mechanization.data matches ..0 if items block ~ ~ ~ container.0 * run function mechanization:machines/blocks/dimensional_generator/fuel_end
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.nether] energy.storage < @s energy.max_storage if score @s mechanization.data matches ..0 if items block ~ ~ ~ container.0 * run function mechanization:machines/blocks/dimensional_generator/fuel_nether

# display
item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
function mechanization:base/utils/generate_energy_bar_ui

execute if score @s mechanization.data matches 0 run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[0]}}}
execute if score @s mechanization.data matches 1.. run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[1]}}}

# effect
execute if score #active mechanization.data matches 1 if score @s[tag=!mechanization.muffled] mechanization.data matches 1.. run playsound mechanization:machines.ender_generator block @a[distance=..12] ~ ~ ~ 0.2 1
execute if score #active mechanization.data matches 1 run scoreboard players set #burn_time mechanization.data 20
execute if score #active mechanization.data matches 1 run scoreboard players operation #burn_time mechanization.data *= @s mechanization.data
execute if score #active mechanization.data matches 1 store result block ~ ~ ~ BurnTime short 1 run scoreboard players get #burn_time mechanization.data

# power & fuel
execute if score #active mechanization.data matches 1 if score @s[tag=!mechanization.upgraded] energy.storage < @s energy.max_storage if score @s mechanization.data matches 1.. run scoreboard players operation @s energy.storage += #machines.cf.dimensional_generator.power mechanization.data
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded] energy.storage < @s energy.max_storage if score @s mechanization.data matches 1.. run scoreboard players operation @s energy.storage += #machines.cf.dimensional_generator.power.machine_upgrade mechanization.data
execute if score #active mechanization.data matches 1 if score @s energy.storage < @s energy.max_storage if score @s mechanization.data matches 1.. run scoreboard players remove @s mechanization.data 1

# cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_block/break_machine_t3
