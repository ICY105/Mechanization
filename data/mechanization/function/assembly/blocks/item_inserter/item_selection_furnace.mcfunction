
scoreboard players set #out mechanization.data 0
function mechanization:assembly/blocks/item_inserter/is_item_furnace_fuel

execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set #slot mechanization.data 0
execute if score #out mechanization.data matches 1 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set #slot mechanization.data 1
