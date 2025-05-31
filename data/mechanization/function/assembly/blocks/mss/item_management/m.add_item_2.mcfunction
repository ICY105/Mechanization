
# convert drive data
$data modify storage mechanization:temp obj.drive_contents set from storage mechanization:temp obj.block_contents[{Slot: $(slot)b}].components."minecraft:bundle_contents"
function mechanization:assembly/blocks/mss/drive_management/convert_drive_data

# convert item data
data remove storage mechanization:temp obj.Slot

execute unless data storage mechanization:temp obj.item.components."minecraft:lore" run data modify storage mechanization:temp obj.item.components."minecraft:lore" set value []
data modify storage mechanization:temp obj.item.components."minecraft:custom_data" merge value {mss: {count: 0}}

execute store result score #count mechanization.data run data get storage mechanization:temp obj.item.count
execute store result storage mechanization:temp obj.item.components."minecraft:custom_data".mss.count int 1 run scoreboard players get #count mechanization.data
data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"lore.mechanization.mss_item_count","color":"gray","italic":false,"with":[{"score":{"name":"#count","objective":"mechanization.data"}}]}]'
data modify storage mechanization:temp obj.item.components."minecraft:lore" prepend from block -30000000 0 3202 front_text.messages[0]

# insert into drive
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[0].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[0] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[1].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[1] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[2].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[2] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[3].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[3] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[4].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[4] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[5].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[5] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[6].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[6] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[7].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[7] set from storage mechanization:temp obj.item

execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[8].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[8] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[9].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[9] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[10].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[10] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[11].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[11] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[12].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[12] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[13].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[13] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[14].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[14] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[15].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[15] set from storage mechanization:temp obj.item

execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[16].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[16] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[17].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[17] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[18].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[18] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[19].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[19] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[20].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[20] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[21].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[21] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[22].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[22] set from storage mechanization:temp obj.item
execute if score #complete mechanization.data matches 0 unless data storage mechanization:temp obj.drive_contents[23].components store success score #complete mechanization.data run data modify storage mechanization:temp obj.drive_contents[23] set from storage mechanization:temp obj.item

# copy data back
$data modify block ~ ~ ~ Items[{Slot: $(slot)b}].components."minecraft:bundle_contents" set from storage mechanization:temp obj.drive_contents
