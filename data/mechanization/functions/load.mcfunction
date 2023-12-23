
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

# mark version
scoreboard players set #mech.ver.major load.status 4
scoreboard players set #mech.ver.minor load.status 2
scoreboard players set #mech.ver.fix load.status 3

# configure storage
data merge storage mechanization:temp {obj:{}, list:[], var:""}
data merge storage mechanization:networks {mss_temp:{drive:[],item:{}}}

data merge storage mechanization:registry {math:{}, recipes:{}}

# load math
function mechanization:base/math/init

# load config
function mechanization:base/config/load_config

# schedule message
schedule function mechanization:load_message 2s
