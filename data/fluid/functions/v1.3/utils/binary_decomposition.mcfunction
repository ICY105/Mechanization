# 
# Decomposes a decimal number into binary, up to 8 bits.
# > #utils.in fluid.data: decimal number
# < #utils.out.0 fluid.data: bit 0
# < #utils.out.1 fluid.data: bit 1
# < #utils.out.2 fluid.data: bit 2
# < #utils.out.3 fluid.data: bit 3
# < #utils.out.4 fluid.data: bit 4
# < #utils.out.5 fluid.data: bit 5
# < #utils.out.6 fluid.data: bit 6
# < #utils.out.7 fluid.data: bit 7
#

scoreboard players operation #utils.temp fluid.data = #utils.in fluid.data

scoreboard players operation #utils.out.0 fluid.data = #utils.temp fluid.data
scoreboard players operation #utils.out.0 fluid.data %= #cons.2 fluid.data
scoreboard players operation #utils.temp fluid.data /= #cons.2 fluid.data

scoreboard players operation #utils.out.1 fluid.data = #utils.temp fluid.data
scoreboard players operation #utils.out.1 fluid.data %= #cons.2 fluid.data
scoreboard players operation #utils.temp fluid.data /= #cons.2 fluid.data

scoreboard players operation #utils.out.2 fluid.data = #utils.temp fluid.data
scoreboard players operation #utils.out.2 fluid.data %= #cons.2 fluid.data
scoreboard players operation #utils.temp fluid.data /= #cons.2 fluid.data

scoreboard players operation #utils.out.3 fluid.data = #utils.temp fluid.data
scoreboard players operation #utils.out.3 fluid.data %= #cons.2 fluid.data
scoreboard players operation #utils.temp fluid.data /= #cons.2 fluid.data

scoreboard players operation #utils.out.4 fluid.data = #utils.temp fluid.data
scoreboard players operation #utils.out.4 fluid.data %= #cons.2 fluid.data
scoreboard players operation #utils.temp fluid.data /= #cons.2 fluid.data

scoreboard players operation #utils.out.5 fluid.data = #utils.temp fluid.data
scoreboard players operation #utils.out.5 fluid.data %= #cons.2 fluid.data
scoreboard players operation #utils.temp fluid.data /= #cons.2 fluid.data

scoreboard players operation #utils.out.6 fluid.data = #utils.temp fluid.data
scoreboard players operation #utils.out.6 fluid.data %= #cons.2 fluid.data
scoreboard players operation #utils.temp fluid.data /= #cons.2 fluid.data

scoreboard players operation #utils.out.7 fluid.data = #utils.temp fluid.data
scoreboard players operation #utils.out.7 fluid.data %= #cons.2 fluid.data
scoreboard players operation #utils.temp fluid.data /= #cons.2 fluid.data