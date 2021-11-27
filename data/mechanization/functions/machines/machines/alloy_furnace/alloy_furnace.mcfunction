
## load scoreboard values
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_fluid matches -2147483648.. store result score @s mech_fluid run data get entity @s Item.tag.mech_fluid
execute if score $base.cf.backup mech_data matches 1 unless score @s du_data matches -2147483648.. store result score @s du_data run data get entity @s Item.tag.du_data
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_usedid matches -2147483648.. store result score @s mech_usedid run data get entity @s Item.tag.mech_usedid

### Main

#effects
execute if score @s mech_timer matches 0 store success entity @s Item.tag.CustomModelData int 6422000 if entity @s
execute if score @s mech_timer matches 1.. store success entity @s Item.tag.CustomModelData int 6422901 if entity @s
execute if score @s mech_timer matches 1.. run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1

#function
execute if score @s[tag=!mech_upgraded] mech_timer matches 1 run function mechanization:machines/machines/alloy_furnace/recipes/output_normal
execute if score @s[tag=mech_upgraded] mech_timer matches 1 run function mechanization:machines/machines/alloy_furnace/recipes/output_upgrade

execute unless score @s mech_timer matches 2.. if score @s mech_power >= $machines.cf.alloy_furnace.power mech_data run function mechanization:machines/machines/alloy_furnace/recipes/input_normal
execute unless score @s mech_timer matches 2.. if score @s mech_power >= $machines.cf.alloy_furnace.power mech_data run function mechanization:machines/machines/alloy_furnace/recipes/input_upgrade

execute if score @s mech_timer matches 1.. if score @s mech_power < $machines.cf.alloy_furnace.power mech_data run scoreboard players set @s mech_timer 0
execute if score @s mech_timer matches 1.. if score @s mech_power >= $machines.cf.alloy_furnace.power mech_data run scoreboard players operation @s mech_power -= $machines.cf.alloy_furnace.power mech_data
execute if score @s mech_timer matches 1.. run scoreboard players remove @s mech_timer 1

#ui
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:machines/machines/alloy_furnace/tank_1_input
execute if data block ~ ~ ~ Items[{Slot:4b}] run function mechanization:machines/machines/alloy_furnace/tank_2_input
execute if data block ~ ~ ~ Items[{Slot:7b}] run function mechanization:machines/machines/alloy_furnace/tank_3_input

function mechanization:machines/machines/alloy_furnace/gui

## store scoreboard values
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.du_data int 1 run scoreboard players get @s du_data
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_usedid int 1 run scoreboard players get @s mech_usedid

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
