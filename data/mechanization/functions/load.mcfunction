
#init scores
scoreboard objectives add mechanization.stored_energy dummy
scoreboard objectives add mechanization.network_id dummy
scoreboard objectives add mechanization.grid_energy dummy
scoreboard objectives add mechanization.storage_capacity dummy

scoreboard objectives add mechanization.timer dummy
scoreboard objectives add mechanization.data dummy
scoreboard objectives add mechanization.stored_fluid dummy

scoreboard objectives add mechanization.player.shield dummy
scoreboard objectives add mechanization.player.used_item_id dummy
scoreboard objectives add mechanization.player.epac_fireate dummy
scoreboard objectives add mechanization.player.epac_heat dummy
scoreboard objectives add mechanization.player.slot dummy
scoreboard objectives add mechanization.player.teleport trigger
scoreboard objectives add mechanization.player.manual trigger

scoreboard objectives add mechanization.player.use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add mechanization.player.use_netherite_pickaxe minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add mechanization.player.use_netherite_axe minecraft.used:minecraft.netherite_axe
scoreboard objectives add mechanization.player.use_netherite_shovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add mechanization.player.use_netherite_hoe minecraft.used:minecraft.netherite_hoe

#mark version
scoreboard players set $mech.ver.major load.status 3
scoreboard players set $mech.ver.minor load.status 1
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
