
#normal mode
execute if score $world.in_0 du_data = $cons.tin_ore mech_data run setblock ~ ~ ~ minecraft:stone_slab[waterlogged=true,type=double]
execute if score $world.in_0 du_data = $cons.titanium_ore mech_data run setblock ~ ~ ~ minecraft:smooth_stone_slab[waterlogged=true,type=double]
execute if score $world.in_0 du_data = $cons.uranium_ore mech_data run setblock ~ ~ ~ minecraft:cobblestone_slab[waterlogged=true,type=double]

#normal ores
execute if score $world.in_0 du_data = $cons.emerald_ore mech_data run setblock ~ ~ ~ minecraft:emerald_ore
