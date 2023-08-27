
scoreboard players set #allowed mechanization.data -1
scoreboard players set #insert mechanization.data 0
data modify storage mechanization:temp obj set from storage mechanization:temp list[0]
execute align xyz as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] run function #mechanization:custom_item_insertion
execute if score #allowed mechanization.data matches -1 run function mechanization:assembly/blocks/item_inserter/default_item_selection

execute if score #slot mechanization.data matches -1 run scoreboard players set #allowed mechanization.data 0
execute if score #allowed mechanization.data matches 1 if score #slot mechanization.data matches 0.. if entity @s[tag=mechanization.filtered] run function mechanization:assembly/blocks/item_inserter/check_filter
execute if score #allowed mechanization.data matches 1 if score #slot mechanization.data matches 0.. store result storage mechanization:temp list[0].Slot byte 1 run scoreboard players get #slot mechanization.data
execute if score #allowed mechanization.data matches 1 if score #insert mechanization.data matches 0 if score #slot mechanization.data matches 0.. run data modify block ~ ~ ~ Items append from storage mechanization:temp list[0]
execute if score #allowed mechanization.data matches 1 if score #insert mechanization.data matches 1 if score #slot mechanization.data matches 0.. run data remove block -30000000 0 3201 Items
execute if score #allowed mechanization.data matches 1 if score #insert mechanization.data matches 1 if score #slot mechanization.data matches 0.. run data modify block -30000000 0 3201 Items append from storage mechanization:temp list[0]
execute if score #allowed mechanization.data matches 1 if score #insert mechanization.data matches 1 if score #slot mechanization.data matches 0.. run loot insert ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:1b}
execute if score #allowed mechanization.data matches 1 run scoreboard players set #success mechanization.data 1
