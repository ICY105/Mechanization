
# formula: x*0.9
scoreboard players operation #speed mechanization.data *= #cons.90 mechanization.data
scoreboard players operation #speed mechanization.data /= #cons.100 mechanization.data

# formula: (100x)/(x+100) + 1
scoreboard players operation #divisor mechanization.data = #amount mechanization.data
scoreboard players add #divisor mechanization.data 100
scoreboard players operation #amount mechanization.data *= #cons.100 mechanization.data
scoreboard players operation #amount mechanization.data /= #divisor mechanization.data
scoreboard players add #amount mechanization.data 1
