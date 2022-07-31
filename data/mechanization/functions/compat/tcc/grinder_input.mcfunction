
# amethyst dust
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 8.. if data block ~ ~ ~ Items[{Slot:0b, id:"minecraft:amethyst_shard"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
