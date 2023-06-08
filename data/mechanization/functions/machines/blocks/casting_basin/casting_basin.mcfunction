
### Main

# process recipes
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0

execute if score @s mechanization.time matches 1 if score @s fluid.storage.0 matches 1.. if score @s mechanization.data matches 1.. run function mechanization:machines/blocks/casting_basin/recipes/output
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if score @s fluid.storage.0 matches 1.. if score @s mechanization.data matches 1.. if score @s energy.storage > #machines.cf.casting_basin.power mechanization.data run function mechanization:machines/blocks/casting_basin/recipes/input

# ui
execute if score @s mechanization.time matches 0 run data modify entity @s item.tag.CustomModelData set value 6422028
execute if score @s mechanization.time matches 1.. run data modify entity @s item.tag.CustomModelData set value 6422950

function mechanization:machines/blocks/casting_basin/gui

# update
execute if score @s mechanization.time matches 1.. if score @s energy.storage < #machines.cf.casting_basin.power mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. if score @s energy.storage >= #machines.cf.casting_basin.power mechanization.data run scoreboard players remove @s energy.storage 15
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
