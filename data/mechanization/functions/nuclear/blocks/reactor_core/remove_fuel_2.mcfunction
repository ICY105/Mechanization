
tag @s remove mechanization.reactor_core.mox
tag @s remove mechanization.reactor_core.uranium

scoreboard players set @s mechanization.time 0
scoreboard players set @s mechanization.fluid.out 0

data modify entity @s item.tag.fuel_rod set value {}
function mechanization:nuclear/blocks/reactor_core/update_model

execute positioned ^ ^ ^1 as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/remove_fuel_2
