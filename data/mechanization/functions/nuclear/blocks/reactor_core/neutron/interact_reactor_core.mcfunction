
data modify storage mechanization:temp obj set value {index:0}

# F = E^0.15 * (101-S)^0.3 * a^0.86
#execute if score #amount mechanization.data matches 100.. run scoreboard players set #amount mechanization.data 100
#execute store result storage mechanization:temp obj.index int 1 run scoreboard players get #amount mechanization.data
#function mechanization:base/math/m.get_e086 with storage mechanization:temp obj
#scoreboard players operation #flux mechanization.data = #out mechanization.data
scoreboard players operation #flux mechanization.data = #amount mechanization.data

execute store result storage mechanization:temp obj.index int 1 run scoreboard players get @s mechanization.time
function mechanization:base/math/m.get_e015 with storage mechanization:temp obj
scoreboard players operation #flux mechanization.data *= #out mechanization.data

scoreboard players set #operator mechanization.data 101
scoreboard players operation #operator mechanization.data -= #speed mechanization.data
execute store result storage mechanization:temp obj.index int 1 run scoreboard players get #operator mechanization.data
function mechanization:base/math/m.get_e015 with storage mechanization:temp obj
scoreboard players operation #flux mechanization.data *= #out mechanization.data

#scoreboard players operation #flux mechanization.data *= #cons.2 mechanization.data
#scoreboard players operation #flux mechanization.data /= #cons.3 mechanization.data

scoreboard players operation #flux_remainder mechanization.data = #flux mechanization.data
scoreboard players operation #flux_remainder mechanization.data %= #cons.10000 mechanization.data
scoreboard players operation #flux mechanization.data /= #cons.10000 mechanization.data

execute store result score #random mechanization.data run random value 1..10000
execute if score #random mechanization.data <= #flux_remainder mechanization.data run scoreboard players add #flux mechanization.data 1

# add flux
scoreboard players operation @s mechanization.fluid.in += #flux mechanization.data

execute if entity @s[tag=debug] run tellraw @p [ \
    {"text":" A="},{"score":{"name":"#amount","objective":"mechanization.data"}}, \
    {"text":" S="},{"score":{"name":"#speed","objective":"mechanization.data"}}, \
    {"text":" E="},{"score":{"name":"@s","objective":"mechanization.time"}}, \
    {"text":": F="},{"score":{"name":"#flux","objective":"mechanization.data"}}, \
    {"text":" Fr="},{"score":{"name":"#flux_remainder","objective":"mechanization.data"}}, \
    {"text":" r="},{"score":{"name":"#random","objective":"mechanization.data"}} \
]

# cleanup
scoreboard players set #amount mechanization.data 0
