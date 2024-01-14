
data modify entity @s item.tag.fuel_rod set from storage mechanization:temp obj
data modify entity @s item.tag.fuel_rod.Slot set value 0b

execute if data entity @s item.tag.fuel_rod.tag.mechanization{id:"mox_fuel_rod"} run tag @s add mechanization.reactor_core.mox
execute if data entity @s item.tag.fuel_rod.tag.mechanization{id:"uranium_fuel_rod"} run tag @s add mechanization.reactor_core.uranium

function mechanization:nuclear/blocks/reactor_core/update_model
scoreboard players operation @s mechanization.time = #enrichment mechanization.data
scoreboard players operation @s mechanization.fluid.out = #count mechanization.data

execute positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/update_fuel
