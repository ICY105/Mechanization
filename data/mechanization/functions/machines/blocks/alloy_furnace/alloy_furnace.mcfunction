
# effects
execute if score @s mechanization.time matches 0 store success entity @s Item.tag.CustomModelData int 6422000 if entity @s
execute if score @s mechanization.time matches 1.. store success entity @s Item.tag.CustomModelData int 6422901 if entity @s
execute if score @s[tag=!mechanization.muffled] mechanization.time matches 1.. run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1

# processing
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0

execute if score @s[tag=!mechanization.upgraded] mechanization.time matches 1 run function mechanization:machines/blocks/alloy_furnace/recipes/output_normal
execute if score @s[tag=mechanization.upgraded] mechanization.time matches 1 run function mechanization:machines/blocks/alloy_furnace/recipes/output_upgrade


execute if score #active mechanization.data matches 1 unless score @s[tag=!mechanization.upgraded] mechanization.time matches 2.. if score @s energy.storage >= #machines.cf.alloy_furnace.power mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipes/input_normal
execute if score #active mechanization.data matches 1 unless score @s[tag=mechanization.upgraded] mechanization.time matches 2.. if score @s energy.storage >= #machines.cf.alloy_furnace.power mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipes/input_upgrade

execute if score @s mechanization.time matches 1.. if score @s energy.storage < #machines.cf.alloy_furnace.power mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. if score @s energy.storage >= #machines.cf.alloy_furnace.power mechanization.data run scoreboard players operation @s energy.storage -= #machines.cf.alloy_furnace.power mechanization.data
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

execute if score @s mechanization.time matches 1.. if entity @s[tag=!mechanization.muffled] if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.alloy_furnace block @a[distance=..16] ~ ~ ~

# ui
scoreboard players set #slot_io.in fluid.data 0
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:base/utils/fluid_slot_io/slot_io_1
scoreboard players set #slot_io.in fluid.data 1
execute if data block ~ ~ ~ Items[{Slot:4b}] run function mechanization:base/utils/fluid_slot_io/slot_io_4
scoreboard players set #slot_io.in fluid.data 2
execute if data block ~ ~ ~ Items[{Slot:7b}] run function mechanization:base/utils/fluid_slot_io/slot_io_7

function mechanization:machines/blocks/alloy_furnace/gui

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
