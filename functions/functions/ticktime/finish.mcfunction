execute @p ~ ~ ~ worldborder get
scoreboard players set time1 realTime 60000000
scoreboard players operation time1 realTime -= time realTime
scoreboard players operation average realTime += time1 realTime

scoreboard players add @a realTime 1
execute @p[score_realTime_min=19] ~ ~ ~ function ticktime:average