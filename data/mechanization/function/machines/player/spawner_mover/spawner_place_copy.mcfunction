
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
data modify storage mechanization:temp obj set from block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.spawner_data

setblock ~ ~ ~ minecraft:spawner
data modify block ~ ~ ~ MaxNearbyEntities set from storage mechanization:temp obj.MaxNearbyEntities
data modify block ~ ~ ~ RequiredPlayerRange set from storage mechanization:temp obj.RequiredPlayerRange
data modify block ~ ~ ~ SpawnCount set from storage mechanization:temp obj.SpawnCount
data modify block ~ ~ ~ MaxSpawnDelay set from storage mechanization:temp obj.MaxSpawnDelay
data modify block ~ ~ ~ MinSpawnDelay set from storage mechanization:temp obj.MinSpawnDelay
data modify block ~ ~ ~ SpawnPotentials set from storage mechanization:temp obj.SpawnPotentials
data modify block ~ ~ ~ SpawnData set from storage mechanization:temp obj.SpawnData

item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
scoreboard players set #loop mechanization.data -1
