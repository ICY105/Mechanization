
# copy data
scoreboard players operation #quantity_fast mechanization.data = @s mechanization.fluid.in
scoreboard players operation #quantity_thermal mechanization.data = @s mechanization.fluid.out

# calculate block interactions
execute if entity @s[tag=!reflector] if block ~ ~ ~ #mechanization:neutron_reflector run function mechanization:nuclear/blocks/reactor_core/neutron/interactions/interact_reflector
#execute if block ~ ~ ~ minecraft:coal_block run function mechanization:nuclear/blocks/reactor_core/neutron/interactions/interact_coal_block
#execute if block ~ ~ ~ #mechanization:water run function mechanization:nuclear/blocks/reactor_core/neutron/interactions/interact_water
#execute if block ~ ~ ~ minecraft:dropper if items block ~ ~ ~ container.1 * align xyz as @e[type=minecraft:item_display,tag=mechanization.alchemy_chamber,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/alchemy_chamber/interactions
#execute if block ~ ~ ~ minecraft:barrier align xyz as @e[type=minecraft:item_display,tag=mechanization,tag=smithed.block,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/neutron/interactions/check_block_barrier

# copy data
scoreboard players operation @s mechanization.fluid.in = #quantity_fast mechanization.data
scoreboard players operation @s mechanization.fluid.out = #quantity_thermal mechanization.data
