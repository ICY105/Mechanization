
execute if score @s mechanization.time matches 1.. run data remove block -30000000 0 1602 Items
execute if score @s mechanization.time matches 1.. run data modify block -30000000 0 1602 Items append from entity @s item.tag.fuel_rod
execute if score @s mechanization.time matches 1.. run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

tag @s remove mechanization.reactor_core
function mechanization:base/utils/break_machine_t2

execute rotated 0 90 positioned ^ ^ ^1 align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/remove_fuel_2
execute rotated 0 -90 positioned ^ ^ ^1 align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/remove_fuel_2

execute rotated 0 90 positioned ^ ^ ^1 align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/update_model
execute rotated 0 -90 positioned ^ ^ ^1 align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/update_model
