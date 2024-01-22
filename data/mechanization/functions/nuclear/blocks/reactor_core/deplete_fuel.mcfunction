
loot replace block -30000000 0 1602 container.0 loot mechanization:nuclear/spent_fuel_rod
data modify storage mechanization:temp obj set from block -30000000 0 1602 Items[0]
execute store result storage mechanization:temp obj.tag.mechanization.fuel int 1 run scoreboard players get #fuel mechanization.data

data modify entity @s item.tag.fuel_rod set from storage mechanization:temp obj

tag @s remove mechanization.reactor_core.mox
tag @s remove mechanization.reactor_core.uranium
tag @s add mechanization.reactor_core.waste

scoreboard players set #count mechanization.data 0
scoreboard players set #enrichment mechanization.data 0

# chain update reactors
function mechanization:nuclear/blocks/reactor_core/update_model
scoreboard players operation @s mechanization.time = #enrichment mechanization.data
scoreboard players operation @s mechanization.fluid.out = #count mechanization.data
execute align xyz rotated 0 90 positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/update_fuel
execute align xyz rotated 0 -90 positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/update_fuel
