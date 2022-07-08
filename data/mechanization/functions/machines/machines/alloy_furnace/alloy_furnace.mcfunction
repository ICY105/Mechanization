
# effects
execute if score @s mechanization.timer matches 0 store success entity @s Item.tag.CustomModelData int 6422000 if entity @s
execute if score @s mechanization.timer matches 1.. store success entity @s Item.tag.CustomModelData int 6422901 if entity @s
execute if score @s[tag=!mechanization.muffled] mechanization.timer matches 1.. run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1

# processing
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.timer 0

execute if score @s[tag=!mechanization.upgraded] mechanization.timer matches 1 run function mechanization:machines/machines/alloy_furnace/recipes/output_normal
execute if score @s[tag=mechanization.upgraded] mechanization.timer matches 1 run function mechanization:machines/machines/alloy_furnace/recipes/output_upgrade


execute if score #active mechanization.data matches 1 unless score @s mechanization.timer matches 2.. if score @s energy.storage >= #machines.cf.alloy_furnace.power mechanization.data run function mechanization:machines/machines/alloy_furnace/recipes/input_normal
execute if score #active mechanization.data matches 1 unless score @s mechanization.timer matches 2.. if score @s energy.storage >= #machines.cf.alloy_furnace.power mechanization.data run function mechanization:machines/machines/alloy_furnace/recipes/input_upgrade

execute if score @s mechanization.timer matches 1.. if score @s energy.storage < #machines.cf.alloy_furnace.power mechanization.data run scoreboard players set @s mechanization.timer 0
execute if score @s mechanization.timer matches 1.. if score @s energy.storage >= #machines.cf.alloy_furnace.power mechanization.data run scoreboard players operation @s energy.storage -= #machines.cf.alloy_furnace.power mechanization.data
execute if score @s mechanization.timer matches 1.. run scoreboard players remove @s mechanization.timer 1

# ui
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:machines/machines/alloy_furnace/tank_1_input
execute if data block ~ ~ ~ Items[{Slot:4b}] run function mechanization:machines/machines/alloy_furnace/tank_2_input
execute if data block ~ ~ ~ Items[{Slot:7b}] run function mechanization:machines/machines/alloy_furnace/tank_3_input

function mechanization:machines/machines/alloy_furnace/gui

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
