
# Formula, where E = enrichment %, S = speed, a = amount
# [ [(50 - 2E/5)(a + 10) / ((100-E)/100)(a + 10) + 10] - (25 - ((E-1)^1.4)/42) ] / [200/(200-S)]

# (50 - 2E/5) -> x1
scoreboard players set #flux mechanization.data 50
scoreboard players set #operator mechanization.data 2
scoreboard players operation #operator mechanization.data *= @s mechanization.time
scoreboard players operation #operator mechanization.data /= #cons.5 mechanization.data
scoreboard players operation #flux mechanization.data -= #operator mechanization.data

execute if entity @s[tag=debug] run tellraw @p [{"text":"x1 = "},{"score":{"name":"#flux","objective":"mechanization.data"}}]

# x1 * (a+10) -> x2
scoreboard players operation #operator mechanization.data = #amount mechanization.data
scoreboard players add #operator mechanization.data 10
scoreboard players operation #flux mechanization.data *= #operator mechanization.data

# ((100-E)/100) -> y1
scoreboard players set #divisor mechanization.data 100
scoreboard players operation #divisor mechanization.data -= @s mechanization.time

# [y1 * (a+10)] + 10 -> y2
scoreboard players operation #divisor mechanization.data *= #operator mechanization.data
scoreboard players operation #divisor mechanization.data /= #cons.100 mechanization.data
scoreboard players add #divisor mechanization.data 10

# x2/y2 -> x3
scoreboard players operation #flux mechanization.data /= #divisor mechanization.data

# x3 - (25 - ((E-1)^1.4)/42) -> x4
scoreboard players set #operator mechanization.data 25

data modify storage mechanization:temp obj set value {index: 0}
execute store result storage mechanization:temp obj.index int 0.999 run scoreboard players get @s mechanization.time
function mechanization:nuclear/blocks/reactor_core/neutron/get_e14 with storage mechanization:temp obj

scoreboard players operation #divisor mechanization.data /= #cons.42 mechanization.data
scoreboard players operation #operator mechanization.data -= #divisor mechanization.data
scoreboard players operation #flux mechanization.data -= #operator mechanization.data

# x4 / (200/(200-S)) -> out
scoreboard players set #divisor mechanization.data 20000
scoreboard players set #operator mechanization.data 180
scoreboard players operation #operator mechanization.data -= #speed mechanization.data
scoreboard players operation #divisor mechanization.data /= #operator mechanization.data

scoreboard players operation #flux mechanization.data *= #cons.100 mechanization.data
scoreboard players operation #flux mechanization.data /= #divisor mechanization.data

# add flux
scoreboard players operation @s mechanization.fluid.in += #flux mechanization.data

# cleanup
scoreboard players set #amount mechanization.data 0
