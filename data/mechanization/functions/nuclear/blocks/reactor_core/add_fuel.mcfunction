
execute if data entity @s item.tag.fuel_rod.id run return fail

data modify entity @s item.tag.fuel_rod set from storage mechanization:temp obj
data modify entity @s item.tag.fuel_rod.Slot set value 0b
item replace entity @p[tag=mechanization.interacted,distance=..12] weapon.mainhand with minecraft:air

execute if data entity @s item.tag.fuel_rod.tag.mechanization{id:"mox_fuel_rod"} run tag @s add mechanization.reactor_core.mox
execute if data entity @s item.tag.fuel_rod.tag.mechanization{id:"uranium_fuel_rod"} run tag @s add mechanization.reactor_core.uranium

execute store result score #enrichment mechanization.data run data get entity @s item.tag.fuel_rod.tag.mechanization.enrichment

scoreboard players set #count mechanization.data 1
execute align xyz rotated 0 90 positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/count_connections
execute align xyz rotated 0 -90 positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/count_connections

# chain update reactors
function mechanization:nuclear/blocks/reactor_core/update_model
scoreboard players operation @s mechanization.time = #enrichment mechanization.data
scoreboard players operation @s mechanization.fluid.out = #count mechanization.data
execute align xyz rotated 0 90 positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/update_fuel
execute align xyz rotated 0 -90 positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/update_fuel
