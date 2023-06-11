
execute store result score #items mechanization.data run data get block ~ ~ ~ Items
scoreboard players set #slot mechanization.data 1
execute if score #complete mechanization.data matches 0 if score #items mechanization.data matches 1.. run function mechanization:assembly/blocks/mss/system_add_item_2
