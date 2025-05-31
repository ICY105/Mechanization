
scoreboard players set #complete mechanization.data 1

# increase mss count
execute store result score #count.0 mechanization.data run data get storage mechanization:temp obj.item.count
$execute store result score #count.1 mechanization.data run data get storage mechanization:temp obj.drive_contents[$(slot)].mss.count
scoreboard players operation #count.0 mechanization.data += #count.1 mechanization.data
$execute store result storage mechanization:temp obj.drive_contents[$(slot)].mss.count int 1 run scoreboard players get #count.0 mechanization.data 

# modify lore
data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"lore.mechanization.mss_item_count","color":"gray","italic":false,"with":[{"score":{"name":"#count.0","objective":"mechanization.data"}}]}]'
$data modify storage mechanization:temp obj.drive_contents[$(slot)].components."minecraft:lore"[0] set from block -30000000 0 3202 front_text.messages[0]

# modify slot count
execute if score #count.1 mechanization.data matches 100.. run return 0

setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
data modify block -30000000 0 3201 Items append from storage mechanization:temp obj.item
execute store result score #max_stack_size mechanization.data run function mechanization:assembly/blocks/mss/item_management/get_max_stack_size

execute if score #max_stack_size mechanization.data > #count.0 mechanization.data run scoreboard players operation #max_stack_size mechanization.data = #count.0 mechanization.data
$execute store result storage mechanization:temp obj.drive_contents[$(slot)].count int 1 run scoreboard players get #max_stack_size mechanization.data 
