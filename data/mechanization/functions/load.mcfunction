
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
scoreboard players set #cons.60 mechanization.data 60
scoreboard players set #cons.64 mechanization.data 64
scoreboard players set #cons.80 mechanization.data 80
scoreboard players set #cons.85 mechanization.data 85
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
scoreboard players set #mech.ver.minor load.status 2
scoreboard players set #mech.ver.fix load.status 3

# configure storage
data merge storage mechanization:temp {obj:{}, list:[], var:""}
data merge storage mechanization:networks {mss_temp:{drive:[],item:{}}}
execute unless data storage mechanization:networks teleporter run data merge storage mechanization:networks {teleporter:[]}

# load config
function mechanization:base/config/load_config

# schedule message
schedule function mechanization:load_message 2s
