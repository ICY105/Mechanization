
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
item modify block -30000000 0 3201 container.0 {"function":"minecraft:set_custom_model_data","value":6422201}

data modify block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.has_spawner set value 1b
data modify block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.spawner_data set from block ~ ~ ~

data modify storage mechanization:temp var set from block ~ ~ ~ SpawnData.entity.id
data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"Entity: ","color":"gray","italic":false},{"nbt":"var","storage":"mechanization:temp","color":"gray","italic":false}]'
data modify block -30000000 0 3201 Items[0].components."minecraft:lore" prepend from block -30000000 0 3202 front_text.messages[0]

item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0
scoreboard players set #loop mechanization.data -1
setblock ~ ~ ~ minecraft:air
