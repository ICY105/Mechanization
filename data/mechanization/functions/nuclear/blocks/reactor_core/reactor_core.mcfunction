
# mechanization.data: heat
# mechanization.fluid.in: neutron flux
# mechanization.time: enrichment %

# passive cooling
execute if score @s mechanization.data matches 21.. run scoreboard players remove @s mechanization.data 20
execute unless score @s mechanization.data matches 20.. run scoreboard players set @s mechanization.data 20

# generate heat
execute if score @s mechanization.data matches 2000.. run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# generate neutrons
scoreboard players operation #flux mechanization.data = @s mechanization.fluid.in
scoreboard players operation #flux mechanization.data /= #cons.3 mechanization.data
scoreboard players add #flux mechanization.data 1
scoreboard players operation @s mechanization.fluid.in -= #flux mechanization.data
execute if score @s mechanization.fluid.in matches ..0 run scoreboard players set @s mechanization.fluid.in 0

execute if score @s mechanization.time matches 1.. summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
