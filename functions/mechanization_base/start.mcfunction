scoreboard objectives add powerStorage dummy
scoreboard objectives add powerBuffer dummy
scoreboard objectives add powerSource dummy
scoreboard objectives add timer dummy
scoreboard objectives add timer250 dummy
scoreboard objectives add checks dummy
scoreboard objectives add rotX dummy
scoreboard objectives add cord dummy
scoreboard objectives add quantumFrequency dummy
scoreboard objectives add placeHead stat.useItem.minecraft.skull
scoreboard objectives add pickupSkull stat.pickup.minecraft.skull
scoreboard objectives add sneak stat.sneakTime
scoreboard objectives add startFire stat.useItem.minecraft.flint_and_steel
gamerule maxCommandChainLength 100000
gamerule commandBlockOutput false

#world spawn set
tp @p 0 100 0
setworldspawn 0 100 0

kill @e[tag=mech_timer]
summon area_effect_cloud 0 1 0 {Tags:["mech_timer"],Invulnerable:1,Duration:2000000000}

tellraw @a ["",{"text":"Thank you for installing Mechanization: Core by ImCoolYeah105.","color":"dark_red"},{"text":"\nCommand has been activated.","color":"blue"}]

#world generation
scoreboard players set @p checks 0
scoreboard players add worldgen checks 0
execute @p ~ ~ ~ stats entity @s set SuccessCount @s checks
execute @p ~ ~ ~ scoreboard players test worldgen checks 0 0
execute @p ~ ~ ~ execute @s[score_checks_min=1] ~ ~ ~ summon area_effect_cloud 0 0 0 {Tags:["mechanization_gen"],Duration:2000000000}

scoreboard players set worldgen checks 1

#quantum channels
scoreboard players set quantum_0 powerStorage 0
scoreboard players set quantum_1 powerStorage 0
scoreboard players set quantum_2 powerStorage 0
scoreboard players set quantum_3 powerStorage 0
scoreboard players set quantum_4 powerStorage 0
scoreboard players set quantum_5 powerStorage 0
scoreboard players set quantum_6 powerStorage 0
scoreboard players set quantum_7 powerStorage 0
scoreboard players set quantum_8 powerStorage 0
scoreboard players set quantum_9 powerStorage 0