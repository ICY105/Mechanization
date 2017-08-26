#charge pad
execute @e[tag=chargepad,score_powerBuffer_min=1000] ~ ~ ~ scoreboard players add @a[r=1] powerBuffer 0
execute @e[tag=chargepad,score_powerBuffer_min=1000] ~ ~ ~ scoreboard players add @a[r=1,score_powerBuffer=15000] powerBuffer 1000
execute @a[score_powerBuffer=15000] ~ ~ ~ scoreboard players remove @e[tag=chargepad,r=1,score_powerBuffer_min=1000] powerBuffer 1000
execute @a[score_powerBuffer=15000] ~ ~ ~ execute @e[tag=chargepad,r=1,score_powerBuffer_min=1000] ~ ~ ~ particle endRod ~ ~1.5 ~ 0 .75 0 0 20
execute @a[score_powerBuffer=15000] ~ ~ ~ execute @e[tag=chargepad,r=1,score_powerBuffer_min=1000] ~ ~ ~ playsound mech.charge_pad_active player @a ~ ~ ~ 1.0 1

#recipes
execute @e[tag=crafttable] ~ ~ ~ testforblock ~ ~-1 ~ minecraft:dispenser 1 {Items:[{}]}
execute @e[tag=crafttable,c=1,score_checks_min=1] ~ ~ ~ function mechanization_gadgets:recipes

#player ids
scoreboard players operation @p[tag=!hasID] playerID = incrID playerID
execute @p[tag=!hasID] ~ ~ ~ scoreboard players add incrID playerID 1
scoreboard players set @p[tag=!hasID] checks 0
stats @p[tag=!hasID] set successCount @p[tag=!hasID] checks
scoreboard players tag @p[tag=!hasID] add hasID
