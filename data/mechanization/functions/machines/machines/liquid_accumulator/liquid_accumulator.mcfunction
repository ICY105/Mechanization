
## load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_fluid matches -2147483648.. store result score @s mechanization.stored_fluid run data get entity @s Item.tag.mech_fluid

### Main

#process recipes
execute if score @s mechanization.stored_fluid matches 1.. run function mechanization:machines/machines/liquid_accumulator/collect_liquid_checked
execute unless score @s mechanization.stored_fluid matches 1.. run function mechanization:machines/machines/liquid_accumulator/collect_liquid_unchecked

#ui
execute if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/liquid_accumulator/tank_input
function mechanization:machines/machines/liquid_accumulator/gui

## store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t1
