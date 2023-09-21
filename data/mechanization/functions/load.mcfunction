
# init scores
scoreboard objectives add mechanization.data dummy
scoreboard objectives add mechanization.time dummy
scoreboard objectives add mechanization.item_id dummy
scoreboard objectives add mechanization.redstone dummy
scoreboard objectives add mechanization.fluid.in dummy
scoreboard objectives add mechanization.fluid.out dummy

scoreboard objectives add mechanization.manual trigger

scoreboard objectives add mechanization.itemslot dummy
scoreboard objectives add mechanization.shield dummy
scoreboard objectives add mechanization.firerate dummy
scoreboard objectives add mechanization.weaponheat dummy

scoreboard objectives add mechanization.use_pick minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add mechanization.use_axe minecraft.used:minecraft.netherite_axe
scoreboard objectives add mechanization.use_shovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add mechanization.use_hoe minecraft.used:minecraft.netherite_hoe

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
scoreboard players set #cons.max_int mechanization.data 2147483647
scoreboard players set #cons.min_int mechanization.data -2147483648
scoreboard players set #cons.rng_a mechanization.data 1103515245

# mark version
scoreboard players set #mech.ver.major load.status 4
scoreboard players set #mech.ver.minor load.status 1
scoreboard players set #mech.ver.fix load.status 4

# configure storage
data merge storage mechanization:temp {obj:{}, list:[], var:""}
data merge storage mechanization:networks {mss_temp:{drive:[],item:{}}}

data merge storage mechanization:registry {math:{}, recipes:{}}

# precomputed list of x^1.4 for [0,100]
data modify storage mechanization:registry math.e14 set value \
    [0.0,    1.0,    2.64,   4.66,   6.96,   9.52,   12.29,  15.25,  18.38, 21.67, \
     25.12,  28.7,   32.42,  36.27,  40.23,  44.31,  48.5,   52.8,   57.2,   61.7, \
     66.29,  70.98,  75.75,  80.62,  85.56,  90.6,   95.71,  100.9,  106.17, 111.52, \
     116.94, 122.44, 128.0,  133.63, 139.34, 145.11, 150.95, 156.85, 162.82, 168.85, \
     174.94, 181.09, 187.3,  193.58, 199.91, 206.3,  212.75, 219.25, 225.81, 232.42, \
     239.09, 245.81, 252.58, 259.41, 266.29, 273.22, 280.2, 287.23,  294.31, 301.43, \
     308.61, 315.84, 323.11, 330.43, 337.79, 345.21, 352.66, 360.17, 367.72, 375.31, \
     382.95, 390.63, 398.35, 406.12, 413.93, 421.78, 429.67, 437.61, 445.59, 453.61, \
     461.66, 469.76, 477.9,  486.08, 494.3,  502.56, 510.86, 519.19, 527.56, 535.98, \
     544.43, 552.91, 561.44, 570.0,  578.6,  587.24, 595.91, 604.62, 613.36, 622.14]

# load config
function mechanization:base/config/load_config

# schedule message
schedule function mechanization:load_message 2s
