
data remove block -30000000 0 3201 Items[0].components."minecraft:lore"[0]
data remove block -30000000 0 3201 Items[0].components."minecraft:custom_data".mss
execute store result score #entries mechanization.data run data get block -30000000 0 3201 Items[0].components."minecraft:custom_data"
execute if score #entries mechanization.data matches 0 run data remove block -30000000 0 3201 Items[0].components."minecraft:custom_data"
