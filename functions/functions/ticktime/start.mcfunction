scoreboard objectives add realTime dummy
scoreboard objectives add DisplayTime dummy

execute @p ~ ~ ~ stats entity @s set QueryResult time realTime
scoreboard players set constant20 realTime 20
scoreboard players set average realTime 0
scoreboard players set average DisplayTime 0
scoreboard players set time realTime 0