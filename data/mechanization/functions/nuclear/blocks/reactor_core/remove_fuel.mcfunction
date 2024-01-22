
execute unless data entity @s item.tag.fuel_rod.id run return fail

data remove block -30000000 0 1602 Items
data modify block -30000000 0 1602 Items append from entity @s item.tag.fuel_rod
item replace entity @p[tag=mechanization.interacted,distance=..12] weapon.mainhand from block -30000000 0 1602 container.0

tag @s remove mechanization.reactor_core.mox
tag @s remove mechanization.reactor_core.uranium
tag @s remove mechanization.reactor_core.waste

data modify entity @s item.tag.fuel_rod set value {}

# chain update reactors
function mechanization:nuclear/blocks/reactor_core/update_model
scoreboard players operation @s mechanization.time = #enrichment mechanization.data
scoreboard players operation @s mechanization.fluid.out = #count mechanization.data
execute align xyz rotated 0 90 positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/remove_fuel_2
execute align xyz rotated 0 -90 positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/remove_fuel_2
