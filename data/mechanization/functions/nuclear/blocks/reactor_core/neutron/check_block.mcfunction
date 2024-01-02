
data modify storage mechanization:temp obj set from entity @s data

# copy data
scoreboard players operation #quantity_fast mechanization.data = @s mechanization.fluid.in
scoreboard players operation #quantity_thermal mechanization.data = @s mechanization.fluid.out

# calculate block interactions
execute if block ~ ~ ~ #mechanization:neutron_reflector run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reflector
execute if block ~ ~ ~ minecraft:coal_block run function mechanization:nuclear/blocks/reactor_core/neutron/interact_coal_block
execute if block ~ ~ ~ #mechanization:water run function mechanization:nuclear/blocks/reactor_core/neutron/interact_water
execute if block ~ ~ ~ minecraft:barrier align xyz as @e[type=minecraft:item_display,tag=mechanization,tag=smithed.block,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/neutron/check_block_barrier

# copy data
scoreboard players operation @s mechanization.fluid.in = #quantity_fast mechanization.data
scoreboard players operation @s mechanization.fluid.out = #quantity_thermal mechanization.data

data modify entity @s data set from storage mechanization:temp obj
