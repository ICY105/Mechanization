
scoreboard players set #deepslate mechanization.data 0
execute if block ~ ~ ~ #minecraft:deepslate_ore_replaceables run scoreboard players set #deepslate mechanization.data 1

#normal ores
execute if score #deepslate mechanization.data matches 0 if score #gen.id chunk_scan.ores.data = #cons.tin_ore mechanization.data run setblock ~ ~ ~ minecraft:stone_slab[waterlogged=true,type=double]
execute if score #deepslate mechanization.data matches 0 if score #gen.id chunk_scan.ores.data = #cons.titanium_ore mechanization.data run setblock ~ ~ ~ minecraft:smooth_stone_slab[waterlogged=true,type=double]
execute if score #deepslate mechanization.data matches 0 if score #gen.id chunk_scan.ores.data = #cons.uranium_ore mechanization.data run setblock ~ ~ ~ minecraft:cobblestone_slab[waterlogged=true,type=double]
execute if score #deepslate mechanization.data matches 0 if score #gen.id chunk_scan.ores.data = #cons.emerald_ore mechanization.data run setblock ~ ~ ~ minecraft:emerald_ore

#deepslate ores
execute if score #deepslate mechanization.data matches 1 if score #gen.id chunk_scan.ores.data = #cons.tin_ore mechanization.data run setblock ~ ~ ~ minecraft:deepslate_brick_slab[waterlogged=true,type=double]
execute if score #deepslate mechanization.data matches 1 if score #gen.id chunk_scan.ores.data = #cons.titanium_ore mechanization.data run setblock ~ ~ ~ minecraft:polished_deepslate_slab[waterlogged=true,type=double]
execute if score #deepslate mechanization.data matches 1 if score #gen.id chunk_scan.ores.data = #cons.uranium_ore mechanization.data run setblock ~ ~ ~ minecraft:cobbled_deepslate_slab[waterlogged=true,type=double]
execute if score #deepslate mechanization.data matches 1 if score #gen.id chunk_scan.ores.data = #cons.emerald_ore mechanization.data run setblock ~ ~ ~ minecraft:deepslate_emerald_ore
