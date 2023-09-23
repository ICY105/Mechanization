
# init constants
scoreboard players set #cons.-1 mechanization.data -1
scoreboard players set #cons.2 mechanization.data 2
scoreboard players set #cons.3 mechanization.data 3
scoreboard players set #cons.4 mechanization.data 4
scoreboard players set #cons.5 mechanization.data 5
scoreboard players set #cons.7 mechanization.data 7
scoreboard players set #cons.8 mechanization.data 8
scoreboard players set #cons.10 mechanization.data 10
scoreboard players set #cons.16 mechanization.data 16
scoreboard players set #cons.25 mechanization.data 25
scoreboard players set #cons.31 mechanization.data 31
scoreboard players set #cons.36 mechanization.data 36
scoreboard players set #cons.42 mechanization.data 42
scoreboard players set #cons.51 mechanization.data 51
scoreboard players set #cons.60 mechanization.data 60
scoreboard players set #cons.64 mechanization.data 64
scoreboard players set #cons.80 mechanization.data 80
scoreboard players set #cons.85 mechanization.data 85
scoreboard players set #cons.90 mechanization.data 90
scoreboard players set #cons.95 mechanization.data 95
scoreboard players set #cons.100 mechanization.data 100
scoreboard players set #cons.120 mechanization.data 120
scoreboard players set #cons.125 mechanization.data 125
scoreboard players set #cons.140 mechanization.data 140
scoreboard players set #cons.150 mechanization.data 150
scoreboard players set #cons.250 mechanization.data 250
scoreboard players set #cons.10000 mechanization.data 10000
scoreboard players set #cons.1000000 mechanization.data 1000000
scoreboard players set #cons.max_int mechanization.data 2147483647
scoreboard players set #cons.min_int mechanization.data -2147483648
scoreboard players set #cons.rng_a mechanization.data 1103515245

# precomputed list of x^1.4 for [0,100]
data modify storage mechanization:registry math.e14 set value \
    [0.0,    1.0,    2.64,   4.66,   6.96,   9.52,   12.29,  15.25,  18.38, 21.67, \
     25.12,  28.7,   32.42,  36.27,  40.23,  44.31,  48.5,   52.8,   57.2,   61.7, \
     66.29,  70.98,  75.75,  80.62,  85.56,  90.6,   95.71,  100.9,  106.17, 111.52, \
     116.94, 122.44, 128.0,  133.63, 139.34, 145.11, 150.95, 156.85, 162.82, 168.85, \
     174.94, 181.09, 187.3,  193.58, 199.91, 206.3,  212.75, 219.25, 225.81, 232.42, \
     239.09, 245.81, 252.58, 259.41, 266.29, 273.22, 280.2,  287.23, 294.31, 301.43, \
     308.61, 315.84, 323.11, 330.43, 337.79, 345.21, 352.66, 360.17, 367.72, 375.31, \
     382.95, 390.63, 398.35, 406.12, 413.93, 421.78, 429.67, 437.61, 445.59, 453.61, \
     461.66, 469.76, 477.9,  486.08, 494.3,  502.56, 510.86, 519.19, 527.56, 535.98, \
     544.43, 552.91, 561.44, 570.0,  578.6,  587.24, 595.91, 604.62, 613.36, 622.14]

# precomputed list of x^0.86 for [0,100]
data modify storage mechanization:registry math.e086 set value \
    [0.0,   1.0,   1.82,  2.57,  3.29,  3.99,  4.67,  5.33,  5.98,  6.62,  \
     7.24,  7.86,  8.47,  9.08,  9.68,  10.27, 10.85, 11.43, 12.01, 12.58, \
     13.15, 13.71, 14.27, 14.83, 15.38, 15.93, 16.48, 17.02, 17.56, 18.1,  \
     18.63, 19.17, 19.7,  20.23, 20.75, 21.28, 21.8,  22.32, 22.84, 23.35, \
     23.87, 24.38, 24.89, 25.4,  25.9,  26.41, 26.91, 27.42, 27.92, 28.42, \
     28.91, 29.41, 29.91, 30.4,  30.89, 31.38, 31.87, 32.36, 32.85, 33.34, \
     33.82, 34.31, 34.79, 35.27, 35.75, 36.23, 36.71, 37.19, 37.67, 38.14, \
     38.62, 39.09, 39.56, 40.04, 40.51, 40.98, 41.45, 41.92, 42.38, 42.85, \
     43.32, 43.78, 44.25, 44.71, 45.17, 45.64, 46.1,  46.56, 47.02, 47.48, \
     47.93, 48.39, 48.85, 49.31, 49.76, 50.22, 50.67, 51.12, 51.58, 52.03, 52.48]

# precomputed list of x^0.15 for [0,100]
data modify storage mechanization:registry math.e015 set value \
    [0.0,  1.0,  1.11, 1.18, 1.23, 1.27, 1.31, 1.34, 1.37, 1.39, \
     1.41, 1.43, 1.45, 1.47, 1.49, 1.5,  1.52, 1.53, 1.54, 1.56, \
     1.57, 1.58, 1.59, 1.6,  1.61, 1.62, 1.63, 1.64, 1.65, 1.66, \
     1.67, 1.67, 1.68, 1.69, 1.7,  1.7,  1.71, 1.72, 1.73, 1.73, \
     1.74, 1.75, 1.75, 1.76, 1.76, 1.77, 1.78, 1.78, 1.79, 1.79, \
     1.8,  1.8,  1.81, 1.81, 1.82, 1.82, 1.83, 1.83, 1.84, 1.84, \
     1.85, 1.85, 1.86, 1.86, 1.87, 1.87, 1.87, 1.88, 1.88, 1.89, \
     1.89, 1.9,  1.9,  1.9,  1.91, 1.91, 1.91, 1.92, 1.92, 1.93, \
     1.93, 1.93, 1.94, 1.94, 1.94, 1.95, 1.95, 1.95, 1.96, 1.96, \
     1.96, 1.97, 1.97, 1.97, 1.98, 1.98, 1.98, 1.99, 1.99, 1.99, 2.0]

# precomputed list of x^0.3 for [0,100]
data modify storage mechanization:registry math.e03 set value \
    [0.0,  1.0,  1.23, 1.39, 1.52, 1.62, 1.71, 1.79, 1.87, 1.93, \
     2.0,  2.05, 2.11, 2.16, 2.21, 2.25, 2.3,  2.34, 2.38, 2.42, \
     2.46, 2.49, 2.53, 2.56, 2.59, 2.63, 2.66, 2.69, 2.72, 2.75, \
     2.77, 2.8,  2.83, 2.85, 2.88, 2.91, 2.93, 2.95, 2.98, 3.0,  \
     3.02, 3.05, 3.07, 3.09, 3.11, 3.13, 3.15, 3.17, 3.19, 3.21, \
     3.23, 3.25, 3.27, 3.29, 3.31, 3.33, 3.35, 3.36, 3.38, 3.4,  \
     3.42, 3.43, 3.45, 3.47, 3.48, 3.5,  3.51, 3.53, 3.55, 3.56, \
     3.58, 3.59, 3.61, 3.62, 3.64, 3.65, 3.67, 3.68, 3.7,  3.71, \
     3.72, 3.74, 3.75, 3.76, 3.78, 3.79, 3.8,  3.82, 3.83, 3.84, \
     3.86, 3.87, 3.88, 3.9,  3.91, 3.92, 3.93, 3.94, 3.96, 3.97, 4.0]
