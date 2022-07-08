
### Main

# process recipes
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.timer 0

execute if score @s mechanization.timer matches 1 if score @s mechanization.fluid.0 matches 1.. if score @s mechanization.data matches 1.. run function mechanization:machines/machines/casting_basin/recipes/output
execute if score #active mechanization.data matches 1 unless score @s mechanization.timer matches 2.. if score @s mechanization.fluid.0 matches 1.. if score @s mechanization.data matches 1.. if score @s energy.storage > #machines.cf.casting_basin.power mechanization.data run function mechanization:machines/machines/casting_basin/recipes/input

# ui
execute if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/casting_basin/tank_input
function mechanization:machines/machines/casting_basin/gui

# update
execute if score @s mechanization.timer matches 1.. if score @s energy.storage < #machines.cf.casting_basin.power mechanization.data run scoreboard players set @s mechanization.timer 0
execute if score @s mechanization.timer matches 1.. if score @s energy.storage >= #machines.cf.casting_basin.power mechanization.data run scoreboard players remove @s energy.storage 15
execute if score @s mechanization.timer matches 1.. run scoreboard players remove @s mechanization.timer 1

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
