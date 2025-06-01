
scoreboard players set #allowed mechanization.data -1
scoreboard players set #insert mechanization.data 0
execute align xyz as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] run function #mechanization:custom_item_insertion
execute if score #allowed mechanization.data matches -1 run function mechanization:assembly/blocks/item_injector/default_item_selection

execute if score #slot mechanization.data matches ..-1 run scoreboard players set #allowed mechanization.data 0
execute if score #slot mechanization.data matches 0.. if entity @s[tag=mechanization.filtered] run function mechanization:assembly/blocks/item_injector/check_filter
execute if score #allowed mechanization.data matches 0 run return 0

execute if score #insert mechanization.data matches 0 run data modify storage mechanization:temp obj set from block -30000000 0 3201 Items[0]
execute if score #insert mechanization.data matches 0 store result storage mechanization:temp obj.Slot byte 1 run scoreboard players get #slot mechanization.data
execute if score #insert mechanization.data matches 0 run data modify block ~ ~ ~ Items append from storage mechanization:temp obj

execute if score #insert mechanization.data matches 1 run loot insert ~ ~ ~ mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

scoreboard players set #success mechanization.data 1
