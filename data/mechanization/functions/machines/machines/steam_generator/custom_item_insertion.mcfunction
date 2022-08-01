
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

function mechanization:base/utils/is_fluid_container
execute if score #out mechanization.data matches 1 unless data block ~ ~ ~ Items[{Slot:6b}] run scoreboard players set #slot mechanization.data 6
execute if score #out mechanization.data matches 1 unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set #slot mechanization.data 3

execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:stick"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:oak_planks"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:birch_planks"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:spruce_planks"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:jungle_planks"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:acacia_planks"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:dark_oak_planks"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:coal"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:charcoal"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:coal_block"} run scoreboard players set #slot mechanization.data 10
execute if score #out mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage mechanization:temp obj{id:"minecraft:blaze_rod"} run scoreboard players set #slot mechanization.data 10
