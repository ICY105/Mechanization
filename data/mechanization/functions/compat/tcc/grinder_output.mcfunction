
# amethyst dust
execute if score #valid mechanization.data matches 1 if score #output_count mechanization.data matches 1.. if data block ~ ~ ~ Items[{Slot:0b, id:"minecraft:amethyst_shard"}] unless data block ~ ~ ~ Items[{Slot:2b}].tag.tcc{id:"amethyst_dust"} run scoreboard players set #valid mechanization.data 0
execute if score #valid mechanization.data matches 1 if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:0b, id:"minecraft:amethyst_shard"}] run loot replace block -30000000 0 3201 container.0 loot tcc:items/amethyst_dust
execute if score #valid mechanization.data matches 1 if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:0b, id:"minecraft:amethyst_shard"}] run scoreboard players remove #input_count mechanization.data 7
