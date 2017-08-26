scoreboard players set @a realTime 0

#prints average
scoreboard players operation average realTime /= constant20 realTime
scoreboard players operation average DisplayTime = average realTime
scoreboard players set average realTime 0