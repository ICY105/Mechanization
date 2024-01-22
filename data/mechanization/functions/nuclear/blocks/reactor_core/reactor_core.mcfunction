
# mechanization.data: heat
# mechanization.fluid.in: neutron flux
# mechanization.fluid.out: fuel split
# mechanization.time: enrichment %


# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:nuclear/blocks/reactor_core/break_hard
execute unless block ~ ~ ~ minecraft:barrier run return fail

# passive cooling
scoreboard players set #heat mechanization.data 80
scoreboard players operation #heat mechanization.data += @s mechanization.data
scoreboard players operation #heat mechanization.data /= #cons.180 mechanization.data
scoreboard players operation #heat mechanization.data *= #cons.5 mechanization.data

scoreboard players set #heat_total mechanization.data 5
execute if score #heat mechanization.data matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=mechanization.coolant_cell,distance=..1.1] run function mechanization:nuclear/blocks/coolant_cell/transfer_heat
execute if score #heat mechanization.data matches 1.. positioned ~1 ~ ~ if block ~ ~ ~ #mechanization:water run function mechanization:nuclear/blocks/reactor_core/boil_water
execute if score #heat mechanization.data matches 1.. positioned ~-1 ~ ~ if block ~ ~ ~ #mechanization:water run function mechanization:nuclear/blocks/reactor_core/boil_water
execute if score #heat mechanization.data matches 1.. positioned ~ ~ ~1 if block ~ ~ ~ #mechanization:water run function mechanization:nuclear/blocks/reactor_core/boil_water
execute if score #heat mechanization.data matches 1.. positioned ~ ~ ~-1 if block ~ ~ ~ #mechanization:water run function mechanization:nuclear/blocks/reactor_core/boil_water

scoreboard players operation @s mechanization.data -= #heat_total mechanization.data
execute unless score @s mechanization.data matches 20.. run scoreboard players set @s mechanization.data 20

# heat display
execute if score @s mechanization.data matches 2000.. run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# generate neutrons
execute unless entity @s[tag=mechanization.reactor_core.uranium] unless entity @s[tag=mechanization.reactor_core.mox] unless score @s mechanization.fluid.in matches 1.. run return fail

scoreboard players operation #flux mechanization.data = @s mechanization.fluid.in
scoreboard players operation #flux mechanization.data /= #cons.3 mechanization.data
scoreboard players add #flux mechanization.data 1
scoreboard players operation @s mechanization.fluid.in -= #flux mechanization.data
execute if score @s mechanization.fluid.in matches ..0 run scoreboard players set @s mechanization.fluid.in 0

execute if score @s mechanization.time matches 1.. summon marker run function mechanization:nuclear/blocks/reactor_core/neutron/summon

# fuel consumption
scoreboard players operation #flux mechanization.data *= @s fluid.out
execute store result score #fuel mechanization.data run data get entity @s item.tag.fuel_rod.tag.mechanization.fuel
scoreboard players operation #fuel mechanization.data += #flux mechanization.data
execute store result entity @s item.tag.fuel_rod.tag.mechanization.fuel int 1 run scoreboard players get #fuel mechanization.data

scoreboard players operation #max_fuel mechanization.data = @s mechanization.time
scoreboard players operation #max_fuel mechanization.data *= #cons.100000 mechanization.data
execute if score #fuel mechanization.data >= #max_fuel mechanization.data run function mechanization:nuclear/blocks/reactor_core/deplete_fuel
