
data modify storage mechanization:temp obj set from entity @s data

# copy data
scoreboard players operation #quantity_fast mechanization.data = @s mechanization.fluid.in
scoreboard players operation #quantity_thermal mechanization.data = @s mechanization.fluid.out

# calculate block interactions
execute if block ~ ~ ~ minecraft:barrier align xyz as @n[type=minecraft:item_display,tag=mechanization.control_rod,tag=mechanization.active,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/neutron/interact_control_rod

# copy data
scoreboard players operation @s mechanization.fluid.in = #quantity_fast mechanization.data
scoreboard players operation @s mechanization.fluid.out = #quantity_thermal mechanization.data

data modify entity @s data set from storage mechanization:temp obj
