
### Main

# process recipes
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0

execute if score @s mechanization.time matches 1 if data block ~ ~ ~ Items[{Slot:3b}] run function mechanization:machines/blocks/arc_furnace/recipes/output
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if score @s energy.storage matches 60.. if data block ~ ~ ~ Items[{Slot:3b}] run function mechanization:machines/blocks/arc_furnace/recipes/input

# ui
execute if score @s mechanization.time matches 0 run data modify entity @s item.tag.CustomModelData set value 6422027
execute if score @s mechanization.time matches 1.. run data modify entity @s item.tag.CustomModelData set value 6422949

function mechanization:machines/blocks/arc_furnace/gui

# processing
scoreboard players operation #needed_energy mechanization.data = #machines.cf.arc_furnace.power mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #needed_energy mechanization.data *= #cons.5 mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #needed_energy mechanization.data /= #cons.4 mechanization.data

execute if score @s mechanization.time matches 1.. if score @s energy.storage < #needed_energy mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. if score @s energy.storage >= #needed_energy mechanization.data run scoreboard players operation @s energy.storage -= #needed_energy mechanization.data
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

execute if score @s[tag=!mechanization.muffled] mechanization.time matches 1.. if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.arc_furnace block @a[distance=..16] ~ ~ ~

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_block/break_machine_t1
