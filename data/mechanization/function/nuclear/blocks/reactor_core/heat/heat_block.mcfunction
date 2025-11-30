
#> heat.0: heat amout for all blocks
#> heat.1: remainder heat amount

scoreboard players operation #heat mechanization.data = #heat.0 mechanization.data
execute if score #heat.1 mechanization.data matches 1.. run scoreboard players add #heat mechanization.data 1
execute if score #heat.1 mechanization.data matches 1.. run scoreboard players remove #heat.1 mechanization.data 1

execute if score #heat mechanization.data matches 0 run return fail

execute if block ~ ~ ~ #mechanization:water run return run function mechanization:nuclear/blocks/reactor_core/heat/boil_water
execute align xyz as @n[tag=mechanization.reactor_cell,dx=0,dy=0,dz=0] run return run function mechanization:nuclear/blocks/reactor_core/heat/reactor_cell
