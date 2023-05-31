
#get data
data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:10b}]
function mechanization:machines/machines/enchanting_station/check_item

data modify storage mechanization:temp var set from storage mechanization:temp list[0].id
function mechanization:machines/machines/enchanting_station/check_enchant

execute if entity @s[tag=!mechanization.upgraded] run function mechanization:machines/machines/enchanting_station/check_conflicting
execute if entity @s[tag=mechanization.upgraded] run function mechanization:machines/machines/enchanting_station/check_conflicting_upgrade

execute if score #valid mechanization.data matches 1 store result score #level mechanization.data run data get storage mechanization:temp list[0].lvl
execute if score #valid mechanization.data matches 1 run function mechanization:machines/machines/enchanting_station/get_enchant_level

execute if score #valid mechanization.data matches 1 run scoreboard players operation #total_cost mechanization.data = #level mechanization.data
execute if score #valid mechanization.data matches 1 run scoreboard players operation #total_cost mechanization.data *= #cost mechanization.data
execute if score #valid mechanization.data matches 1 run scoreboard players operation #total_cost mechanization.data *= #cons.25 mechanization.data

execute if score #valid mechanization.data matches 1 if score @s mechanization.fluid.0 >= #total_cost mechanization.data if score #level mechanization.data = #current_level mechanization.data run scoreboard players operation #corrected_level mechanization.data = #level mechanization.data
execute if score #valid mechanization.data matches 1 if score @s mechanization.fluid.0 >= #total_cost mechanization.data if score #level mechanization.data = #current_level mechanization.data run scoreboard players add #corrected_level mechanization.data 1
execute if score #valid mechanization.data matches 1 if score @s mechanization.fluid.0 >= #total_cost mechanization.data if score #level mechanization.data = #current_level mechanization.data if score #corrected_level mechanization.data <= #max_over_lvl mechanization.data run function mechanization:machines/machines/enchanting_station/set_enchant_level
execute if score #valid mechanization.data matches 1 if score @s mechanization.fluid.0 >= #total_cost mechanization.data if score #level mechanization.data = #current_level mechanization.data if score #corrected_level mechanization.data <= #max_over_lvl mechanization.data run scoreboard players set #success mechanization.data 1
execute if score #valid mechanization.data matches 1 if score @s mechanization.fluid.0 >= #total_cost mechanization.data if score #level mechanization.data = #current_level mechanization.data if score #corrected_level mechanization.data <= #max_over_lvl mechanization.data run scoreboard players operation @s mechanization.fluid.0 -= #total_cost mechanization.data

execute if score #valid mechanization.data matches 1 if score @s mechanization.fluid.0 >= #total_cost mechanization.data if score #level mechanization.data > #current_level mechanization.data if score #level mechanization.data <= #max_over_lvl mechanization.data run scoreboard players operation #corrected_level mechanization.data = #level mechanization.data
execute if score #valid mechanization.data matches 1 if score @s mechanization.fluid.0 >= #total_cost mechanization.data if score #level mechanization.data > #current_level mechanization.data if score #level mechanization.data <= #max_over_lvl mechanization.data run function mechanization:machines/machines/enchanting_station/set_enchant_level
execute if score #valid mechanization.data matches 1 if score @s mechanization.fluid.0 >= #total_cost mechanization.data if score #level mechanization.data > #current_level mechanization.data if score #level mechanization.data <= #max_over_lvl mechanization.data run scoreboard players set #success mechanization.data 1
execute if score #valid mechanization.data matches 1 if score @s mechanization.fluid.0 >= #total_cost mechanization.data if score #level mechanization.data > #current_level mechanization.data if score #level mechanization.data <= #max_over_lvl mechanization.data run scoreboard players operation @s mechanization.fluid.0 -= #total_cost mechanization.data

#loop
data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/enchanting_station/add_overenchant_2
