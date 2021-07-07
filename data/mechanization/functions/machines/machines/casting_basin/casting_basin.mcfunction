
## load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid
execute unless score @s mech_fluid matches -2147483648.. store result score @s mech_fluid run data get entity @s Item.tag.mech_fluid

### Main

#process recipes
execute if score @s mech_timer matches 1 if score @s mech_fluid matches 1.. if score @s mech_data matches 1.. run function mechanization:machines/machines/casting_basin/process_result
execute unless score @s mech_timer matches 2.. if score @s mech_fluid matches 1.. if score @s mech_data matches 1.. if score @s mech_power matches 15.. run function mechanization:machines/machines/casting_basin/check_recipes

#ui
execute if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/casting_basin/tank_input
function mechanization:machines/machines/casting_basin/gui

#update
execute if score @s mech_timer matches 1.. if score @s mech_power matches ..15 run scoreboard players set @s mech_timer 0
execute if score @s mech_timer matches 1.. if score @s mech_power matches 15.. run scoreboard players remove @s mech_power 15
execute if score @s mech_timer matches 1.. run scoreboard players remove @s mech_timer 1

## store scoreboard values
execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
