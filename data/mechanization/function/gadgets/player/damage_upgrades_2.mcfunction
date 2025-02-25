
$execute store result score #max_durability mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.max_durability
execute if score #max_durability mechanization.data matches 0 run return 0

$execute store result score #durability mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.durability
$execute unless data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.durability run scoreboard players operation #durability mechanization.data = #max_durability mechanization.data
$execute unless data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.durability run data modify storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.durability set value 0

execute if score #reinforced mechanization.data matches 0 run scoreboard players operation #durability mechanization.data -= #damage mechanization.data
$execute if score #reinforced mechanization.data matches 1 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade{effect:"reinforced"} run scoreboard players operation #durability mechanization.data -= #reinforced_damage mechanization.data

$execute store result storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.durability int 1 run scoreboard players get #durability mechanization.data
data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"#durability","objective":"mechanization.data"}},{"score":{"name":"#max_durability","objective":"mechanization.data"}}]}'
$data modify storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:lore"[1] set from block -30000000 0 3202 front_text.messages[0]
execute if score #durability mechanization.data matches ..0 run scoreboard players set #broken mechanization.data 1
$execute if score #durability mechanization.data matches ..0 run data remove storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)]
