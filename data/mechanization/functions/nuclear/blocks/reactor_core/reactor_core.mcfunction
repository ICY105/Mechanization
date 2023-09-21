
# mechanization.data: heat
# mechanization.fluid.in: neutron flux
# mechanization.time: enrichment %

# passive cooling
execute if score @s mechanization.data matches 21.. run scoreboard players remove @s mechanization.data 20
execute unless score @s mechanization.data matches 20.. run scoreboard players set @s mechanization.data 20

scoreboard players set @s mechanization.data 20

# generate heat
scoreboard players operation @s mechanization.data += @s mechanization.fluid.in
execute if score @s mechanization.data matches 2000.. run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# generate neutrons
scoreboard players operation #neutron_amount mechanization.data = @s mechanization.fluid.in
execute if score #neutron_amount mechanization.data < @s mechanization.time run scoreboard players operation #neutron_amount mechanization.data = @s mechanization.time
execute if score #neutron_amount mechanization.data matches 500.. run scoreboard players set #neutron_amount mechanization.data 500

execute if score #neutron_amount mechanization.data matches 1.. positioned ~0.6 ~ ~ rotated 270 0 summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute if score #neutron_amount mechanization.data matches 1.. positioned ~-0.6 ~ ~ rotated 90 0 summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute if score #neutron_amount mechanization.data matches 1.. positioned ~ ~ ~0.6 rotated 0 0 summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute if score #neutron_amount mechanization.data matches 1.. positioned ~ ~ ~-0.6 rotated 180 0 summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon

# cleanup
scoreboard players set @s mechanization.fluid.in 0
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
