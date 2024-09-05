
#### Tin Ore

# Y elevation [-2048,2048]
scoreboard players set #registry.min_y chunk_scan.ores.data -16
scoreboard players set #registry.max_y chunk_scan.ores.data 32
# number of veins [1,32]
scoreboard players operation #registry.min_veins chunk_scan.ores.data = #base.cf.tin_rarity mechanization.data
scoreboard players operation #registry.max_veins chunk_scan.ores.data = #base.cf.tin_rarity mechanization.data
# ores per vein [1,16]
scoreboard players set #registry.min_vein_size chunk_scan.ores.data 4
scoreboard players set #registry.max_vein_size chunk_scan.ores.data 6
# ignore placement restrictions
scoreboard players set #registry.ignore_restrictions chunk_scan.ores.data 0

#Call Registry Function
data modify storage chunk_scan.ores:registry input set value {dimension:"minecraft:overworld"}
execute if score #base.cf.tin_rarity mechanization.data matches 1.. run function chunk_scan.ores:v1/api/register_ore
scoreboard players operation #cons.tin_ore mechanization.data = #registry.result_id chunk_scan.ores.data

#### Titanium Ore

# Y elevation [-2048,2048]
scoreboard players set #registry.min_y chunk_scan.ores.data -60
scoreboard players set #registry.max_y chunk_scan.ores.data -28
# number of veins [1,32]
scoreboard players operation #registry.min_veins chunk_scan.ores.data = #base.cf.titanium_rarity mechanization.data
scoreboard players operation #registry.max_veins chunk_scan.ores.data = #base.cf.titanium_rarity mechanization.data
# ores per vein [1,16]
scoreboard players set #registry.min_vein_size chunk_scan.ores.data 1
scoreboard players set #registry.max_vein_size chunk_scan.ores.data 4
# ignore placement restrictions
scoreboard players set #registry.ignore_restrictions chunk_scan.ores.data 0

#Call Registry Function
data modify storage chunk_scan.ores:registry input set value {dimension:"minecraft:overworld"}
execute if score #base.cf.titanium_rarity mechanization.data matches 1.. run function chunk_scan.ores:v1/api/register_ore
scoreboard players operation #cons.titanium_ore mechanization.data = #registry.result_id chunk_scan.ores.data

#### Uranium Ore

# Y elevation [-2048,2048]
scoreboard players set #registry.min_y chunk_scan.ores.data -48
scoreboard players set #registry.max_y chunk_scan.ores.data -16
# number of veins [1,32]
scoreboard players operation #registry.min_veins chunk_scan.ores.data = #base.cf.uranium_rarity mechanization.data
scoreboard players operation #registry.max_veins chunk_scan.ores.data = #base.cf.uranium_rarity mechanization.data
# ores per vein [1,16]
scoreboard players set #registry.min_vein_size chunk_scan.ores.data 2
scoreboard players set #registry.max_vein_size chunk_scan.ores.data 4
# ignore placement restrictions
scoreboard players set #registry.ignore_restrictions chunk_scan.ores.data 0

#Call Registry Function
data modify storage chunk_scan.ores:registry input set value {dimension:"minecraft:overworld"}
execute if score #base.cf.uranium_rarity mechanization.data matches 1.. run function chunk_scan.ores:v1/api/register_ore
scoreboard players operation #cons.uranium_ore mechanization.data = #registry.result_id chunk_scan.ores.data

#### Emerald Ore

# Y elevation [-2048,2048]
scoreboard players set #registry.min_y chunk_scan.ores.data -48
scoreboard players set #registry.max_y chunk_scan.ores.data 0
# number of veins [1,32]
scoreboard players operation #registry.min_veins chunk_scan.ores.data = #base.cf.emerald_rarity mechanization.data
scoreboard players operation #registry.max_veins chunk_scan.ores.data = #base.cf.emerald_rarity mechanization.data
# ores per vein [1,16]
scoreboard players set #registry.min_vein_size chunk_scan.ores.data 1
scoreboard players set #registry.max_vein_size chunk_scan.ores.data 2
# ignore placement restrictions
scoreboard players set #registry.ignore_restrictions chunk_scan.ores.data 0

#Call Registry Function
data modify storage chunk_scan.ores:registry input set value {dimension:"minecraft:overworld"}
execute if score #base.cf.emerald_rarity mechanization.data matches 1.. run function chunk_scan.ores:v1/api/register_ore
scoreboard players operation #cons.emerald_ore mechanization.data = #registry.result_id chunk_scan.ores.data
