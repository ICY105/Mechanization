
## load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_fluid matches -2147483648.. store result score @s mechanization.stored_fluid run data get entity @s Item.tag.mech_fluid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s du_data matches -2147483648.. store result score @s du_data run data get entity @s Item.tag.du_data
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.player.used_item_id matches -2147483648.. store result score @s mechanization.player.used_item_id run data get entity @s Item.tag.mechanization.player.used_item_id

### Main

#effects
execute if score @s mechanization.timer matches 0 store success entity @s Item.tag.CustomModelData int 6422000 if entity @s
execute if score @s mechanization.timer matches 1.. store success entity @s Item.tag.CustomModelData int 6422901 if entity @s
execute if score @s[tag=!mech_muffler] mechanization.timer matches 1.. run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1

#function
execute if score @s[tag=!mech_upgraded] mechanization.timer matches 1 run function mechanization:machines/machines/alloy_furnace/recipes/output_normal
execute if score @s[tag=mech_upgraded] mechanization.timer matches 1 run function mechanization:machines/machines/alloy_furnace/recipes/output_upgrade

execute unless score @s mechanization.timer matches 2.. if score @s mechanization.stored_energy >= $machines.cf.alloy_furnace.power mechanization.data run function mechanization:machines/machines/alloy_furnace/recipes/input_normal
execute unless score @s mechanization.timer matches 2.. if score @s mechanization.stored_energy >= $machines.cf.alloy_furnace.power mechanization.data run function mechanization:machines/machines/alloy_furnace/recipes/input_upgrade

execute if score @s mechanization.timer matches 1.. if score @s mechanization.stored_energy < $machines.cf.alloy_furnace.power mechanization.data run scoreboard players set @s mechanization.timer 0
execute if score @s mechanization.timer matches 1.. if score @s mechanization.stored_energy >= $machines.cf.alloy_furnace.power mechanization.data run scoreboard players operation @s mechanization.stored_energy -= $machines.cf.alloy_furnace.power mech_data
execute if score @s mechanization.timer matches 1.. run scoreboard players remove @s mechanization.timer 1

#ui
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:machines/machines/alloy_furnace/tank_1_input
execute if data block ~ ~ ~ Items[{Slot:4b}] run function mechanization:machines/machines/alloy_furnace/tank_2_input
execute if data block ~ ~ ~ Items[{Slot:7b}] run function mechanization:machines/machines/alloy_furnace/tank_3_input

function mechanization:machines/machines/alloy_furnace/gui

## store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.du_data int 1 run scoreboard players get @s du_data
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mechanization.player.used_item_id int 1 run scoreboard players get @s mechanization.player.used_item_id

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
