
# main
execute if score @s mechanization.data matches 0 if score @s energy.storage matches 1.. run function mechanization:machines/blocks/energy_relay/transmit

# break
execute at @s unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t2
