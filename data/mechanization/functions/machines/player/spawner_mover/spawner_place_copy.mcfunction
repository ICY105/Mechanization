
scoreboard players set #loop mechanization.data -1
setblock ~ ~ ~ minecraft:spawner

data modify block ~ ~ ~ MaxNearbyEntities set from entity @s SelectedItem.tag.mechanization.spawner_data.MaxNearbyEntities
data modify block ~ ~ ~ RequiredPlayerRange set from entity @s SelectedItem.tag.mechanization.spawner_data.RequiredPlayerRange
data modify block ~ ~ ~ SpawnCount set from entity @s SelectedItem.tag.mechanization.spawner_data.SpawnCount
data modify block ~ ~ ~ MaxSpawnDelay set from entity @s SelectedItem.tag.mechanization.spawner_data.MaxSpawnDelay
data modify block ~ ~ ~ MinSpawnDelay set from entity @s SelectedItem.tag.mechanization.spawner_data.MinSpawnDelay
data modify block ~ ~ ~ SpawnPotentials set from entity @s SelectedItem.tag.mechanization.spawner_data.SpawnPotentials
data modify block ~ ~ ~ SpawnData set from entity @s SelectedItem.tag.mechanization.spawner_data.SpawnData

item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
