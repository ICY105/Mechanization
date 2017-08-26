gamerule maxCommandChainLength 100000
gamerule commandBlockOutput false
scoreboard objectives add checks dummy
scoreboard objectives add powerStorage dummy
scoreboard objectives add powerBuffer dummy
scoreboard objectives add powerSource dummy
scoreboard objectives add timer dummy
scoreboard objectives add timer250 dummy
scoreboard objectives add rotX dummy
scoreboard objectives add cord dummy
scoreboard objectives add quantumFrequency dummy
scoreboard objectives add placeHead stat.useItem.minecraft.skull
scoreboard objectives add pickupSkull stat.pickup.minecraft.skull
scoreboard objectives add sneak stat.sneakTime
scoreboard objectives add startFire stat.useItem.minecraft.flint_and_steel
scoreboard objectives add dayTime dummy
scoreboard objectives add xPos dummy
scoreboard objectives add yPos dummy
scoreboard objectives add zPos dummy
scoreboard objectives add reactorHeat dummy
scoreboard objectives add reactorFuel dummy
scoreboard objectives add reloadTime dummy
scoreboard objectives add weaponType dummy
scoreboard objectives add bulletType dummy
scoreboard objectives add item dummy
scoreboard objectives add playerID dummy
scoreboard objectives add stick stat.useItem.minecraft.carrot_on_a_stick
scoreboard objectives add throwPearl stat.useItem.minecraft.ender_pearl

#world spawn set
tp @p 0 100 0
setworldspawn 0 100 0

kill @e[tag=mech_timer]
summon area_effect_cloud 0 1 0 {Tags:["mech_timer"],Invulnerable:1,Duration:2000000000}

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

#ID stuff
scoreboard players add incrID playerID 1

#quantum stuff
scoreboard players set loaderID quantumFrequency 0
scoreboard players set temp quantumFrequency 0
scoreboard players set @e[tag=mech_timer,c=1] dayTime 0
execute @e[tag=mech_timer,c=1] ~ ~ ~ stats entity @s set QueryResult @s dayTime

#Game Loop
gamerule gameLoopFunction mechanization:main

tellraw @a ["",{"text":"Thank you for installing Mechanization: by ImCoolYeah105.","color":"dark_red"},{"text":"\nThe function script has been successfully installed.","color":"blue"}]