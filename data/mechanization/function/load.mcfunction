
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
scoreboard players set #mech.ver.major load.status 5
scoreboard players set #mech.ver.minor load.status 0
scoreboard players set #mech.ver.fix load.status 0

# configure storage
data merge storage mechanization:temp {obj:{}, list:[], var:"", io:{}, mss_temp:{drive:[],item:{}}}
data modify storage mechanization:registry recipes set value {}
execute unless data storage mechanization:registry tick_queue run data modify storage mechanization:registry tick_queue set value []

function #mechanization:registry_init
function #mechanization:registry_populate
function #mechanization:registry_override

# load math
function mechanization:base/math/init
function mechanization:nuclear/math/nuclear_data

# load config
function mechanization:base/config/load_config

# schedule message
schedule function mechanization:load_message 2s
