
scoreboard players set $temp_0 mechanization.data 0
execute if block ~ ~ ~ #minecraft:deepslate_ore_replaceables run scoreboard players set $temp_0 mechanization.data 1

#normal ores
execute if score $temp_0 mechanization.data matches 0 if score $world.in_0 du_data = $cons.tin_ore mechanization.data run setblock ~ ~ ~ minecraft:stone_slab[waterlogged=true,type=double]
execute if score $temp_0 mechanization.data matches 0 if score $world.in_0 du_data = $cons.titanium_ore mechanization.data run setblock ~ ~ ~ minecraft:smooth_stone_slab[waterlogged=true,type=double]
execute if score $temp_0 mechanization.data matches 0 if score $world.in_0 du_data = $cons.uranium_ore mechanization.data run setblock ~ ~ ~ minecraft:cobblestone_slab[waterlogged=true,type=double]
execute if score $temp_0 mechanization.data matches 0 if score $world.in_0 du_data = $cons.emerald_ore mechanization.data run setblock ~ ~ ~ minecraft:emerald_ore

#deepslate ores
execute if score $temp_0 mechanization.data matches 1 if score $world.in_0 du_data = $cons.tin_ore mechanization.data run setblock ~ ~ ~ minecraft:deepslate_brick_slab[waterlogged=true,type=double]
execute if score $temp_0 mechanization.data matches 1 if score $world.in_0 du_data = $cons.titanium_ore mechanization.data run setblock ~ ~ ~ minecraft:polished_deepslate_slab[waterlogged=true,type=double]
execute if score $temp_0 mechanization.data matches 1 if score $world.in_0 du_data = $cons.uranium_ore mechanization.data run setblock ~ ~ ~ minecraft:cobbled_deepslate_slab[waterlogged=true,type=double]
execute if score $temp_0 mechanization.data matches 1 if score $world.in_0 du_data = $cons.emerald_ore mechanization.data run setblock ~ ~ ~ minecraft:deepslate_emerald_ore
