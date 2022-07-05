
### Main

# process recipes
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.timer 0

execute if score @s mechanization.timer matches 1 if data block ~ ~ ~ Items[{Slot:3b}] run function mechanization:machines/machines/arc_furnace/recipe/output
execute if score #active mechanization.data matches 1 unless score @s mechanization.timer matches 2.. if score @s energy.storage matches 60.. if data block ~ ~ ~ Items[{Slot:3b}] run function mechanization:machines/machines/arc_furnace/recipe/input

# ui
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:machines/machines/arc_furnace/tank_input
function mechanization:machines/machines/arc_furnace/gui

# processing
scoreboard players operation #needed_energy mechanization.data = #machines.cf.arc_furnace.power mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #needed_energy mechanization.data *= #cons.5 mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #needed_energy mechanization.data /= #cons.4 mechanization.data

execute if score @s mechanization.timer matches 1.. if score @s energy.storage < #needed_energy mechanization.data run scoreboard players set @s mechanization.timer 0
execute if score @s mechanization.timer matches 1.. if score @s energy.storage >= #needed_energy mechanization.data run scoreboard players operation @s energy.storage -= #needed_energy mechanization.data
execute if score @s mechanization.timer matches 1.. run scoreboard players remove @s mechanization.timer 1

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t1
