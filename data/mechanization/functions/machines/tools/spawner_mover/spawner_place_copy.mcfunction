
scoreboard players set in_0 mech_data -1
setblock ~ ~ ~ spawner

data modify block ~ ~ ~ MaxNearbyEntities set from entity @s SelectedItem.tag.spawner_data.MaxNearbyEntities
data modify block ~ ~ ~ RequiredPlayerRange set from entity @s SelectedItem.tag.spawner_data.RequiredPlayerRange
data modify block ~ ~ ~ SpawnCount set from entity @s SelectedItem.tag.spawner_data.SpawnCount
data modify block ~ ~ ~ MaxSpawnDelay set from entity @s SelectedItem.tag.spawner_data.MaxSpawnDelay
data modify block ~ ~ ~ MinSpawnDelay set from entity @s SelectedItem.tag.spawner_data.MinSpawnDelay
data modify block ~ ~ ~ SpawnPotentials set from entity @s SelectedItem.tag.spawner_data.SpawnPotentials
data modify block ~ ~ ~ SpawnData set from entity @s SelectedItem.tag.spawner_data.SpawnData

item replace entity @s[gamemode=!creative] weapon.mainhand with air