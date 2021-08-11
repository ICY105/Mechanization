
#init scores
scoreboard objectives add mech_timer dummy
scoreboard objectives add mech_power dummy
scoreboard objectives add mech_gridid trigger
scoreboard objectives add mech_data dummy
scoreboard objectives add mech_fluid dummy
scoreboard objectives add mech_shield dummy
scoreboard objectives add mech_usedid dummy
scoreboard objectives add mech_tele trigger

scoreboard objectives add mech_firerate trigger
scoreboard objectives add mech_weaponheat trigger
scoreboard objectives add mech_itemslot trigger

scoreboard objectives add mech_use_coas minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add mech_use_pick minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add mech_use_axe minecraft.used:minecraft.netherite_axe
scoreboard objectives add mech_use_shovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add mech_use_hoe minecraft.used:minecraft.netherite_hoe

#mark version
scoreboard players set $mech.ver.major load.status 3
scoreboard players set $mech.ver.minor load.status 0
scoreboard players set $mech.ver.fix load.status 0

#configure storage
execute unless data storage mechanization:networks quantum run data merge storage mechanization:networks {quantum:[]}
execute unless data storage mechanization:networks teleporter run data merge storage mechanization:networks {teleporter:[]}
data merge storage mechanization:networks {mss_temp:{drive:[],item:{}}}

#load config
function mechanization:base/config/load_config

#schedule message
schedule function mechanization:tick 1t
schedule function mechanization:load_message 2s
