
#init scores
scoreboard objectives add mechanization.data dummy
scoreboard objectives add mechanization.fluid dummy
scoreboard objectives add mechanization.item_id dummy

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
scoreboard players set #cons.2 mechanization.data 2
scoreboard players set #cons.5 mechanization.data 5
scoreboard players set #cons.7 mechanization.data 7
scoreboard players set #cons.max_int mechanization.data 2147483647
scoreboard players set #cons.min_int mechanization.data -2147483648

#mark version
scoreboard players set #mech.ver.major load.status 4
scoreboard players set #mech.ver.minor load.status 0
scoreboard players set #mech.ver.fix load.status 0

#configure storage
data merge storage mechanization:temp {obj:{}, list:[], var:""}
data merge storage mechanization:networks {mss_temp:{drive:[],item:{}}}
execute unless data storage mechanization:networks quantum run data merge storage mechanization:networks {quantum:[]}
execute unless data storage mechanization:networks teleporter run data merge storage mechanization:networks {teleporter:[]}

#load config
function mechanization:base/config/load_config

#schedule message
schedule function mechanization:tick 1t
schedule function mechanization:load_message 2s
