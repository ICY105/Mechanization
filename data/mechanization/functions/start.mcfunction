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

#Installation message
tellraw @a[tag=!mech_installation] [{"translate":"mech.text.load_1","color":"dark_red"}]
tag @a add mech_installation

say [Loaded Mechanization v2.1 Prerelease 1 by ImCoolYeah105]
