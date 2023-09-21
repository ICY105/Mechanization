
# reduce speed by 10%
# formula: x*0.9
scoreboard players operation #speed mechanization.data *= #cons.90 mechanization.data
scoreboard players operation #speed mechanization.data /= #cons.100 mechanization.data

# reduce amount at the high end while leaving the low end mostely unaffected
# formula 51(a+2)/(a+52) - 1
scoreboard players operation #divisor mechanization.data = #amount mechanization.data
scoreboard players add #divisor mechanization.data 52

scoreboard players add #amount mechanization.data 2
scoreboard players operation #amount mechanization.data *= #cons.51 mechanization.data

scoreboard players operation #amount mechanization.data /= #divisor mechanization.data
scoreboard players remove #amount mechanization.data 1
