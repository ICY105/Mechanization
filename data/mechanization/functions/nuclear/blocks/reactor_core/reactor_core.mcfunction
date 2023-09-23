
# mechanization.data: heat
# mechanization.fluid.in: neutron flux
# mechanization.time: enrichment %
# mechanization.item_id: unique reactor id

# passive cooling
execute if score @s mechanization.data matches 21.. run scoreboard players remove @s mechanization.data 20
execute unless score @s mechanization.data matches 20.. run scoreboard players set @s mechanization.data 20

scoreboard players set @s mechanization.data 20

# generate heat
scoreboard players operation @s mechanization.data += @s mechanization.fluid.in
execute if score @s mechanization.data matches 2000.. run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# generate neutrons
scoreboard players operation #id mechanization.data = @s mechanization.item_id

scoreboard players operation #energy mechanization.data = @s mechanization.fluid.in
#execute if score @s mechanization.fluid.in matches ..0 store result score #random mechanization.data run random value 1..100
execute if score @s mechanization.fluid.in matches ..0 run scoreboard players set #random mechanization.data 1
execute if score @s mechanization.fluid.in matches ..0 if score #random mechanization.data <= @s mechanization.time run scoreboard players operation #energy mechanization.data = @s mechanization.time

scoreboard players operation #energy_remainder mechanization.data = #energy mechanization.data
scoreboard players operation #energy_remainder mechanization.data %= #cons.8 mechanization.data
scoreboard players operation #energy mechanization.data /= #cons.8 mechanization.data

execute summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon
execute summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon

# cleanup
scoreboard players set @s mechanization.fluid.in 0
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
