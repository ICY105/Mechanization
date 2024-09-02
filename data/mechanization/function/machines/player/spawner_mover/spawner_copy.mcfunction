
data modify storage mechanization:temp object set from entity @s SelectedItem

data modify storage mechanization:temp object.tag.CustomModelData set value 6422201
data modify storage mechanization:temp object.tag.mechanization.has_spawner set value 1b
data modify storage mechanization:temp object.tag.mechanization.spawner_data set from block ~ ~ ~

data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"Entity: ","color":"gray","italic":false},{"nbt":"object.tag.mechanization.spawner_data.SpawnData.entity.id","storage":"mechanization:temp","color":"gray","italic":false}]'
data modify storage mechanization:temp object.tag.display.Lore set value []
data modify storage mechanization:temp object.tag.display.Lore prepend from block -30000000 0 3202 front_text.messages[0]

item modify entity @s weapon.mainhand mechanization:copy_nbt

scoreboard players set #loop mechanization.data -1
setblock ~ ~ ~ minecraft:air
