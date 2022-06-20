scoreboard objectives add smithed.data dummy
scoreboard objectives add smithed.custom_block dummy

scoreboard objectives add smithed.id dummy

scoreboard objectives add smithed.logLevel dummy
scoreboard objectives add smithed.const dummy

scoreboard objectives add smithed.takeDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add smithed.dealDamage minecraft.custom:minecraft.damage_dealt

scoreboard objectives add smithed.coas minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add smithed.xp xp
scoreboard objectives add smithed.prev_xp dummy

forceload remove -30000000 1600
forceload add -30000000 1600

execute unless block -30000000 0 1602 minecraft:yellow_shulker_box run setblock -30000000 0 1602 minecraft:yellow_shulker_box
execute unless block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:oak_wall_sign[facing=south]
fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock

function smithed.custom_block:impl/v0.0.1/technical/def_const

function smithed.custom_block:impl/v0.0.1/technical/tick
