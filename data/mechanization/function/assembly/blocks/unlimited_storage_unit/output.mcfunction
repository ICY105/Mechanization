
execute unless items block ~ ~ ~ container.2 * run scoreboard players remove @s mechanization.data 1
execute unless items block ~ ~ ~ container.2 * run data modify storage mechanization:temp obj set from entity @s item.components."minecraft:custom_data".item
execute unless items block ~ ~ ~ container.2 * run data modify storage mechanization:temp obj.Slot set value 2b
execute unless items block ~ ~ ~ container.2 * run data modify storage mechanization:temp obj.count set value 1
execute unless items block ~ ~ ~ container.2 * run data modify block ~ ~ ~ Items append from storage mechanization:temp obj

execute store result score #max_stack_size mechanization.data run function mechanization:assembly/blocks/unlimited_storage_unit/get_max_stack_size
execute if score #max_stack_size mechanization.data matches ..1 run return 0

execute store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].count
scoreboard players operation #new_count mechanization.data = #max_stack_size mechanization.data
scoreboard players operation #new_count mechanization.data -= #count mechanization.data

execute if score #new_count mechanization.data matches ..0 run return 0
execute if score #new_count mechanization.data > @s mechanization.data run scoreboard players operation #new_count mechanization.data = @s mechanization.data

scoreboard players operation @s mechanization.data -= #new_count mechanization.data
scoreboard players operation #new_count mechanization.data += #count mechanization.data
execute store result block ~ ~ ~ Items[{Slot:2b}].count byte 1 run scoreboard players get #new_count mechanization.data
