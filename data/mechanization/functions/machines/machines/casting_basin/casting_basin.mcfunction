
## load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_fluid matches -2147483648.. store result score @s mechanization.stored_fluid run data get entity @s Item.tag.mech_fluid

### Main

#process recipes
execute if score @s mechanization.timer matches 1 if score @s mechanization.stored_fluid matches 1.. if score @s mechanization.data matches 1.. run function mechanization:machines/machines/casting_basin/process_result
execute unless score @s mechanization.timer matches 2.. if score @s mechanization.stored_fluid matches 1.. if score @s mechanization.data matches 1.. if score @s mechanization.stored_energy > $machines.cf.casting_basin.power mechanization.data run function mechanization:machines/machines/casting_basin/check_recipes

#ui
execute if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/casting_basin/tank_input
function mechanization:machines/machines/casting_basin/gui

#update
execute if score @s mechanization.timer matches 1.. if score @s mechanization.stored_energy < $machines.cf.casting_basin.power mechanization.data run scoreboard players set @s mechanization.timer 0
execute if score @s mechanization.timer matches 1.. if score @s mechanization.stored_energy >= $machines.cf.casting_basin.power mechanization.data run scoreboard players remove @s mechanization.stored_energy 15
execute if score @s mechanization.timer matches 1.. run scoreboard players remove @s mechanization.timer 1

## store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
