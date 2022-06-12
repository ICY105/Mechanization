
#init scores
scoreboard objectives add mechanization.data dummy
#scoreboard objectives add mechanization.timer dummy
scoreboard objectives add mechanization.fluid dummy
scoreboard objectives add mechanization.usedid dummy

scoreboard objectives add mechanization.tele trigger
scoreboard objectives add mechanization.manual trigger

scoreboard objectives add mechanization.itemslot dummy
scoreboard objectives add mechanization.shield dummy
scoreboard objectives add mechanization.firerate dummy
scoreboard objectives add mechanization.weaponheat dummy

scoreboard objectives add mechanization.use_pick minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add mechanization.use_axe minecraft.used:minecraft.netherite_axe
scoreboard objectives add mechanization.use_shovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add mechanization.use_hoe minecraft.used:minecraft.netherite_hoe

#init constants
scoreboard players set #cons.5 mechanization.data 5

#mark version
scoreboard players set #mech.ver.major load.status 4
scoreboard players set #mech.ver.minor load.status 0
scoreboard players set #mech.ver.fix load.status 0

#configure storage
execute unless data storage mechanization:networks quantum run data merge storage mechanization:networks {quantum:[]}
execute unless data storage mechanization:networks teleporter run data merge storage mechanization:networks {teleporter:[]}
data merge storage mechanization:networks {mss_temp:{drive:[],item:{}}}

#load config
function mechanization:base/config/load_config

#schedule message
schedule function mechanization:tick 1t
schedule function mechanization:load_message 2s
