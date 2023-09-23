
# copy data
scoreboard players operation #id mechanization.data = @s mechanization.item_id
scoreboard players operation #speed mechanization.data = @s mechanization.data
scoreboard players operation #amount mechanization.data = @s mechanization.fluid.in

# calculate block interactions
#execute if block ~ ~ ~ minecraft:air run scoreboard players set #speed mechanization.data 0

execute if block ~ ~ ~ #mechanization:neutron_reflector run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reflector

execute if block ~ ~ ~ minecraft:black_stained_glass run function mechanization:nuclear/blocks/reactor_core/neutron/interact_coal_block
execute if block ~ ~ ~ minecraft:coal_block run function mechanization:nuclear/blocks/reactor_core/neutron/interact_coal_block

execute if block ~ ~ ~ minecraft:barrier align xyz as @e[type=minecraft:item_display,tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] unless score @s mechanization.item_id = #id mechanization.data run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reactor_core

# copy data
scoreboard players operation @s mechanization.data = #speed mechanization.data
scoreboard players operation @s mechanization.fluid.in = #amount mechanization.data
