
# mechanization.data: heat
# mechanization.time: enrichment %
# mechanization.fluid.in: neutron flux
# mechanization.fluid.out: neutron rotation

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:nuclear/blocks/reactor_core/break_hard
execute unless block ~ ~ ~ minecraft:barrier run return fail

# heat transfer
# ring 1 = (heat-80)/90
# ring 2 = (heat-300)/120
# ring 3 = (heat-600)/110
scoreboard players set #heat_total mechanization.data 0
execute if score @s mechanization.data matches 102.. run function mechanization:nuclear/blocks/reactor_core/heat/heat_ring_1
execute if score @s mechanization.data matches 315.. run function mechanization:nuclear/blocks/reactor_core/heat/heat_ring_2
execute if score @s mechanization.data matches 609.. run function mechanization:nuclear/blocks/reactor_core/heat/heat_ring_3

execute if score #heat_total mechanization.data matches 1.. run playsound mechanization:nuclear.steam_boil block @a[distance=..24] ~ ~ ~ 1 1
scoreboard players operation @s mechanization.data -= #heat_total mechanization.data
execute unless score @s mechanization.data matches 20.. run scoreboard players set @s mechanization.data 20

# heat display
execute if score @s mechanization.data matches 300..499 run particle minecraft:white_smoke ~ ~-0.3 ~ 0.4 0 0.4 0 15
execute if score @s mechanization.data matches 500..699 run particle minecraft:smoke ~ ~-0.3 ~ 0.4 0 0.4 0 15
execute if score @s mechanization.data matches 700..899 run particle minecraft:large_smoke ~ ~-0.3 ~ 0.4 0 0.4 0 15
execute if score @s mechanization.data matches 900.. run particle minecraft:flame ~ ~ ~ 0.4 0.1 0.4 0 15

# melt down
execute if score @s mechanization.data matches 1001.. run setblock ~ ~ ~ minecraft:lava
execute if score @s mechanization.data matches 1001.. run function mechanization:nuclear/blocks/reactor_core/break_hard
execute if score @s mechanization.data matches 1001.. run return 1

# generate neutrons
execute unless score @s mechanization.time matches 1.. run return 0

scoreboard players operation #flux mechanization.data = @s mechanization.fluid.in
scoreboard players operation #flux mechanization.data /= #cons.3 mechanization.data
scoreboard players add #flux mechanization.data 1
scoreboard players operation @s mechanization.fluid.in -= #flux mechanization.data
execute if score @s mechanization.fluid.in matches ..0 run scoreboard players set @s mechanization.fluid.in 0

scoreboard players operation #rotation mechanization.data = @s mechanization.fluid.out
scoreboard players add @s mechanization.fluid.out 1
execute if score @s mechanization.fluid.out matches 12.. run scoreboard players set @s mechanization.fluid.out 0
execute summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon

# fuel consumption
execute store result score #fuel mechanization.data run data get entity @s item.components."minecraft:bundle_contents"[0].components."minecraft:custom_data".mechanization.fuel
scoreboard players operation #fuel mechanization.data += #flux mechanization.data
execute store result entity @s item.components."minecraft:bundle_contents"[0].components."minecraft:custom_data".mechanization.fuel int 1 run scoreboard players get #fuel mechanization.data

scoreboard players operation #max_fuel mechanization.data = @s mechanization.time
scoreboard players operation #max_fuel mechanization.data *= #cons.100000 mechanization.data
execute if score #fuel mechanization.data >= #max_fuel mechanization.data run function mechanization:nuclear/blocks/reactor_core/deplete_fuel


