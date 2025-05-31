

$data modify storage mechanization:temp var set from storage mechanization:temp drive_contents[$(index)].id
execute if data storage mechanization:temp {var: "minecraft:barrier"} run return 0
$execute store result score #count.0 mechanization.data run data get storage mechanization:temp obj.block_contents[{Slot:$(slot)b}].count
$execute store result score #count.1 mechanization.data run data get storage mechanization:temp obj.drive_contents[$(index)].count
execute if score #count.0 mechanization.data >= #count.1 mechanization.data run return 0


$execute store result score #count.2 mechanization.data run data get storage mechanization:temp obj.drive_contents[$(index)].components."minecraft:custom_data".mss.count
scoreboard players operation #count.2 mechanization.data += #count.0 mechanization.data
scoreboard players operation #count.2 mechanization.data -= #count.1 mechanization.data
$execute store result storage mechanization:temp obj.drive_contents[$(index)].components."minecraft:custom_data".mss.count int 1 run scoreboard players get #count.2 mechanization.data

$execute if score #count.2 mechanization.data matches 1.. if score #count.2 mechanization.data < #count.1 mechanization.data store result storage mechanization:temp obj.drive_contents[$(index)].count int 1 run scoreboard players get #count.2 mechanization.data
execute if score #count.2 mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"lore.mechanization.mss_item_count","color":"gray","italic":false,"with":[{"score":{"name":"#count.2","objective":"mechanization.data"}}]}]'
$execute if score #count.2 mechanization.data matches 1.. run data modify storage mechanization:temp obj.drive_contents[$(index)].components."minecraft:lore"[0] set from block -30000000 0 3202 front_text.messages[0]

$execute if score #count.2 mechanization.data matches ..0 run data modify storage mechanization:temp obj.drive_contents[$(index)] set value {id: "minecraft:barrier", count: 1}

data modify storage mechanization:test obj set from storage mechanization:temp obj

function mechanization:assembly/blocks/mss/clear_item_data/dropped_item_data
