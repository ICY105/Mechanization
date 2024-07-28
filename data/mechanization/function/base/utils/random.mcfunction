
## #rng.in: max output value (0-100,000,000)
#> #rng.out: generated random number

# LCG
scoreboard players operation #rng.seed mechanization.data *= #cons.rng_a mechanization.data
scoreboard players add #rng.seed mechanization.data 12345

# output
scoreboard players operation #rng.out mechanization.data = #rng.seed mechanization.data
scoreboard players operation #rng.out mechanization.data /= #cons.16 mechanization.data
scoreboard players operation #rng.out mechanization.data %= #rng.in mechanization.data
execute if score #rng.out mechanization.data matches ..-1 run scoreboard players operation #rng.out mechanization.data *= #cons.-1 mechanization.data

# check for 0 range
execute if score #rng.in mechanization.data matches 0 run scoreboard players set #rng.out mechanization.data 0
