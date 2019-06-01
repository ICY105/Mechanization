gamerule commandBlockOutput false
gamerule maxCommandChainLength 1000000

scoreboard objectives add mech_timer dummy
scoreboard objectives add mech_power dummy
scoreboard objectives add mech_gridid trigger
scoreboard objectives add mech_data dummy
scoreboard objectives add mech_usedid dummy
scoreboard objectives add mech_tele trigger

scoreboard objectives add mech_crafter minecraft.crafted:minecraft.damaged_anvil
scoreboard objectives add mech_use_coas minecraft.used:minecraft.carrot_on_a_stick

#Install check
scoreboard players set mech_ver du_data -2010003

scoreboard players set install mech_data 0
execute unless score du_ver du_data matches ..-2000007 run scoreboard players set install mech_data 1
schedule function mechanization:install 1s
