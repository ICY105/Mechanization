
$execute unless data storage mechanization:temp list[$(index)] run return 0

# add stored item & durability lore
scoreboard players set #success mechanization.data 0
scoreboard players set #durability mechanization.data 0
scoreboard players set #max_durability mechanization.data 0

$execute if data storage mechanization:temp list[$(index)].components."minecraft:custom_data".mechanization.upgrade.max_durability store result score #durability mechanization.data run data get storage mechanization:temp list[$(index)].components."minecraft:custom_data".mechanization.upgrade.durability
$execute if data storage mechanization:temp list[$(index)].components."minecraft:custom_data".mechanization.upgrade.max_durability store result score #max_durability mechanization.data run data get storage mechanization:temp list[$(index)].components."minecraft:custom_data".mechanization.upgrade.max_durability
execute if score #max_durability mechanization.data matches 1.. if score #durability mechanization.data matches 0 run scoreboard players operation #durability mechanization.data = #max_durability mechanization.data
$execute if score #max_durability mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"%s/%s | %s","color":"gray","italic":false,"with":[{"score":{"name":"#durability","objective":"mechanization.data"}},{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"nbt":"list[$(index)].components.minecraft:item_name","storage":"mechanization:temp","interpret":true,"italic":false,"color":"gray"}]}]'
$execute unless score #max_durability mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"nbt":"list[$(index)].components.minecraft:item_name","storage":"mechanization:temp","interpret":true,"italic":false,"color":"gray"}]'
$execute if data storage mechanization:temp list[$(index)] run data modify storage mechanization:temp obj.components."minecraft:lore" prepend from block -30000000 0 3202 front_text.messages[0]
return 1
