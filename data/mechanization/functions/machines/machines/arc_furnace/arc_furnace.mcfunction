
## load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid
execute unless score @s mech_fluid matches -2147483648.. store result score @s mech_fluid run data get entity @s Item.tag.mech_fluid

### Main

#process recipes
execute if score @s mech_timer matches 1 if data block ~ ~ ~ Items[{Slot:3b}] run function mechanization:machines/machines/arc_furnace/process_result
execute unless score @s mech_timer matches 2.. if data block ~ ~ ~ Items[{Slot:3b}] run function mechanization:machines/machines/arc_furnace/check_recipes

#ui
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:machines/machines/arc_furnace/tank_input
function mechanization:machines/machines/arc_furnace/gui

#update
execute if score @s[tag=!mech_upgraded] mech_timer matches 1.. if score @s mech_power matches ..59 run scoreboard players set @s mech_timer 0
execute if score @s[tag=!mech_upgraded] mech_timer matches 1.. if score @s mech_power matches 60.. run scoreboard players remove @s mech_power 60
execute if score @s[tag=mech_upgraded,tag=!mech_upgrade_nether] mech_timer matches 1.. if score @s mech_power matches ..74 run scoreboard players set @s mech_timer 0
execute if score @s[tag=mech_upgraded,tag=!mech_upgrade_nether] mech_timer matches 1.. if score @s mech_power matches 75.. run scoreboard players remove @s mech_power 75
execute if score @s[tag=mech_upgrade_nether] mech_timer matches 1.. if score @s mech_power matches ..59 run scoreboard players set @s mech_timer 0
execute if score @s[tag=mech_upgrade_nether] mech_timer matches 1.. if score @s mech_power matches 60.. run scoreboard players remove @s mech_power 60
execute if score @s mech_timer matches 1.. run scoreboard players remove @s mech_timer 1

## store scoreboard values
execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t1
